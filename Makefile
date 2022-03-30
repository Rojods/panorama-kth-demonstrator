
amalthea: solved-via-forsyde.amxmi
	java -jar conversyde.jar \
	  -o amalthea_solved.amxmi \
	  solved.forsyde.xmi

demanding: input_system.forsyde.xmi

dse: solved.forsyde.xmi

very-demanding: flight-information-system.amxmi radar-system-easier.amxmi utilizationBounds.forsyde.xmi    
	java -jar conversyde.jar \
	  -o input_system.forsyde.xmi \
	  flight-information-system.amxmi \
	  radar-system-easier.amxmi \
	  utilizationBounds.forsyde.xmi

solved.forsyde.xmi: input_system.forsyde.xmi
	java -jar idesyde.jar -o solved.forsyde.xmi input_system.forsyde.xmi

input_system.forsyde.xmi: flight-information-system.amxmi radar-system-easier.amxmi utilizationBounds.forsyde.xmi    
	java -jar conversyde.jar \
	  -o input_system.forsyde.xmi \
	  flight-information-system-easier.amxmi \
	  radar-system-easier.amxmi \
	  utilizationBounds.forsyde.xmi