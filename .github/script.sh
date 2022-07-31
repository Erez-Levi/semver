string=${{ github.event.head_commit.message }}
if [[ $string == *"feat"* ]]; then
  .github/increment_version.sh -m $curr_tag
elif [[ $string == *"BREAKING CHANGE"* ]]; then
  .github/increment_version.sh -M $curr_tag
else
  .github/increment_version.sh -p $curr_ta
