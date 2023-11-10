shapes: shapes_m.o shapes.o
	gfortran -Wall -Wextra -Werror -pedantic shapes_m.o shapes.o -o shapes

shapes.o: shapes.f90 shapes_m.mod
	gfortran -Ibuild -Wall -Wextra -Werror -pedantic -c shapes.f90 -o shapes.o

shapes_m.o shapes_m.mod: shapes_m.f90
	gfortran -Jbuild -Wall -Wextra -Werror -pedantic -c shapes_m.f90 -o shapes_m.o

.PHONY: clean
clean:
	rm -f shapes shapes.o shapes_m.o shapes_m.mod

.PHONY: clean
run: shapes
	./shapes
