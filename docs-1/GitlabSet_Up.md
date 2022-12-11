Gitlab
GitLab Set Up
MCBOSS

Version 3.0
January 2021
















Revision History
Date	Version	Description	Author
02/02/2021	3.0	Added instructions to create Branch	Jennifer P. Smith
01/13/2021	2.0	Added Appendix A – Install Bash	Jennifer P. Smith
01/11/2021	1.0	Initial Version	Bobby Rodgers LDS
Jennifer P. Smith LDS

Edits and feedback are welcome. Send edits and feedback to Jen Smith jpsmith@scires.com.


Purpose of this document
The purpose of this document is to provide instruction for setting up access the GitLab.
Access Requirements 
For access you need the following:
A CAC card 
An active navy.mil email account
DoD Cert on that CAC card
Visual Code Studio (or other similar interface)
Access MCBOSS gitlab repo
 To access MCBOSS git repository, follow these steps:
Enable VPN
Click this link: https://git.dev.mcboss.usmc.mil/
If a popup window asks you to select a cert, chose the certificate that “Proves your identity to a remote computer” or “Authentication.”
Select SAML

Set Profile Settings
Create Personal Access Token (PAT)
Click on top right drop down for your user identity. The number with the @ is your EDIPI number, which is also the number on the back of your CAC card.
Your PAT in this case is an SSH key.
 
Select Settings
From the left navigation select Access Tokens.
In the Name text box, enter firstname.lastname. For example bobby.rodgers 
Skip Expires at
For Scopes, check all of the boxes 
Click Create Personal Access Token. Active tokes are listed below the button.
COPY and SAVE your PAT.  You will need this PAT later when you are cloning your GitLab repo to your computer. 
In order to use PATs, you must have 2FA enabled.
Enable 2FA
From the left navigation, click on Account 
Click Enable two-factor authentication. The Register Two-Factor Authenticator screen displays showing 
From your smart phone, download Google Authenticator, if you have not already done so. 
 
Once installed, scan the QR Code on the screen. A Pin code appears.
Enter the Pin code in the text box on your computer screen. 
Click Register with two factor app button. A screen with access codes displays. 
Save codes in case you lose access to this account. 
Click Proceed button
Ask Bobby Rodgers to add the repos to your GitLab account.  (rmrodgers@scires.com)
Repositories AKA Repos AKA Projects
After Bobby Rodgers has added repos (aka projects) to your account, you need to clone them to your personal computer. 
 
Users with access to the GitLab repository are assigned roles, which reflect permission levels. A full table of permissions is here. Below is a brief overview.
Jen Smith’s roles are as follows for example:
Project	Role	Level	Ability
Lds/daaseco: 	Maintainer	Highest below Owner	full edit capabilities
Lds/projects: 	Developer	Below Maintainer	Can make push and pull updates
Lds/terraform: 	Reporter	Below Developer	Can pull updates/not push
Lds/devops: 	Guest	Below Developer	Can see repo
Cloning a Repo
Choose a folder on your computer for your GitLab repos. I created a folder on my desktop called repos.
From Visual Studio Code, open Bash terminal. 
If you installed full Anaconda, then you have Bash already.
If you don’t have Bash, then you need to install Git. See Appendix A.
Change directory to your GitLab repo folder. 
For me cd Desktop/repos
Egitnter this 
git config --global http.sslVerify false
 
Do not close Visual Studio Code; you’ll return here later to enter code to clone a repo.
Return to GitLab at https://git.dev.mcboss.usmc.mil/
From Projects in GitLab. click on a repo where you are listed as Developer, Reporter or higher role.  For example, lds/daaseco.  Guest roles have read permissions only. 
 
Click Clone button
 
From the Clone with HTTPS, click the Copy URL icon. The URL is copied.
For the next steps you will need your EDIPI and your PAT code from earlier.
Open Notepad. Paste the URL
 
After https://  and before @git.dev.mcboss.usmc.mil/lds/daaseco.git,
 insert  your EDIPI:PAT@
https://EDIPI:PAT@git.dev.mcboss.usmc.mil/lds/daaseco.git
Copy the revised URL.
Return to Visual Studio Code prompt. 
Type in git clone then paste in the revised URL. It should look similar to this code:
git clone https://EDIPI:PAT@git.dev.mcboss.usmc.mil/lds/daaseco.git 
Press Enter key. “Cloning into ‘daaseco’… text displays.
 
To clone other repos, copy the code from step 12 and change the name of the repo
Projects repo clone code: 
git clone https://EDIPI:PAT@git.dev.mcboss.usmc.mil/lds/projects.git 
Documentation repo clone code:
git clone https://EDIPI#:PAT@git.dev.mcboss.usmc.mil/lds/documentation.git 

Using Gitlab
Git Commands
Git is a system for keeping track of versions of files.  Git git is used to download, upload, and track files.   
The following table lists common git commands.
Table 1: Git Shortcuts
Outcome 	Command
List items in directory 	ls
Adds file to list of files to be committed	git add <filename.txt>
Add a message between quotation marks	-m “ ”
Sets the file to be uploaded to Bitbucket	git commit
Uploads the file to Bitbucket	git push
Shows history of uploads	git log
Updates your local repository with updates made to the Bitbucket repository	git pull
List items in directory 	Ls
In VScode, when typing  “cd” does not change directory, try 	cd –P
To go up one directory	cd ..
Create new branch and name it date-first.last	git checkout –b 20210115-bobby.rodgers      
Getting Started
As a rule, always start with git pull. This will update your local folder. 
My local repo folder is located at  C:\Users\jpsmith\Desktop\repos\documentation
Turn on your VPN.
Open Visual Studio
Change directory to your repo folder. 
CD Desktop/repos/documentation
The following displays:
 
The blue text (master) indicates the folder is connected with the GitLab repo.
Git Pull
Update your local folder, type git pull 
Any updates to the GitLab repo will update to your local machine.

Adding a file Using Branches
Gitlab is set up so that changes to repo are reviewed and approved by others before being completed.
Instead of merging changes to the main repo, you create a branch, make changes there, upload the branch, and then request the changes in the branch be merged into the main repo.
Here are the steps. 
Git Status
Indicates the differences, if any, between Gitlab repo and your local folder
git status
CREATE BRANCH HERE

Git Checkout
Checks out a branch. Include the date-first.last to name the branch
git checkout –b 20210115-bobby.rodgers      
Git add <file name>
Adds the file from your local machine to list of files to be uploaded.
git add file.txt
Git commit
Commits the file
git commit –m “message here”
Git Push 
Pushes the file to the Gitlab Repo
git push

Approve Merge
Once you have pushed a new file to gitlab, the change has to be approved. 
From Gitlab,  open the repo. 
Click on Merge requests
Bash
Bash is a file that processes commands, which can be run in the terminal window. You can write commands and actions. A bash can also read commands (aka script)
If you installed full Anaconda, then you have Bash already.
If you installed Miniconda, then you need to install Git.
Install Git
To install Git, got to Gitforwindows.org and click the download button.
 
From your Downloads folder, click the Git executable file.
 
Follow the Git Set Up Wizard by clicking Next button until you see
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Visual Studio
Open Visual Studio Code
Open a terminal.
From the drop down menu, click Select Default Shell.
 
At the top of the display, select Git Bash.
 
Click plus sign (New Terminal) next to the PowerShell option in the terminal.

 
A new bash terminal opens.
 
From the Bash terminal, navigate to your Development folder.
