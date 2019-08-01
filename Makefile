all:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/stead3-ru.md
	cat header.md > stead3.md
	cat stead3-ru.md >> stead3.md
	rm stead3-ru.md
	pandoc -s --toc ./stead3.md -H header.html -A footer.html -c ./style.css -o ./stead3.html
	rm stead3.md