#!/usr/bin/python
import numpy

# Task 1.i)
# Generate a vector A with on column and 3 rows
A = numpy.array([1, 2, 3])

# Task 1.ii)

B = numpy.array([ [1, 2, 3], [4, 5, 6], [7, 8, 9] ])

# Zeige alle Zeilen (:) und Spalten 1 bis exklusiv 3 (1:3)
C = B[:,1:3] 

# Task 1.iii)
# Erstelle einen Normalvektor 3x1 (3, 1) und Multipliziere ihn mit 5
D = numpy.ones( (3,1) ) * 5

# Task 1.iv)
# Wir verwenden numpy.hstack um zwei Matrizen zu verketten
E = numpy.hstack( (B,D) )

# Task i.v)
# Ähnlich wie 1.iii benutzen wir numpy.zeros und den Dimensionsgrößen
F = numpy.zero( (2,3) )

