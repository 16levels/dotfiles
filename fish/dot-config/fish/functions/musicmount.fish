function musicmount --wraps='sudo mkdir /Volumes/multimedia && sudo mount -t nfs -o resvport elite:mnt/multimedia /Volumes/multimedia/' --description 'alias musicmount sudo mkdir /Volumes/multimedia && sudo mount -t nfs -o resvport elite:mnt/multimedia /Volumes/multimedia/'
  sudo mkdir /Volumes/multimedia && sudo mount -t nfs -o resvport elite:mnt/multimedia /Volumes/multimedia/ $argv
        
end
