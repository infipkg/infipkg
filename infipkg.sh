if [[ $EUID -ne 0 ]]; then
   echo "Error: infipkg must be ran as root" 
   exit 1
fi

if command -v nodejs >/dev/null 2>&1 ; then
    if [ "$1" == "install" ]; then
        git clone https://github.com/infipkg/infipkg$2.git
        bash infipkg-$2/install.sh
        rm -rf infipkg-$2
    fi
else
    echo "Error: git not found... git is a dependency of infipkg"
    exit 1
fi
