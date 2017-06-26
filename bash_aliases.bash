#Load all alias files
for f in $(find $DOTFILES_DIR -type f -name *_aliases.bash); do
  source $f
done