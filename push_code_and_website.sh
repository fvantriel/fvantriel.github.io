#!/bin/bash
# This bash script is being used to upload the latest repo state to git and push the changes of the website to gh-pages
echo "Hi there, let's upload the latest state of the repository!"

echo ""

git add .

echo "Please enter commit message"
read commitMessage

git commit -m "$commitMessage"

git push origin

echo "Now that your codebase is updated, let's push the changes to your website!"

flutter pub global activate peanut

flutter pub global run peanut

git push origin --set-upstream gh-pages

echo ""
echo ""
echo "Done, all changes should be up to date in the next minutes."

