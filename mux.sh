#!/bin/bash
# coded by: HACKERSPUNK

echo -e "\u001b[34m                ADDING KEYS IN YOUR TERMUX\u001b[34m"
sleep 3.0
echo " "
echo -e "\u001b[31mDo you wish to install these extra keys?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) mkdir $HOME/.termux/ ;echo "extra-keys = [['F1','F2','F3','F4','F5','F6','F7'],['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $HOME/.termux/termux.properties && termux-reload-settings && exit; break;;
        No ) exit;;
    esac
done
echo " "
echo -e "THE KEYS MIGHT BE LOOKING BIT WEIRD"
echo -e "SO,TRY TO EXIT AND REOPEN TERMUX"
exit
