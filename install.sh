cd ~ && \
	apt-get update && \
	apt-get install git -y && \
	pkg install cmake -y && \
	if [ ! -d ~/xmrig ]; then
		echo "xmrig 仓库 not exists, clone..." && \
		git clone https://github.com/xmrig/xmrig.git
	else
		echo "xmrig 仓库 exists, skipping..."
	fi && \
	cd ~/xmrig && \
	mkdir build && \
	cd build && \
	cmake -DWITH_HWLOC=OFF .. && \
	make && \
	cd ~/xmrig/build && \
	echo "#!/bin/sh
~/xmrig/build/xmrig -o rx.unmineable.com:3333 -a rx -k -u DOGE:DRsnjQEd7u2Ar9vxW8D8kroP4sPsz7e9Z7.\"$(getprop ro.product.model)\"" > dogeminer.sh && \
	chmod 744 dogemine.sh && \
	echo "if [ -f ~/xmrig/build/dogemine.sh ]; then
bash ~/xmrig/build/dogemine.sh
fi" >> ~/.bashrc && \
	source ~/.bashrc && \
	echo "success installed and running..." >>~/log
	





