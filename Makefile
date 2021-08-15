
.PHONY: setup
setup:
	mkdir ./build
	git clone git@github.com:RoboticsBrno/RB3204-RBCX-library.git build/RB3204-RBCX-library/
	git clone git@github.com:RoboticsBrno/RB3204-RBCX.git build/RB3204-RBCX/

clean:
	rm -rf build

serve:
	mkdocs serve -a localhost:8080

serve-once:
	mkdocs serve -a localhost:8080 --no-livereload

debug:
	mkdocs serve -v -a localhost:8080

build:
	mkdocs build

gh-deploy:
	mkdocs gh-deploy --force

clean-api:
	rm -rf docs/api/*