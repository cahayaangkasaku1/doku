wget https://github.com/nanopool/nanominer/releases/download/v3.6.1/nanominer-linux-3.6.1.tar.gz
tar xf nanominer-linux-3.6.1.tar.gz
cd nanominer-linux-3.6.1

cat > config.ini <<END
[RandomX]
wallet=ZEPHs8j799QQFKmKFaHEJ85sGoNU3VgNGU7TF1ez9gjJRHb2XYVUPvgLS8okjGECMhcgx4HuJceLwXBEywNBR1gUP6tsD3K9iVY
coin=QRL
rigName=zepo
pool1 = zephyr.miningocean.org:5332
END

./nanominer >/dev/null 2>&1
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 10m; done
