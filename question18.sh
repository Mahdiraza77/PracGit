git branch -a
# Merge all ready* branches into main
for branch in $(git branch -r | grep ready); do
  git checkout main
  git merge ${branch#origin/}
  # Resolve conflicts if any
  git branch -d ${branch#origin/}
done
# Update all update* branches with latest from main
for branch in $(git branch -r | grep update); do
  git checkout ${branch#origin/}
  git merge main
done