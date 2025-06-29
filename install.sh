apt-get update && \
	apt-get install git -y && \
	pkg install cmake -y && \
	git clone https://github.com/xmrig/xmrig.git && \
	cd xmrig && \
	mkdir build && \
	cd build && \
	cmake -DWITH_HWLOC=OFF .. && \
	make && \
	ln -s xmrig .. && \
	echo "finish install" && \
	echo "#!/bin/sh
./xmrig -o  stratum+tcp://scrypt.na.mine.zergpool.com:3433 -u DOGE:DRzF9YT57Ep6Bjc6ziUbwayWRGWbamtTSE.dogeminer" > dogemine.sh && \
	chmod 744 dogemine.sh && \
	./dogemine.sh
	





