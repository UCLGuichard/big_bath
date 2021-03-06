!------------------------------------------------------------------------------
! big_bath main code
!------------------------------------------------------------------------------
!
! MAIN: big_bath
!
!> @author
!> Dr. Roland Guichard University College London
!
! DESCRIPTION: 
!> This part of the big_bath code is the main. 
!
! REVISION HISTORY:
! 09-03-2015 - Initial Version
! TODO_09-03-2015 - Complete main - TODO_main
! TODO_09-03-2015 - Deallocate arrays - TODO_main
!------------------------------------------------------------------------------

program big_bath
  use types
  use constants
  use read
  use generate
  use write
  use interactions
  implicit none

!> Read the system basis from input

  call read_input

!> Generate the crystal

  call generate_crystal

!> Output the crystal coordinates
  
  call crystal_outputs

!> Evaluate impurities

  call generate_impurities

!> Output the impurities coordinates

  call impurities_outputs

!> Evaluate couplings

  call couplings

!> Output the coupling values
  
  call couplings_outputs

!> Select pairs for nuclear problem

  call select_nuc
 
end program big_bath
