echo "Unblocking wifi using rfkill..."
sudo rfkill unblock wifi
echo "Deleting wpa_supplicant process file if it exists"
sudo rm /var/run/wpa_supplicant 2>&1 > /dev/null
echo "Initializing wpa_supplicant..."
sudo wpa_supplicant -B -i wlp3s0 -D wext -c /etc/wpa_supplicant/rit.conf
echo "Running dhclient..."
sudo dhclient
