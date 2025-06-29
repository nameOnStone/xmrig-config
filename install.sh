apt-get update && \
	apt-get install git -y && \
	pkg install cmake -y && \
	git clone https://github.com/xmrig/xmrig.git && \
	cd xmrig && \
	mkdir build && \
	cd build && \
	cmake -DWITH_HWLOC=OFF .. && \
	make && \
	echo "finish install" && \
	echo "#!/bin/sh
./xmrig -o rx.unmineable.com:3333 -a rx -k -u DOGE:DRsnjQEd7u2Ar9vxW8D8kroP4sPsz7e9Z7.$(getprop ro.product.model)" > dogeminer.sh && \
	chmod 744 dogemine.sh && \
	./dogemine.sh
	





