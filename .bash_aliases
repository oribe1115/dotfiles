alias gitedit='git add . && git commit --amend --no-edit'
alias githubemail='git config --local user.email "50443000+oribe1115@users.noreply.github.com" && git config --local user.name "oribe1115"'
alias gitclean='git checkout main && git branch --merged | egrep "\*|main" | xargs git branch -d && git fetch --prune'

if type trash-put &> /dev/null
then
    alias rm=trash-put
fi