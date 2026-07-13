# Personal Dotfiles

Personal configuration files for development environment.

## Contents

| File | Description |
|------|-------------|
| `.zshrc` | Zsh configuration with aliases, functions, plugins |
| `.vimrc` | Vim configuration with plugins |
| `.gitconfig` | Git configuration with aliases, delta diff |
| `.gitignore_global` | Global gitignore patterns |
| `.config/starship/starship.toml` | Starship prompt configuration |
| `.config/direnv/direnv.toml` | Direnv configuration |

## Installation

```bash
# Clone to home directory
git clone https://github.com/ngampus/dotfiles.git ~/dotfiles

# Symlink files
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.config/starship/starship.toml ~/.config/starship/starship.toml
ln -sf ~/dotfiles/.config/direnv/direnv.toml ~/.config/direnv/direnv.toml

# Install vim plugins
vim +PlugInstall +qall

# Install zsh plugins
zsh -c "source ~/.zshrc"
```

## Requirements

- zsh
- vim/neovim
- starship
- direnv
- fzf
- delta
- git

## Tools

- **Shell**: zsh with oh-my-zsh
- **Prompt**: starship
- **Editor**: vim with vim-plug
- **Git**: delta for diffs
- **Direnv**: auto-load .envrc
- **FZF**: fuzzy finder
