# 1.5 Tracking Changes Reflection
How does tracking and adding changes make developers' lives easier?

Tracking and adding changes provides an all important safty net for a developer.  It allows them to keep track of each stage of their workflow and alllows them to return to an earlier version if they make a huge mistake and break their code. It also provides an easy way to share the changes they have made so they can be approved by the other developers on a joint project before they are merged into the master version. 

What is a commit?

A commit is essentially like a save point.  When the developer alters or adds a file within a repository it is not added to the repository when they click save on sublime.  The change remains in a kind of limbo until it is commited.  If the developer is happy with the change they use the commit command to update the repository on their machine.  N.B. This does not overwrite previous commits. At any time the developer can check the log and roll back to any previous commit. 

What are the best practices for commit messages?

Commit messages should start with a short capitalized sentence exlaining the basic jist like the subject line of an E-mail.  If further explaination is required this should be written in a seperate paragraph with a blank line in beween. Commit messages should also be written in the present imperative tense. 

What does the HEAD^ argument mean?

HEAD^ reffers latest commit on whichever branch you are working. HEAD is updated whenever you make a new commit or change branches.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The first stage of any change is to make whatever file alterations you want to make. e.g. Adding a file, adding text to a file, changing a line of code etc. At this point git will recognise that a change has been made to a file but nothing is ready to be commited. 
The next stage is to 'add' the change by typing 'git add' followed by the name of the file you changed.  This adds that file to a sort of que of changes to be commited but doesn't change the repository.
The final stage is to commit the change with 'git commit' this will add any changes that you have added to the repository.  N.B If did not 'add' a specific change then it will not be commited.

Write a handy cheatsheet of the commands you need to commit your changes?

git status
  - tells you the current status of any changes you've made.

git add 'file_name'
  - adds this file to the list of files to be commited.

git add . 
  - adds all current changes

git commit -m "commit message"
commits all added changes and allows you to add a short commit message in the same line.  

git commit -v 
takes you into the text editor to create a more in depth commit message. Canges are only commited once the message has been entered.

What is a pull request and how do you create and merge one?
A pull request is a request for your updated files to be merged into the origin master on GitHub.  You can create one you first need to commit all your changes.  Then you use 'git push origin branch_name' to 'push' your branch onto GitHub. You can then go to the repository on GitHub click 'compare & pull request' fill out the form with a name and discription for your pull request and click 'Create pull request'

Why are pull requests preferred when working with teams?

Pull requests are used because they allow the other developers on your team to review your changes BEFORE they are merged with the rest of the project.  This is why it is considered bad practice to merge your own pull request.  