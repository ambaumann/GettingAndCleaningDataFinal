## Repo for the final project in Getting and Cleaning Data class.

The purpose of this project is to simplify and clarify data found in the data directroy.
The run_analysis.R script file contains all needed code to complete this task.
There are 7 major steps, as ountlined in the script file, performed to complete the project.
These steps are:
1. Load Needed Data Files
2. Combine the test and training sets of data
3. Filter out all columns that do not have to do with the activity, the subject, means, or standard deviations
4. Apply more descriptive activity names to the data
5. Create more descriptive column names for the data
6. Simplify the size of the data by averaging the entries where the activity and the subject are the same
7. Write the data to SimpleTable.txt

This process ultimately reduces 7 different files with 10299 entries and 563 attributes down to a single file with 180 entries and 68 attributes.

See CookBook.md for more information about the data used for this project.