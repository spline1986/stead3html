all:
	${MAKE} clean
	${MAKE} stead3
	${MAKE} modules
	${MAKE} metaparser

dark:
	${MAKE} clean
	${MAKE} stead3-dark
	${MAKE} modules-dark
	${MAKE} metaparser-dark

gurochan:
	${MAKE} clean
	${MAKE} stead3-gurochan
	${MAKE} modules-gurochan
	${MAKE} metaparser-gurochan

stead3:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/stead3-ru.md
	cat stead3-metadata.md > stead3.md
	cat stead3-ru.md >> stead3.md
	rm stead3-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./stead3.md -H style.html -B header.html -A footer.html -o ./stead3.html
	rm stead3.md

modules:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/modules3-ru.md
	cat modules-metadata.md > modules.md
	cat modules3-ru.md >> modules.md
	rm modules3-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./modules.md -H style.html -B header.html -A footer.html -o ./modules.html
	rm modules.md

metaparser:
	wget https://raw.githubusercontent.com/instead-hub/metaparser/master/doc/manual-ru.md
	cat metaparser-metadata.md > metaparser.md
	cat manual-ru.md >> metaparser.md
	rm manual-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./metaparser.md --highlight-style pygments -H style.html -B header.html -A footer.html -o ./metaparser.html
	rm metaparser.md

stead3-dark:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/stead3-ru.md
	cat stead3-metadata.md > stead3.md
	cat stead3-ru.md >> stead3.md
	rm stead3-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./stead3.md -H style_dark.html -B header.html -A footer.html -o ./stead3.html
	rm stead3.md

modules-dark:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/modules3-ru.md
	cat modules-metadata.md > modules.md
	cat modules3-ru.md >> modules.md
	rm modules3-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./modules.md -H style_dark.html -B header.html -A footer.html -o ./modules.html
	rm modules.md

metaparser-dark:
	wget https://raw.githubusercontent.com/instead-hub/metaparser/master/doc/manual-ru.md
	cat metaparser-metadata.md > metaparser.md
	cat manual-ru.md >> metaparser.md
	rm manual-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./metaparser.md --highlight-style pygments -H style_dark.html -B header.html -A footer.html -o ./metaparser.html
	rm metaparser.md

stead3-gurochan:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/stead3-ru.md
	cat stead3-metadata.md > stead3.md
	cat stead3-ru.md >> stead3.md
	rm stead3-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./stead3.md -H style_gurochan.html -B header.html -A footer.html -o ./stead3.html
	rm stead3.md

modules-gurochan:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/modules3-ru.md
	cat modules-metadata.md > modules.md
	cat modules3-ru.md >> modules.md
	rm modules3-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./modules.md -H style_gurochan.html -B header.html -A footer.html -o ./modules.html
	rm modules.md

metaparser-gurochan:
	wget https://raw.githubusercontent.com/instead-hub/metaparser/master/doc/manual-ru.md
	cat metaparser-metadata.md > metaparser.md
	cat manual-ru.md >> metaparser.md
	rm manual-ru.md
	pandoc -f markdown-raw_tex -css style.css -s --toc ./metaparser.md --highlight-style pygments -H style_gurochan.html -B header.html -A footer.html -o ./metaparser.html
	rm metaparser.md

clean:
	rm -f stead3.html
	rm -f modules.html
	rm -f metaparser.html