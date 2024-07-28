#!/bin/sh

PH3NAC_NVIM=~/.config/pim
export PH3NAC_NVIM

rm -rf $PH3NAC_NVIM

mkdir -p $PH3NAC_NVIM
current_dir($pwd)
export current_dir
ln -s $current_dir $PH3NAC_NVIM/nvim

# add alias to ~/.zshrc
alias pim='XDG_DATA_HOME=$PH3NAC_NVIM/share XDG_CONFIG_HOME=$PH3NAC_NVIM nvim'

export pim
