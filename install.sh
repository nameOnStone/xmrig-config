apt-get update && \
	apt-get install git -y && \
	pkg install cmake -y && \
	git clone https://github.com/xmrig/xmrig.git && \
	cd xmrig && \
	mkdir build && \
	cd build && \
	cmake -DWITH_HWLOC=OFF .. && \
	make && \


