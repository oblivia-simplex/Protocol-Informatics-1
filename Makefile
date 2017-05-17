all:
	python2 setup.py build
	find build -name align.so | xargs -I % cp % PI

install:
	python2 setup.py install

clean:
	find . -name "*.pyc" | xargs rm -f
	rm -f PI/align.c
	rm -rf build

