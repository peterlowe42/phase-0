# 1.1 Think About Time Reflection

Personally I have never been very good at time management, especially when it comes to independent study.  In the past I have tried making 'to do' lists and schedules to force myself to use my time better but these tend not to work to well for me as the more I feel pressured into doing something the more I tend to procrastinate.  

So my plan  for phase 0 looks goes like this:

At the start of each week I will review all the assignments and order them in terms of which ones I find most interesting or intriguing.  In order to motivate myself to do the tasks at the bottom of the list I will only allow myself to do one of the 'fun' tasks after I've finished a less fun task. (Hopefully this will help, We'll see how it goes.)

Each work day will be broken up into 25 min Pomodoros in order to make the workload seem less daunting and intimidating.  Once I've got a feel for my work rate I will start assigning numbers of Pomodoros to each task.  I will allow myself regular short breaks for cups of tea in order to maintain morale.  I will also strive to be mindful of when i'm becoming overworked and losing productivity and take a longer break to draw or meditate.  

Ultimately my goal is to not focus too much on hitting deadlines and finishing all my assigned tasks for each day but rather reflect on how I feel about each days work.  If I feel like I've used my time well and done all I can with my day then that's a win. If not I need to manage things better the following day.

## 1.2 The Command Line Reflection

This was a great exercise for me because I've never really attempted to use the command line for anything before and always considered its use to be some kind of technological sorcery.  I can now see how useful and it can be and that it can in fact be quite simple to use.  Anyway here's my answers to the questions:

1. A shell is basically any program that provides the kind of text based interface that you find in the command line.  It takes text commands in, feeds those commands to the CPU and gives text based output.   Bash is a specific shell program first released in 1989 that is used as the standard command interface for linux and osx. 

2. The most challenging aspect of this for me was simply getting use to the idea of using text based input and output and relating what I was typing and seeing in the command interface with the graphical items i'm familiar with.  After one or two exercises it was pretty straight forward and kind of fun. 

3. Yes. I used all the commands successfully.

4. It's hard to say at this point what the most important/useful commands will be. I'm sure i'll have a much better idea once I've used shells more regularly.  At the moment I would say that 'pwd' will be very useful (if your not using windows cmd line which constantly tells you what diredctory you're in anyway.) also cd, less/more and grep/select-string.

5. pwd- Stands for print working directory and simply outputs the directory you are currently in.

    ls - lists all the items in the working directory

    mv - moves a file or item to a new location within the directory.  This often  equates to renaming the file

    cd - changes the working directory

     ../ - I'm  not totally clear on what this does. I think it executes certain files.

    touch - Creates a new file or changes the time on an existing file.

    mkdir - makes a new directory 

    less - prints the contents of a text file screen by screen.

    rmdir - removes a directory 

    rm - removes a file

    help - can be used to get help on how to use unfamiliar commands 

### 1.3 Forking and Cloning Reflection 

Creating a new repository in GitHub couldn't be easier.  Simply log-on to your github account, click on the + button next to your username in the top right corner and select 'New repository'.  This will bring up a simple form to give your repository a name, set it as public or private and add a licence.  Once you've filled this out click the create repository button at the bottom and your repository will be created.

You can also 'fork' an existing repository.  This simply makes a copy of a repository from another account and puts it in yours.   To do this open the repository you want to folk and click the folk button.  You now have your very own version of this repository in your account to play with as you see fit.  

So why clone a repository? why not just make a new one? There are a couple of reasons. Maybe your working on a joint project and need to work on files from a repository belonging to one of your partners  without compromising the original. Or maybe your working on something for yourself but someone else has already done a lot of the ground work.  Why create all those files again when you can simply 'fork' them from an existing repository.  After all nobody wants to do unnecessary work.

Before you work on files from a GitHub repository you'll need to 'clone' them to your own computer.  This is also very simple to do.  Open the repository in GitHub and you'll find a small box on the right labeled 'HTTPS clone URL'  copy the context of this box.  Next open your command line and navigate to the directory where you want the clone to go using the 'cd' command.  Then simply type 'git clone ' paste the URL you just copied and hit enter.  It's that simple.

 

I didn't really have any troubles setting up Git or GitHub it all went very smoothly.  The only problem I encountered was when I was asked to delete the clones I'd made and clone them again.  I encountered permissions errors when I first tried to delete them through Powershell.This is apparently a common problem on windows machines and a quick google search revealed the solution.  