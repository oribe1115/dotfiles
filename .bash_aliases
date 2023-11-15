alias gitedit='git add . && git commit --amend --no-edit'
alias githubemail='git config --local user.email "50443000+oribe1115@users.noreply.github.com" && git config --local user.name "oribe1115"'
alias gitclean='git checkout main && git branch --merged | grep -E -v "\*|main" | xargs git branch -d && git fetch --prune'
alias act='gh act'
alias dockercontainorclean="docker ps -a | grep Exited | awk '{print \$1}' | xargs docker rm"
alias znvim='zellij action new-tab -l nvim-tab'

if type trash-put &> /dev/null
then
    alias rm=trash-put
fi