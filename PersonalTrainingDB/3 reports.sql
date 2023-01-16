use PersonalTrainingDB
go

--I want to see a list of all my current clients presented as follows:
    --last name, first name, starting weight, current weight, weight lost so far, goal weight if applies,
    --trainer, how long they have been training with us, ordered by newest clients to oldest clients
select c.LastName, c.FirstName, c.StartWeight, c.CurrentWeight, WeightLost = (c.StartWeight - c.CurrentWeight), 
    GoalWeight = case when ClientsGoal like '%Goal Weight%' then ClientsGoal else '' end, c.PrimaryTrainer, YearsSinceBeganTraining = concat(datediff(year, c.SignupDate, getdate()), ' Years')
from Client c
order by datediff(month, c.SignupDate, getdate()) desc
--Show me the min max and average weight loss per trainer
select c.PrimaryTrainer, MinWeightLoss = min(c.StartWeight - c.CurrentWeight), MaxWeightLoss = max(c.StartWeight - c.CurrentWeight), AvgWeightLoss = avg(c.StartWeight - c.CurrentWeight)
from Client c 
group by c.PrimaryTrainer
--Show me a list how $ much each client owes greatest to least. include phone numbers in this list.
select c.FirstName, c.LastName, c.BalanceDue, c.PhoneNumber
from Client c 