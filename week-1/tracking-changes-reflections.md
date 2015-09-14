
#How does tracking and adding changes make developers' lives easier?

Because they are able to constantly manipulate the code they want without messing up the original. It kind of reminds me of adobe photoshop, where theres layers you can draw on. You can draw on the original without actually touching the original. You can keep the added layers of drawings or omit them. Once happy, you can merge all the images by "flattening them" into a single image.

#What is a commit?

Commit is a save point of the little changes.
You can commit changes to head (but not yet to the remote repository) and commit any files added with git add, and commit any files changed since then.

#What are the best practices for commit messages?

By keeping the message in the present, and fully detailed.

#What does the HEAD^ argument mean?

HEAD is the commit you are currently on, so HEAD^ is the last commit. HEAD~3 HEAD~4 and HEAD~5, are the 3rd, 4th and 5th commit from HEAD respectively.

#What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages are modify, add and commit. To move a file, you use git checkout feature_branch phase-0/week-1/making-changes.

#Write a handy cheatsheet of the commands you need to commit your changes?

master
git pull
git checkout -b branch_name
work work work
git add
git commit -m "commit message"
git push origin branch_name
git checkout master
git fetch origin master
git merge origin/master

#What is a pull request and how do you create and merge one?

Pull requests let you tell others about changes pushed to a Github repository. To create and merge one, you must go into your github account and select a commit from the branch menu. To the left of the Branch menu, click on the Compare and Review button. The Compare page will automatically select the base and compare branches; to change these, click Edit. Then click Create pull request, then type the title and description of the pull request. Click pull request.

#Why are pull requests preferred when working with teams?

Because you can allow others in your team to review the set of changes, discuss potential modifications and even push follow-up commits if neccessary.