# Create branch1
git branch branch1
git checkout branch1
mkdir -p dir1
rm -rf dir1/dir2
touch dir1/foo
mkdir -p dir3
rm -rf dir3/bar_copy
touch newfile1
git add .
git commit -m "Setup branch1"

# Create branch2
git checkout main
git branch branch2
git checkout branch2
mkdir -p dir1/dir2
echo "modified content" > dir1/dir2/foo_modified
mkdir -p dir1/dir3
touch dir1/dir3/newfile2
git add .
git commit -m "Setup branch2"