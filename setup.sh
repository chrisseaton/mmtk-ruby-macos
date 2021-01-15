set -Eeuo pipefail

sudo apt-get update
sudo apt-get install -y autoconf bison build-essential clang git libssl-dev ruby

git clone https://github.com/angussidney/ruby
cp /var/mmtk/libmmtk_ruby.so ruby
pushd ruby
autoconf
./configure --prefix=$PWD/build
make install
PATH=$PWD/build/bin:$PATH
popd

echo PATH=$PATH >> .bashrc
