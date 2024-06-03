# Download the latest release
curl -s https://api.github.com/repos/nektos/act/releases/latest | grep "browser_download_url.*Linux_x86_64" | cut -d : -f 2,3 | tr -d \" | wget -qi -

# Extract and install
tar -xf act_Linux_x86_64.tar.gz
sudo mv act /usr/local/bin/

# Verify act installation
act --version