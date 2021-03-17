
go-version = $(shell curl https://golang.org/VERSION?m=text)
go-file = $(shell echo $(go-version).linux-amd64.tar.gz)

date = $(shell date -I)
host = $(shell hostname)
backup-file = $(date)-$(host).tar.gz

install-packages:
	cat packages.txt | xargs sudo apt-get --yes --force-yes install 

clean-go:
	sudo rm -rf /usr/local/go
	rm -f go*.linux-amd64.tar.gz

install-go: clean-go
	echo download latest go $(go-file)
	wget "https://dl.google.com/go/$(go-file)"
	echo "extracting $(go-file)"
	sudo tar -C /usr/local -xzf ./$(go-file)
	go version
	echo "deleting $(go-file)"
	rm $(go-file)

install-fzf:
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install

install-emacs:
	rsync -a ./.config/systemd/ ~/.config/systemd
	systemctl --user enable emacs.service
	systemctl --user start emacs.service

echo:
	echo $(backup-file)

backup-tar:
	tar -cpzf $(backup-file) \
		--exclude=$(backup-file)\
		--exclude=.cache \
		--exclude=.debug \
		--exclude=.dbus \
		--exclude=.gvfs \
		--exclude=.local/share/gvfs-metadata \
		--exclude=.local/share/Trash \
		--exclude=.recently-used \
		--exclude=.thumbnails \
		--exclude=.xsession-errors \
		--exclude=.Trash \
		--exclude=backup \
		--exclude=Downloads \
		--exclude=Public \
		--exclude=Templates \
		--exclude="VirtualBox VMs" \
		--warning=no-file-changed ~/.
