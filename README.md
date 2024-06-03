
# Devops Assignment

Below is the questions description and solution for them along with the output generated for those questions.



## Question 1 - Log File Analysis

#### Objective: 
Write a Bash script that analyzes a server log file and extracts useful statistics and information, demonstrating your ability to manipulate file data and effectively utilize Bash commands.

#### Requirements:  
- **Features Implemented:**
    - Total Requests Count: Output the total number of requests in the log file.
    - Percentage of Successful Requests: Calculate and print the percentage of successful requests (HTTP status codes in the range 200-299).
    - Most Active User: Display the IP address of the user who made the most requests.

- **Output Format:**
    The output should be formatted clearly and readable. Each piece of information should be prefixed with a descriptive label.

## Solution:

Please refer question1.sh file above

**Basic folder structure:**
3 scripts, 1 sub-directory and a text file with server logs

![folder_structure](https://github.com/Apoorv0503/Apoorv0503-Apoorva-Scaler-Bash-Assignment/blob/main/Outputs/main_dir.png?raw=true)

**Upon execution of solution script:**

![sol1_output](https://github.com/Apoorv0503/Apoorv0503-Apoorva-Scaler-Bash-Assignment/blob/main/Outputs/sol1.png?raw=true)


## Question 2 - Extract and Count File Types

#### Objective: 
Write a script that counts and lists how many files of each type are present in a given directory.

#### Requirements:  
- **Features Implemented:**
    - Traverse a specified directory recursively.
    - Identify file types based on file extensions.
    - Count and list the number of files for each file type.

- **Output Format:**
    Display a sorted list of file types along with their counts.

## Solution:

Please refer question2.sh file above

**Basic folder structure:**
1 sub-directory with different kind of files to count.

![folder_structure](https://github.com/Apoorv0503/Apoorv0503-Apoorva-Scaler-Bash-Assignment/blob/main/Outputs/sol2_setup.png?raw=true)

**Upon execution of solution script:**

![sol1_output](https://github.com/Apoorv0503/Apoorv0503-Apoorva-Scaler-Bash-Assignment/blob/main/Outputs/sol2.png?raw=true)


## Question 3 - Check Service Status

#### Objective: 
Develop a script that checks if a specific system service (like Apache or SSH) is running and reports its status.

#### Requirements:  
- **Features Implemented:**
    - Accept the service name as a command line argument.
    - Use system commands to check if the service is active and running.
    - Output the current status of the service.

- **Output Format:**
    Clearly state whether the specified service is running or not.

## Solution:

Please refer question3.sh file above

**system processes used here:**
I have used the basic system processes like cron, MySQL(Database Server), Network Manager and ssh.

**Upon execution of solution script:**

![sol3_output](https://github.com/Apoorv0503/Apoorv0503-Apoorva-Scaler-Bash-Assignment/blob/main/Outputs/sol3.png?raw=true)

