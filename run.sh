ENERGIES=$(seq 1 0.5 15) 

for En in $ENERGIES; do
	cp run.mac run_tmp.mac
	sed -i "s/1.0\ MeV/$En\ MeV/g" run_tmp.mac 
	cat run_tmp.mac
	./myApp run_tmp.mac
	mv myOutput.root myOutput_$En.root
done
