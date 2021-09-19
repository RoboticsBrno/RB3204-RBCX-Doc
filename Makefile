
.PHONY: setup
setup: clean
	mkdir ./build
	git clone https://github.com/RoboticsBrno/RB3204-RBCX-library.git build/RB3204-RBCX-library/
	git clone https://github.com/RoboticsBrno/RB3204-RBCX.git build/RB3204-RBCX/

clean:
	rm -rf build

serve:
	mkdocs serve -a localhost:8080

serve-once:
	mkdocs serve -a localhost:8080 --no-livereload

debug:
	mkdocs serve -v -a localhost:8080

build-site:
	mkdocs build

serve-static: build
	python3 -m http.server --directory site

gh-deploy:
	mkdocs gh-deploy --force