#!/bin/bash -x
declare -A  Sounds
Sounds[dog]="Bark"
Sounds[cow]="moo"
Sounds[bird]="tweet"
Sounds[wolf]="howl"

echo "Dog Sound" ${!sounds[dog]} 
 
