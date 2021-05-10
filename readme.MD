# Bashed : Automate your terminal and workflow

> If it can be done in bash, it can be automated.

These are some of the bash terminal commands I created and use everyday to automate my workflow and to make programming more fun and accessible. Hopefully these commands are useful to you.
## Features

- Automating daily simple commands:
 eg: `cdi` which creates a folder and change directory to it. (mkdir + cd into a folder)
- Project specific commands
eg: `repo` Opens the current project git repository n your default browser.
- Git commands such as `gim` which provides feature headings you set to all your commit messages, you can check this project commit messages.
- Bash commands such as `reload`, no longer do you need to close and open your terminal again to run updated bashrc file.
- Network commands such as `port`, `port 5000` would open localhost:5000 in your default browser.
- Constant updates as I need and use these every day : )

## Tech
- [Bash] - All shell scripts are for bash, I havent tried or tested in other shells!

## Installation

### Prerequisites

Install 'curl' if you don't have it


For ubuntu users:
(without the $)
```sh
#update the system commands, not always necessary but recommended
$ sudo apt update
$ sudo apt upgrade

#install curl
$ sudo apt install curl
```

for others, please refer this:
[Documentation for installing curl](https://help.ubidots.com/en/articles/2165289-learn-how-to-install-run-curl-on-windows-macosx-linux)


### If  you cannot install or do not prefer installing curl
You can manually download the `bashed.sh` file from this repo and move it to the root directory (commands below), if you do not prefer installing curl, this would replace steps 1 and 2 below in installation

The steps to do so in terminal ( tested in mac and ubuntu), assuming the default directories, after you downloaded the bashed.sh file from the repo.
```
# Change to downloads folder

cd ~/Downloads

# Move the file to root directory

mv bashed.sh ~/
```
Follow steps 3 and 4 below in installation.
### Installation
Copy paste these commands in your terminal

Step 1: cd into root folder.

```sh
cd
```
Step 2: get script file.

```
curl -o bashed.sh https://raw.githubusercontent.com/SamroodAli/bashed/main/bashed.sh
```


Step 3: Tell bash to use the script file., make sure you in root folder(step 1)

```sh
echo 'source bashed.sh' >> .bashrc
```
Step4:
If you do not have this project,

`Exit and reload your terminal`

Elseif existing user:
```sh
reload
```
##### Thank you for using my project
## Commands

### Browser
| Command |Example | What it does |
| ------ | ------ | ------ |
|browser | browser | open your default browser|
|Kill-port|kill-port 3000| Kills all processes listening at a port|
|port|port 3000| open localhost:3000 in your default browser|


### Directory and file commands
| Command |Example | What it does |
| ------ | ------ | ------ |
|cdi|cdi project|make a directory and cd into it|
|cdbb|cdbb|cd back 2 times|
|cdb|cdb 3|cd back custom times|
|goto|goto node|go to where program is installed|


### Git commands
Use these only after you are familiar with git commands, highly recommend that you learn them, these commands should not stop you from learning proper git commands.

| Command |Example | What it does |
| ------ | ------ | ------ |
|repo|repo|Open current project repo in your browser|
|gia|gia hello world|git add all files and commit,message is everything after the `gia` keyword, no need for quotes to the message. |
|gim|gim hello world|awesome automated git commit messages,look at this project commits, seperate documentation below |
|gp|gp|`git push -u command`, although it takes in optional arguments and workds,exg: `gp origin development`, but `git push` would be faster with tab completion, I use it for pushing current branch with just `gp`|


### Bash dev tools
| Command |Example | What it does |
| ------ | ------ | ------ |
|reload|reload|reload bashrc file, can almost always replace restarting your terminal|
|bashed|bashed|back up your bashrc file(beta)|
|build|build|Only to be used in this project repo or clone, takes all the script files in this project and builds a final production ready script file. Thinking of contributions or adding more personal ones,this can be useful.
|bashrc|bashrc|Opens bashrc config file|
### Ruby on rails (will be seperated later)
| Command |Example | What it does |
| ------ | ------ | ------ |
|routes|routes user|Rails routes filtered to one keyword, no more browsing through a long list of rails routes|
## Development
Want to contribute? Great!
Open your favorite Terminal and run these commands.
Coming soon
Step 1
```sh
Command to write function
```
Step 2
```sh
Upload and create a pr command
```

## Authors

![Samrood Ali's GitHub stats](https://github-readme-stats.vercel.app/api?username=SamroodAli&count_private=true&theme=dark&show_icons=true)

👤 **Samrood Ali**
- GitHub: [@githubhandle](https://github.com/SamroodAli)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/samrood-ali/)

### Why I wrote this project and how you can help
> Life is too short to not automate.

If I catch myself writing commands twice, that is sign for me to automate it.
I am sharing this and making it open source so everyone can use it and as well as help me make it better.
Contribute if you have any useful bash scripts you wrote. 
You can also contribute by suggesting some tasks that you wish was automated and would like to have, I will do my best to do it, chances are I might need them too.
Programming does not have to be a chore. In it's core, it is there because we are lazy to do things repeatedly. Hopefully this project is of some use to you.
I want this project to be accessible to everyone, I hope I can write a good documentation, feel free to suggest changes, report bugs, create PRs,anything that will make this project better. 
This project is for you, programmer.
