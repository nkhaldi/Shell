git add $1
git commit -m "$2"
git push
perl -E 'say "\n\033[32m***** STATUS *****\n"'
git status
