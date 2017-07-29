#!/bin/bash

# prev(${array[@]}). for each function call returns the previous element from input array
# inspired by the python .next() method but reverses the results

prev() {

    [[ "${@}" ]] && numrun="" # if run with argument, start over

    [[ -z "${numrun}" ]] && { inputarray=("${@}"); numrun="-1"; }

    for (( ${#inputarray[@]}; ${#inputarray[@]} > 0; x-- )); do
	    tempvar="${inputarray[${numrun}]}"
	    break
    done

    echo "${tempvar}"

    (( numrun -= 1 ))

}; unset inputarray x tempvar numrun

animal_sounds=("meow" "woof" "moo" "squeek" "quack" "oink")
animals=("cat" "dog" "cow" "mouse" "duck" "pig")

prev "${animal_sounds[@]}" # last element
prev # last -1
prev # last -2
prev # last -3
prev "${animal_sounds[@]}" # start over
prev # last -1
prev # ...
prev
prev
prev

prev "${animals[@]}"
prev
prev
prev
prev "${animals[@]}"
prev
prev
prev
prev
prev
