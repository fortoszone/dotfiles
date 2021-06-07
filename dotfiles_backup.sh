# create a timestamp alias for the commit message
timestamp() {
  date +"%d-%m-%Y @ %T"
}

# files to backup
cp ~/.zshrc ~/dotfiles/.zshrc
cp ~/.fehbg ~/dotfiles/.fehbg
cp -R ~/.config/openbox ~/dotfiles/.config
cp -R ~/.config/kitty ~/dotfiles/.config
cp -R ~/.config/dunst/dunstrc ~/dotfiles/.config/dunst/dunstrc
cp -R ~/.config/obmenu-generator ~/dotfiles/.config
cp -R ~/.config/picom/picom.conf ~/dotfiles/.config/picom/picom.conf
cp -R ~/.config/rofi ~/dotfiles/.config/rofi
cp -R ~/.config/tint2/tint2rc ~/dotfiles/.config/tint2/tint2rc
cp -R ~/.config/Google/AndroidStudio4.2 ~/dotfiles/AndroidStudio4.2

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull origin master
    git add .
    git commit -m "update: $(timestamp)"
    git push
fi