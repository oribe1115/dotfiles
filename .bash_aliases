alias gitedit='git add . && git commit --amend --no-edit'
alias githubemail='git config --local user.email "50443000+oribe1115@users.noreply.github.com"'
alias gitclean='git checkout main && git branch --merged | egrep "\*|main" | xargs git branch -d && git fetch --prune'