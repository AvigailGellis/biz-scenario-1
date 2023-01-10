/*
I am a Personal Trainer and I work with clients to build their bodies and coach them how to lose 
weight from the correct excersizes.
I have many clients and I need a system to keep track of them - their First and Last Names, 
home address, phone number, starting weight, current weight, height, BMI (body mass index), date that
they signed up, date of last session, date of upcoming session, balance owed

Q: What unit of measure do you use?
A: pounds for weight and inches for height

Q:What is BMI and how is it calculated?
A:???

Q:Is there a max balance owed? Is there a number that if reached, you may no longer book further
sessions until paid up?
A: Yes. $375

Q: Why do you have clients in Passaic Monsey Lakewood and Fallsburg - do you travel all over?
A: I forgot to tell you that although I am the main trainer and I do occasionally travel for sessions
I have 5 trainers working for me and every client is matched up with a trainer that lives in her city
and can have occasional sessions with me.
I need you to record each client's primary trainer.  
    Bracha (myself) Monsey Clients with house number less than 100
    Zeasy Fallsburg Clients
    Esther Passaic Clients
    Tzipora Lakewood Clients with signup date months July or August
    Sara Lakewood Clients with all other sign up date months
    Gitty Monsey clients with house number greater than 100

Q: Are your clients only going to be from the four locations found in the sample data?
A: yes, for now I am only servicing these four cities

Q: Is there a minimum or maximum starting weight that you accept into your service?
A: Not officially, but I don't work with children or teens, only women 20 and up
so I'll never have a client under 75 lbs. And I generally cater towards normal average
weight clients, I do not specialize in obesity, so never over 300 pounds.

Q: When did you begin working as a personal trainer?
A: March 2007

Q:Do you set a goal weight with your clients?
A:It depends. Some clients are aiming to lose weight and others are just working out for recreational
purposes or for body building or shaping. Please include in the system each client's goal.
Goals:
    all Lakewood clients- goal weight is 15 pounds less than starting weight
    all Monsey clients- goal is body building/shaping
    all Passaic clients- recreational 
    all Fallsburg clients- goal weight is 5 pounds less than starting weight 

Q: Do you need to record the time of any of the dates?
A: Only the time of the Upcoming session, the time is the last digit of the phone number PM
example: phone number is 8455258521, last digit is 1, so upcoming appointment is at 1:00 PM

Q: Will the date of the first session ever be before the date of signing up; do you ever do a free
demo session or in-person consultation?
A: No, never. Our sterling reputation precedes us, none of my clients feel the need to try us out.
I do offer a free 20 minute consultation by telephone or zoom but that is never recorded. Most clients
hear raving reviews from their friends, sisters, and neighbors and any  remaining questions can be
answered by visiting our website.

Sample Data - Current Clients
Esti Anteby, 120 Rock Hill Road Monsey NY 1092, 8455258521, 120, 116, 61, ???,  July 17 2020, September 9 2022, November 1 2022, $125,
Batsheva Cohen, 53 Regina Road Monsey NY 10952, 8456422919, 137, 136, 66.5, ???, July 18 2017, September 10 2022, November 2 2022, $275,
Peri Felder, 10 Laurel Park Road Fallsburg NY 12733, 8482264678, 114, 110, 65.5, ???, March 5 2007, September 11 2022, November 3 2022, $250,
Bashi Shapiro, 143 Ridge Avenue Lakewood NJ 08701, 8455402981, 136, 126, 64, ???, August 7 2017, September 12 2022, November 2 2022, $75,
Ruchi Katz, 12 Boxwood Lane Monsey NY 10952, 8455020634, 124, 120, 62, ???, October 12 2015, September 13 2022, November 12 2022, $0,
Rena Gawartin, 1432 Laurelwood Avenue Lakewood NJ 08701, 8453673278, 107, 107, 60, ???, April 27 2018, September 14 2022, November 20 2022, $0
Hinda Fiddle, 240 Horizon Court Monsey NY 10952, 8456644581, 143, 137, 61, ???, April 3 2019, September 15 2022, November 7 2022, $25,
Chaya Littman, 1 Brickman Road Fallsburg NY 12733, 8454282847, 119, 116, 60, ???, January 13 2015, September 16 2022, November 9 2022, $0,
Shana Jacoby, 9 Park Avenue Passaic NJ 07055, 5517957446, 131, 127, 65, ???, September 9 2016, September 17 2022, November 6 2022, $75
Cheved Sacks, 89 Howard Avenue Passaic NJ 07055, 9734897654, 140,138, 67, ???, July 17 2009, September 18 2022, November 14 2022, $0

Reports
I want to see a list of all my current clients presented as follows:
    last name, first name, starting weight, current weight, weight lost so far, goal weight if applies,
    trainer, how long they have been training with us, ordered by newest clients to oldest clients
Show me the min max and average weight loss per trainer
Show me a list how $ much each client owes greatest to least. include phone numbers in this list.

/*
