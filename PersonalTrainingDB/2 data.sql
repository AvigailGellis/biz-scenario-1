use PersonalTrainingDB
go

delete Client
go 

insert Client(FirstName, LastName, StreetAddress, City, State, ZipCode, PhoneNumber, StartWeight, CurrentWeight, Height, SignupDate, PreviousSessionDate, UpcomingSessionDate, BalanceDue)
select 'Esti', 'Anteby', '120  Rock Hill Road', 'Monsey', 'NY', '1092', '8455258521', 120, 116, 61, '2020-08-17', '2022-09-09', '2022-11-01', 125
union select 'Batsheva', 'Cohen', '53 Regina Road', 'Monsey', 'NY', '10952', '8456422919', 137, 136, 66.5, '2017-07-18', '2022-09-10', '2022-11-02', 275
union select 'Peri', 'Felder', '10 Laurel Park Road', 'Fallsburg', 'NY', '12733', '8482264678', 114, 110, 65.5, '2007-03-05', '2022-09-11', '2022-11-03', 250
union select 'Bashi', 'Shapiro', '143 Ridge Avenue', 'Lakewood', 'NJ', '08701', '8455402981', 136, 126, 64, '2017-08-07', '2022-09-12', '2022-11-02', 75
union select 'Ruchi', 'Katz', '12 Boxwood Lane', 'Monsey', 'NY', '10952', '8455020634', 124, 120, 62, '2015-10-12', '2022-09-13', '2022-11-12', 0
union select 'Rena', 'Gawartin', '1432 Laurelwood Avenue', 'Lakewood', 'NJ', '08701', '8453673278', 107, 107, 60, '2018-04-27', '2022-09-14', '2022-11-20', 0
union select 'Hinda', 'Fiddle', '240 Horizon Court', 'Monsey', 'NY', '10952', '8456644581', 143, 137, 61, '2019-04-03', '2022-09-15', '2022-11-07', 25
union select 'Chaya', 'Littman', '1 Brickman Road', 'Fallsburg', 'NY', '12733', '8454282847', 119, 116, 60, '2015-01-13', '2022-09-16', '2022-11-09', 0
union select 'Shana', 'Jacoby', '9 Park Avenue', 'Passaic', 'NJ', '07055', '5517957446', 131, 127, 65, '2016-09-09', '2022-09-17', '2022-11-06', 75
union select 'Cheved', 'Sacks', '89 Howard Avenue', 'Passaic', 'NJ', '07055', '9734897654', 140, 138, 67, '2009-07-17', '2022-09-18', '2022-11-14', 0

