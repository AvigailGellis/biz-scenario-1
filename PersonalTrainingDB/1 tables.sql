use PersonalTrainingDB
go

drop table if exists Client
go

create table dbo.Client(
    ClientId int not null identity primary key,
    FirstName varchar(25) not null constraint ck_Client_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(25) not null constraint ck_Client_LastName_cannot_be_blank check(LastName <> ''),
    StreetAddress varchar(100) not null constraint ck_Client_StreetAddress_cannot_be_blank check(StreetAddress <> ''),
    City varchar(20) not null constraint ck_Client_City_must_be_either_Lakewood_Monsey_Passaic_Fallsburg check(City in('Lakewood', 'Monsey', 'Passaic', 'Fallsburg')),
    State char(2) not null constraint ck_Client_State_must_be_either_NY_or_NJ check(State in('NY', 'NJ')),
--AS I made zip and phone number a varchar just in case the number starts with a zero. An int will cut off the zero.
    ZipCode varchar(10) not null constraint ck_Client_ZipCode_cannot_be_blank check(ZipCode <> ''),
    PhoneNumber varchar(15) not null constraint ck_Client_PhoneNumber_cannot_be_blank check(PhoneNumber <> ''),
    StartWeight decimal(5,2) not null constraint ck_Client_StartWeight_between_75_and_300_lbs check(StartWeight between 75 and 300),
    CurrentWeight decimal(5,2) not null constraint ck_Client_CurrentWeight_between_75_and_300_lbs check(CurrentWeight between 75 and 300),
    Height decimal(5,2) not null constraint ck_Client_Height_must_be_greater_than_zero check(Height > 0),
    SignupDate date not null constraint ck_Client_SignupDate_must_be_after_march_2007 check(datefromparts(2007, 2, 28) < SignupDate),
    PreviousSessionDate date not null,
    UpcomingSessionDate datetime not null,
    BalanceDue decimal(5,2) not null constraint ck_Client_BalanceDue_must_be_less_than_375 check(BalanceDue < 375),
    PrimaryTrainer as 
        case 
            when City = 'Monsey' and left(StreetAddress, charindex(' ', StreetAddress) - 1) < 100 then 'Bracha'
            when City = 'Fallsburg' then 'Zeasy'
            when City = 'Passaic' then 'Esther'
            when City = 'Lakewood' and datepart(month, SignupDate) in(7,8) then 'Tzipora'
            when City = 'Lakewood' and datepart(month, SignupDate) not in(7,8) then 'Sara'
            when City = 'Monsey' and left(StreetAddress, charindex(' ', StreetAddress) - 1) >= 100 then 'Gitty'
        end persisted,
    ClientsGoal as 
        case City
            when 'Lakewood' then concat('Goal Weight: ', StartWeight - 15)
            when 'Monsey' then 'Body Building/Shaping'
            when  'Passaic' then 'Recreational'
            when 'Fallsburg' then concat('Goal Weight: ', convert(varchar,StartWeight - 5))
        end persisted,
    constraint ck_Client_SignupDate_must_be_before_PreviousSessionDate_which_must_be_before_UpcomingSessionDate check(SignupDate < PreviousSessionDate and PreviousSessionDate < UpcomingSessionDate)
)
go