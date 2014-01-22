ECE281_Lab1
===========

##Truth Table and Simulation Results

### Theoretical Truth Table

| A | B | C | X | Y | Z |
-------------------------
| 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 |
| 0 | 1 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 1 |

### Simulated Truth Table

| A | B | C | X | Y | Z |
-------------------------
| 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 0 | 1 | 1 | 0 |
| 0 | 1 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 0 | 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 1 |

The simulated results nicely match what I predicted in the truth table.
This would imply the boolean expressions generated from the K-maps 
worked as expected. One thing I might have done differently would be
to reduce the number of signals in my code. Specifcally I could've replaced
the A_NOT, B_NOT, and C_NOT signals with a simpl "not a;". I don't know
what the convention is though. 

##Schematic

Schematic: 
![alt text]( lab_1_schematic.JPG "A pretty little diagram")

##Simulation Screenshot
![alt text]( testbench.JPG "testbench results")
