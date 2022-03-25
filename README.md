# panorama-kth-demonstrator

Repository with necessary tools for reproducing the ITEA3 PANORAMA project KTH demonstrator.

## Make the system without a solution 

    java -jar conversyde.jar \
      -o input_system.forsyde.xmi \
      flight-information-system.amxmi \
      radar-system-easier.amxmi \
      utilizationBounds.forsyde.xmi

## Make the system with solutions 

    java -jar conversyde.jar \
      -o input_system.forsyde.xmi \
      flight-information-system.amxmi \
      radar-system-easier.amxmi \
      utilizationBounds.forsyde.xmi

## Solve the input system

    java -jar idesyde.jar \
     -o solved.forsyde.xmi \
     input_system.forsyde.xmi

## Convert the solution back to amalthea

    java -jar conversyde.jar \
      -o amalthea_solved.amxmi \
      solved.forsyde.xmi

