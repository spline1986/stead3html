all:
	wget https://raw.githubusercontent.com/instead-hub/instead/master/doc/stead3-ru.md
	cat metadata.md > stead3.md
	cat stead3-ru.md >> stead3.md
	rm stead3-ru.md
	pandoc -s --toc ./stead3.md -H style.html -B header.html -A footer.html -o ./stead3.html
	rm stead3.md