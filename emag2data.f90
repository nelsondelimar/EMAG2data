PROGRAM SELECT_EMAG2_DATA
IMPLICIT NONE
REAL(4), ALLOCATABLE:: IN_DATA(:,:), OUT_DATA(:,:)
REAL(4) LONGMIN, LONGMAX, LATMIN, LATMAX
INTEGER NROWS, NCOLS, UNIT1, UNIT2, I, J, alloc_error
CHARACTER(50) INPUT, OUTPUT

NROWS = 1922801
NCOLS = 3
!WRITE(*,*) "Select minimum and maximun values of longitude and latitude between (-180, 180) and (-90, 90), respectively!"

!READ(*,*) LONGMIN, LONGMAX, LATMIN, LATMAX
LONGMIN = -45.
LONGMAX = -40.
LATMIN = -4.5
LATMAX = -1.

! Allocates matrix and vectors    
ALLOCATE(IN_DATA(nrows,ncols), STAT = alloc_error)
ALLOCATE(OUT_DATA(nrows,ncols), STAT = alloc_error)
  
! Open file
UNIT1 = 11
INPUT = "sotuhamerica_mag.txt"
OPEN (UNIT = UNIT1, FILE = INPUT)
	
! Read file and allocate it
DO I = 1, NROWS
	READ(UNIT1, *) (IN_DATA(I,J), J = 1, NCOLS)
END DO
 	CLOSE (UNIT=UNIT1)
	
DO I = 1, NROWS
	DO J = 1, NCOLS
	OUT_DATA(I,J) = IN_DATA(I,J)
	END DO
END DO
	
UNIT2 = 22
OUTPUT = "out.txt"
OPEN (UNIT = UNIT2, FILE = OUTPUT)

DO I = 1, NROWS
	IF(LONGMAX>=OUT_DATA(I,1).AND.LONGMIN<=OUT_DATA(I,1)) THEN
	IF(LATMAX>=OUT_DATA(I,2).AND.LATMIN<=OUT_DATA(I,2)) THEN
        	!WRITE(UNIT2, 1) [(OUT_DATA(I,J),J=1,NCOLS)]
!1 FORMAT (*(F0.5,','))
        	WRITE(UNIT2, *) (OUT_DATA(I,J), J = 1, NCOLS)

	END IF
	END IF
END DO

           
DEALLOCATE(IN_DATA,STAT = alloc_error)
DEALLOCATE(OUT_DATA,STAT = alloc_error)
	
STOP
END PROGRAM SELECT_EMAG2_DATA
