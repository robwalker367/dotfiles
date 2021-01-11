PROMPT="%F{magenta}%n%f: %F{yellow}%0~%f [%F{green}%D %*%f] %% "

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
if [ -e /Users/robwalker/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/robwalker/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

workon() {
  cd ~/src/github.com/Shopify/$1
}

startenv() {
  source ~/environments/$1/bin/activate
}

export PATH=/Users/robwalker/Library/Python/2.7/bin:$PATH
