#!/bin/bash

# next(${array[@]}). for each function call returns the next element from input array
# inspired by the python .next() method

next() {

    [[ "${@}" ]] && numrun="" # if run with argument, start over

    [[ -z "${numrun}" ]] && { inputarray=("${@}"); numrun="0"; }

    for (( x = 0; x < ${#inputarray[@]}; x++ )); do
	    tempvar="${inputarray[${numrun}]}"
	    break
    done

    echo "${tempvar}"

    (( numrun += 1 ))

}; unset inputarray x tempvar numrun

animal_sounds=("meow" "woof" "moo" "squeek" "quack" "oink")
animals=("cat" "dog" "cow" "mouse" "duck" "pig")

next "${animal_sounds[@]}" # 1st element
next # 2nd element
next # 3rd element
next # 4th element
next "${animal_sounds[@]}" # start over
next # 2nd element
next # ...
next
next
next

next "${animals[@]}"
next
next
next
next "${animals[@]}"
next
next
next
next
next
