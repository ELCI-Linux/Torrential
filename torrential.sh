#! /bin/bash

	rain=$(yad --list --checklist \
	--title="$helper $versnum" \
	--text="Select the torrent client(s) you would like to install" \
	--height=600 --width=600 \
	--column="Selected" --column="Clients" \
	""			"BiglyBT" \
	""			"BitTorrent (Rust)" \
	""			"Deluge" \
	""			"Fragments" \
	""			"Gabut" \
	""			"KTorrent" \
	""			"Lava Torrent (Rust)" \
	""			"Motrix" \
	""			"QBitTorrent" \
	""			"Transmission" \
	""			"Transmission-Remote" \
	""			"Transmission-RPC (Rust)" \
	""			"Tremotesf" \
	""			"Trible" \
	""			"Web Torrent" \
	""			"Xerus (Rust)")



#############################################################################################
	# cargo - rust programs

	AQUATIC=$(echo $rain | grep -c "Aquatic")
	if [ $AQUATIC -gt "0" ]; then
	cargo install aquatic
	fi

	BIT_TORRENT=$(echo $rain | grep -c "BitTorrent")
	if [ $BIT_TORRENT -gt "0" ]; then
	zenity --notification --text="Coming soon"

	LAVA_TORRENT=$(echo $rain | grep -c "Lava Torrent")

	TRANSMISSION_RPC=$(echo $rain | grep -c "Transmission-RPC")

	XERUS=$(echo $rain | grep -c "Xerus")
####################################################################################################################################

	#flatpaks

	BIGLY_BT=$(echo $rain | grep -c "BiglyBT")
	if [ $BIGLY_BT -gt "0" ]; then
	flatpak install -y --system flathub com.biglybt.BiglyBTt && \
	zenity --notification --text="BiglyBT installed" || \
	zenity --notification --text="Flatpak failed to install BiglyBT"
	fi

	DELUGE=$(echo $rain | grep -c "Deluge")
	if [ $DELUGE -gt "0" ]; then
	flatpak install -y --system flathub org.deluge_torrent.deluget && \
	zenity --notification --text="Deluge installed" || \
	zenity --notification --text="Flatpak failed to install Deluge"
	fi

	FRAGMENTS=$(echo $rain | grep -c "Fragments")
	if [ $FRAGMENTS -gt "0" ]; then
	flatpak install -y --system flathub de.haeckerfelix.Fragmentst && \
	zenity --notification --text="Fragments installed" || \
	zenity --notification --text="Flatpak failed to install Fragments"
	fi

	GABUT=$(echo $rain | grep -c "Gabut")
	if [ $GABUT -gt "0" ]; then
	flatpak install -y --system flathub com.github.gabutakut.gabutdmt && \
	zenity --notification --text="Gabut installed" || \
	zenity --notification --text="Flatpak failed to install Gabut"
	fi

	KTORRENT=$(echo $rain | grep -c "KTorrent")
	if [ $KTORRENT -gt "0" ]; then
	flatpak install -y --system flathub org.kde.ktorrentt && \
	zenity --notification --text="KTorrent installed" || \
	zenity --notification --text="Flatpak failed to install KTorrent"
	fi

	MOTRIX=$(echo $rain | grep -c "Motrix")
	if [ $MOTRIX -gt "0" ]; then
	flatpak install -y --system flathub net.agalwood.Motrixt && \
	zenity --notification --text="Motrix installed" || \
	zenity --notification --text="Flatpak failed to install Motrix"
	fi

	QBITTORRENT=$(echo $rain | grep -c "QbitTorrent")
	if [ $QBITTORRENT -gt "0" ]; then
	flatpak install -y --system flathub org.qbittorrent.qBittorrentt && \
	zenity --notification --text="QbitTorrent installed" || \
	zenity --notification --text="Flatpak failed to install QBitTorrent"
	fi

	TRANSMISSION=$(echo $rain | grep -c "Transmission")
	if [ $TRANSMISSION -gt "0" ]; then
	flatpak install -y --system flathub com.transmissionbt.Transmissiont && \
	zenity --notification --text="Transmission installed" || \
	zenity --notification --text="Flatpak failed to install Transmission"
	fi

	TRANSMISSION_REMOTE=$(echo $rain | grep -c "Transmission-Remote")
	if [ $TRANSMISSION_REMOTE -gt "0" ]; then
	flatpak install -y --system flathub io.github.TransmissionRemoteGtkt && \
	zenity --notification --text="WebTorrent Transmission-Remote" || \
	zenity --notification --text="Flatpak failed to install Transmission-Remiote"
	fi

	TREMOTES=$(echo $rain | grep -c "Tremotesf")
	if [ $TREMOTES -gt "0" ]; then
	flatpak install -y --system flathub org.equeim.Tremotesft && \
	zenity --notification --text="Tremotes installed" || \
	zenity --notification --text="Flatpak failed to install Tremotes"
	fi

	TRIBLE=$(echo $rain | grep -c "Trible")
	if [ $TRIBLE -gt "0" ]; then
	flatpak install -y --system flathub org.tribler.Triblert && \
	zenity --notification --text="Tribler installed" || \
	zenity --notification --text="Flatpak failed to install Tribler"
	fi

	WEB_TORRENT=$(echo $rain | grep -c "Web Torrent")
	if [ $WEB_TORRENT -gt "0" ]; then
	flatpak install -y --system flathub io.webtorrent.WebTorrent && \
	zenity --notification --text="WebTorrent installed" || \
	zenity --notification --text="Flatpak failed to install WebTorrent"
	fi
