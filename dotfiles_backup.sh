# create a timestamp alias for the commit message
timestamp() {
  date +"%d-%m-%Y @ %T"
}

# files to backup
cp ~/.zshrc ~/dotfiles/.zshrc
cp ~/.fehbg ~/dotfiles/.fehbg
cp -R ~/.config/openbox ~/dotfiles/.config/openbox
cp -R ~/.config/kitty ~/dotfiles/.config/kitty
cp -R ~/.config/dunst/dunstrc ~/dotfiles/.config/dunst/dunstrc
cp -R ~/.config/obmenu-generator ~/dotfiles/.config/obmenu-generator
cp -R ~/.config/picom/picom.conf ~/dotfiles/.config/picom/picom.conf
cp -R ~/.config/rofi ~/dotfiles/.config/rofi
cp -R ~/.config/tint2/tint2rc ~/dotfiles/.config/tint2/tint2rc

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull origin master
    git add .
    git commit -m "Update: $(timestamp)"
    git push
fi