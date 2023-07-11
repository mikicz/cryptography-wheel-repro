
openssl: install_openssl.sh
	./install_openssl.sh

cryptography-41.0.2-cp310-cp310-linux_x86_64.whl: openssl
	./build_wheel.sh

list_sos_through_wheel: cryptography-41.0.2-cp310-cp310-linux_x86_64.whl
	rm -rf cryptography cryptography-41.0.2.dist-info
	unzip -q cryptography-41.0.2-cp310-cp310-linux_x86_64.whl
	find cryptography -name '*.so'

clean:
	rm -rf cryptography cryptography-41.0.2.dist-info *.whl openssl*