folder=eduke32y
echo $folder

# check upto date
sudo apt-get update

# install pre-requisites
sudo apt-get install -y build-essential nasm libgl1-mesa-dev libglu1-mesa-dev libsdl1.2-dev libsdl-mixer1.2-dev libsdl2-dev libsdl2-mixer-dev flac libflac-dev libvorbis-dev libvpx-dev libgtk2.0-dev freepats

# create folder
mkdir -p ~/$folder
cd ~/$folder

# download source
wget http://dukeworld.duke4.net/eduke32/synthesis/latest/20171016-6488/eduke32_src_20171016-6488.tar.xz -O eduke32_src_20171016-6488.tar.xz
# unzip
tar -xvf eduke32_src_20171016-6488.tar.xz -C ~/$folder --strip-components=1
# build
make

# get demo data
wget http://hendricks266.duke4.net/files/3dduke13_data.7z -O 3dduke13_data.7z
# install p7zip
sudo apt-get install p7zip
# unzip
p7zip -d 3dduke13_data.7z




