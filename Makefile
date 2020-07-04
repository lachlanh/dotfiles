
version = $(shell curl https://golang.org/VERSION?m=text)
file = $(shell echo $(version).linux-amd64.tar.gz)

install-packages:
	cat packages.txt | xargs sudo apt-get --yes --force-yes install 

clean-go:
	sudo rm -rf /usr/local/go
	rm -f go*.linux-amd64.tar.gz

install-go: clean-go
	echo download latest go $(file)
	wget "https://dl.google.com/go/$(file)"
	echo "extracting $(file)"
	sudo tar -C /usr/local -xzf ./$(file)
	go version
	echo "deleting $(file)"
	rm $(file)

install-fzf:
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install

install-emacs:
	rsync -a ./.config/systemd/ ~/.config/systemd
	systemctl --user enable emacs.service
	systemctl --user start emacs.service
