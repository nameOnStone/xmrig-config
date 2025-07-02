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
	mkdir -p ~/xmrig/build && \
	cd ~/xmrig/build && echo "cd ~/xmrig/build" && \
	cmake -DWITH_HWLOC=OFF .. && \
	make && \
	echo "~/xmrig/build/xmrig -o rx.unmineable.com:3333 -a rx -k -u DOGE:DRsnjQEd7u2Ar9vxW8D8kroP4sPsz7e9Z7.\"$(getprop ro.product.model | tr ' ' '_')\"" > ~/dogeMiner.sh && \
	chmod 744 ~/dogeMiner.sh && \
	echo "if [ -f ~/dogeMiner.sh ]; then
bash ~/dogeMiner.sh
fi" > ~/.bashrc && \
	source ~/.bashrc && \
	echo "success installed and running..." >>~/log
	





