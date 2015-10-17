SAMPLE := helloworld
AB_N := 10000
AB_C := 100
PHP_ADDR := http://localhost:9091/
NODE_ADDR := http://localhost:9090/
.PHONY:RUN BUILD $(SAMPLE)
RUN:$(SAMPLE)
	echo $(SAMPLE)
	echo all benchmark finish
BUILD:
	rm -rf build
	mkdir build
$(SAMPLE):BUILD
	sed "s/SAMPLE/$@/g" phpstub.php > build/index.php
	sed "s/SAMPLE/$@/g" nodestub.js > build/index.js
	sudo service hhvm restart
	NODE_ENV=production forever start build/index.js
	ab -n $(AB_N) -c $(AB_C) $(PHP_ADDR) > build/ab_$@_php
	sudo service hhvm stop
	ab -n $(AB_N) -c $(AB_C) $(NODE_ADDR) > build/ab_$@_node
	forever stop build/index.js
