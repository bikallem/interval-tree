.PHONY: build clean edit install uninstall reinstall

build:
        dune build @install

clean:
        rm -rf _build

edit:
        emacs src/*.ml TODO commands.sh &

install: build
        dune install

uninstall:
        dune uninstall

reinstall: uninstall install
