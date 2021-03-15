# create a timestamp alias for the commit message
timestamp() {
  date +"%d-%m-%Y @ %T"
}

# files to backup
cp ~/.zshrc ~/dotfiles/.zshrc
cp ~/.fehbg ~/dotfiles/.fehbg
cp ~/.config/openbox ~/dotfiles/.config/openbox
cp ~/.config/kitty ~/dotfiles/.config/kitty
cp ~/.config/dunst/dunstrc ~/dotfiles/.config/dunst/dunstrc
cp ~/.config/obmenu-generator ~/dotfiles/.config/obmenu-generator
cp ~/.config/picom/picom.conf ~/dotfiles/.config/picom/picom.conf
cp ~/.config/rofi ~/dotfiles/.config/rofi
cp ~/.config/tint2/tint2rc ~/dotfiles/.config/tint2/tint2rc

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull origin master
    git add .
    git commit -m "Update: $(timestamp)"
    git push
fi