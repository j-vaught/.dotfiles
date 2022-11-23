.SILENT:
clean: 
	./bin/cleanup.sh
	echo "done cleaning..."
linux: clean
	./bin/linux.sh
	echo "Running linux.sh"

