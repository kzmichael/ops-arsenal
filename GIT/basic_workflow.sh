# Scenario:
# You’ve made changes to a file app.py on a branch called feature-automation.

# Your tasks:

# Commit the changes locally with a meaningful message.

# Push the branch to the remote repository.

# Conceptually, describe how to create a pull request for review.

# Write the Git commands (and brief PR explanation) you’d use.

git checkout -b feature-automation
git add app.py
git commit -m "Added automation features to app.py"
git push origin feature-automation
# To create a pull request for review, you would typically go to the repository hosting service (like GitHub, GitLab, etc.), navigate to the "Pull Requests" section, and click on "New Pull Request". You would select the base branch (usually main or master) and compare it with your feature-automation branch. After reviewing the changes, you would provide a title and description for the pull request, then submit it for review by your team members.