# Leon_cha totle devops area
Leoncha's codespace

# git operation
## manager the branch
```bash
git merge <branch-name>
git branch -d <branch-name>
git push origin --delete <branch-name>
```
## use the github action
use it auto build the website.

# task list
## build a docker image managerment.
### funciton
including auto-rebuild all the images and contianer.
doing operation on the Dockerfile is better than the terminal interactive.
I do believe the Dockerfile is the best operation contianer.
achieve the goal and do the best.

## used a script to realise the container auto-control, its little weight and different from the k8s.
Windows
``` bat
.\PM.bat <image-name> <container-name>
```
Linux
```bash
bash PM.sh <image-name> <contianer-name>
```