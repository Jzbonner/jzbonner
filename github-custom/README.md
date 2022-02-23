## Github Customizations for @Jzbonner

#### Setting up Development Environment 
I have found that using GitHub as your main project management tool makes working with version control in Git that much easier. I have created a custom configuration that I use in my own project builds to setup default labels and milestones for a faster workflow. Please refer to this documentation in order to get setup with the `probots/settings` [here](https://probot.github.io/apps/settings/)

![github-apps](https://res.cloudinary.com/dzmc7doja/image/upload/v1645567363/notes-imgcontent/github-apps.png)

* link to my github configuration `settings.yml` [file](https://github.com/Jzbonner/jzbonner/blob/main/github-custom/settings.yml)

#### GitHub Worflow 
I usually setup my `.github` configuration on new project repos, by configuring on the main (i.e. production ready branch) branch; and then create a development focused branch to install dependencies, setup project directory structure, organize environment variables and create basic application functionality. 

#### Useful GitHub commands for managing branches/repos 
GitHub provides a number of built in features that make structuring your project directories and branches fluid and intuitive. However there are still a number of common use cases that the below git commands could help solve: 
1. **Change your branch name locally and update changes** 
```bash
git branch -m OLD-BRANCH-NAME NEW-BRANCH-NAME
git fetch origin 
git branch -u origin/NEW-BRANCH-NAME NEW-BRANCH-NAME
git remote set-head origin -a

# optionally run the following command to remove tracking references 
git remote prune origin
```
2. **Switching remote URLs from Https to SSH**
```bash
# check the current remote URL 
git remote -v 

# change the remote URL 
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git

# verify that the remote URL has changed 
git remote -v
```

#### Setting up SSH keys for GitHub Repos
SSH keys are the most secure method for managing GitHub repositories. GitHub has also recently deprecated the ability to push changes and commits to repositories using Username and Password; so it's pretty essential for managing version control through GitHub. In order to utilize this method we need to: 
1. Generate a new SSH key
2. Add the SSH Key to the ssh-agent 
3. Then Add the SSH Key to your GitHub account

```bash
# create ssh key 
ssh-keygen -t ed25519 -C "your_email@example.com"

# press enter when prompted for a file in which to save the key 
> Enter a file in which to save the key (/c/Users/you/.ssh/id_algorithm):[Press enter]

# create a passphrase 
> Enter passphrase (empty for no passphrase): [Type a passphrase]
> Enter same passphrase again: [Type passphrase again]

# ensure that the ssh-agent is running in the background 
eval "$(ssh-agent -s)"

# add previously generated ssh-key to ssh-agent
ssh-add ~/.ssh/id_ed25519 
```

Once you have created the ssh key locally, it's time to add the SSH-key to your GitHub account so you can use it manage version control. You will need to copy the contents of your `id_ed25519.pub` file and add it to your GitHub profile settings SSH Key section. This will ensure that any local changes that are pushed to your repo are coming from an authorized user.  

For more details  on that process, please refer to this **[link](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)**
