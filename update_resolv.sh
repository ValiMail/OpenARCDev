echo "Adding local DNS resolver"
echo 'nameserver 127.0.0.1' | sudo tee /etc/resolv.conf
