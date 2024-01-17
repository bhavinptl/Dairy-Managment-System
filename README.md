---
Title: "Dairy Management System"
author: "Bhavin Patel"


---

# Project Overview

The Dairy Managment System is a comprehensive database system designed to manage and streamline the operations of dairy farms, farmers, and related transactions.
This system incorporates various SQL features to provide efficient data retrieval and manipulation. Below are key features and functionalities described using various SQL queries.


# Project Structure

## SQL Files

The SQL queries for the Dairy Management System are organized as follows:

1. `01_GetAllDairies.sql`: Get the list of all dairies.
2. `02_SP_GetFarmersByVillage.sql`: Get the list of farmers from a village.
3. `03_SP_GetFarmersByName.sql`: Get the list of farmers with a name like - abc.
4. `04_SP_GetFatTypes.sql`: Get the list of fat types.
5. `05_SP_GetDepositsForDay.sql`: Get list of deposits for a day for a dairy.
6. `06_SP_GetTotalMilkCollection.sql`: Get the DairyId, Dairy Name, TotalMilkCollection for a day for each dairy.
7. `07_SP_GetMilkCollectionAnimalWise.sql`: Get the list of DairyName, TotalMilkCollection for a day, animal-wise.
8. `08_SP_GetFatWiseTotalCollection.sql`: Get the list of DairyName, Fat-wise total collection of milk for a day.
9. `09_SP_GetFatWiseTotalCollectionDateRange.sql`: Get the list of DairyName, Fat-wise total collection of milk for a date range.
10. `10_SP_GetTotalDepositForMonth.sql`: Get the list of DairyName, FarmerName, TotalDeposit done for a month of a year.
11. `11_SP_GetFatWiseTotalDeposit.sql`: Get DairyName, FarmerName, fat-wise TotalDeposit in a month for a farmer for the current year.
12. `12_SP_GetTotalDepositAnimalWise.sql`: Get the DairyName, FarmerName, TotalDeposit done for a month by a farmer AnimalId wise.
13. `13_SP_GetFarmerDetails.sql`: Get the list of FarmerName, TotalDepositForMonth, Month_Year, TotalIncomeEarned.
14. `14_SP_GetAllDepositsByFarmer.sql`: Get All deposits by a farmer for a month and year.
15. `15_CreateMonthlyDepositsView.sql`: Create a view to get the list of all farmers, deposits, and IncomeEarned month-wise.
16. `16_SP_GetFarmersNotDepositedBuffaloMilk.sql`: Get the list of farmers who have not deposited buffalo milk for a month.
17. `17_SP_GetFarmersNotDepositedFat2.sql`: Get the list of farmers who have not deposited milk with fat 2 ever.
18. `18_SP_GetFarmersNotDepositedAny.sql`: Get the list of farmers who have not deposited any during a month of the current year.
19. `19_SP_GetCustomerBankDetails.sql`: Get the list of customer's bank details for a bank.
20. `20_SP_GetBankwiseTotalFarmersCount.sql`: Get the bankwise total farmers count.
21. `21_SP_GetBankwiseTotalDeposit.sql`: Get the bankwise total deposit to be done for a month of a year.
22. `22_SP_GetDairiesInDistrict.sql`: Get the list of dairies in the given District.
23. `23_SP_GetAverageDepositForAnimal.sql`: Get the average deposit of milk for each animal for each Dairy.
24. `24_SP_DisableUserAndRoles.sql`: Disable a user and his/her roles.
25. `25_SP_GetDairiesCountDistrictWise.sql`: Get the count of dairies district-wise.
26. `26_SP_GetFarmersCountDairyWise.sql`: Get the count of farmers dairy-wise for a month and year.



# Skills Learned


-SQL Query Writing using CTE, rank, joins, sub-queries, numeric functions, etc.

-Data Extraction and Transformation.

-Data Analysis and Interpretation.

-Report Generation.

-Problem Solving and Decision Making.

-Grouping and Aggregation: Using GROUP BY and aggregate functions like SUM, AVG, COUNT.

-Case Statements: Handling conditional logic within queries.

-Date Functions: Extracting and manipulating date-related information using functions like Month, Year.

