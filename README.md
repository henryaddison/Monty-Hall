Monty-Hall
==========

Monty Hall simulators implemented in different ways. It is a toy problem to simulate Monty Hall problem and determine the best strategy to be used to try out new techniques.

Top level directory refers to the language used. Inside these directories will be differing versions.

## Ruby

### 1
* The doors are modelled as integers and stored in arrays.
* Uses Array#sample to select random elements and keeps track of various choices to sample from the correct subsets.
* Fully automated, the only interaction possible is specifying is the number of trial which default to 100 but can be set using the first commandline argument (ARGV[0]).
* After running the specified number of trials, the program prints out the simple win percentages as a formatted string.
