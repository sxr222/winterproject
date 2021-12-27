

To professor Chuah: This is still a work in progress

# Project structure

## piazza_folder
Defines the necessary files you need to get started on the piazza question portion of the project. 
It includes:
    - piazza_questions_cse109.txt
    - piazza_questions_server.php
    - piazza_questions.sql

You will need to: 
    - create a scripting file to preprocess the sample instances in piazza_questions_cse109.txt 
    - create methods in piazza_questions_server.php to perform CRUD operations on these sample instances with the sql database cse109 table
    - create methods in piazza_questions_server.php to perform CRUD operations with sql database cse216 table


## collegerant_folder
Defines the necessary files you need to get started on the collegerant question portion of the project.
It includes: 
    - collegerant_questions_server.php ==> a template php file to interact with collegerant's MAMP database
    - collegerant_questions.txt ==> a sample set of questions scraped from reddit r/collegerant.

You will need to: 
    - create a new MAMP sql database where you get to decide the table structure. (Hint: look in collegerant_questions.txt to see what columns are needed!)
    - create methods in collegerant_questions_server.php to perform CRUD operations on sample instances in collegerant_questions.txt
