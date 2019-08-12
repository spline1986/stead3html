all:
	${MAKE} clean
	${MAKE} stead3
	${MAKE} metaparser

dark:
	${MAKE} clean
	${MAKE} stead3-dark
	${MAKE} metaparser-dark

stead3:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/stead3-ru.md
	cat stead3-metadata.md > stead3.md
	cat stead3-ru.md >> stead3.md
	rm stead3-ru.md
	pandoc -s --toc ./stead3.md -H style.html -B header.html -A footer.html -o ./stead3.html
	rm stead3.md

metaparser:
	wget https://raw.githubusercontent.com/instead-hub/metaparser/master/doc/manual-ru.md
	cat metaparser-metadata.md > metaparser.md
	cat manual-ru.md >> metaparser.md
	rm manual-ru.md
	pandoc -s --toc ./metaparser.md --highlight-style pygments -H style.html -B header.html -A footer.html -o ./metaparser.html
	rm metaparser.md

stead3-dark:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/stead3-ru.md
	cat stead3-metadata.md > stead3.md
	cat stead3-ru.md >> stead3.md
	rm stead3-ru.md
	pandoc -s --toc ./stead3.md -H style_dark.html -B header.html -A footer.html -o ./stead3.html
	rm stead3.md

metaparser-dark:
	wget https://raw.githubusercontent.com/instead-hub/metaparser/master/doc/manual-ru.md
	cat metaparser-metadata.md > metaparser.md
	cat manual-ru.md >> metaparser.md
	rm manual-ru.md
	pandoc -s --toc ./metaparser.md --highlight-style pygments -H style_dark.html -B header.html -A footer.html -o ./metaparser.html
	rm metaparser.md

clean:
	rm -f stead3.html
	rm -f metaparser.html