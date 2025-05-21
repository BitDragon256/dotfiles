echo Warning, be fast with typing in the password, you have 5 seconds after the prompt :D
sudo tor &
sleep 5 && vivaldi --proxy-server="socks5://127.0.0.1:9050" && sudo killall tor
