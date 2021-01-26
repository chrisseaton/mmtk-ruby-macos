set -Eeuo pipefail

sudo apt-get update
sudo apt-get install -y autoconf bison build-essential clang git libssl-dev ruby

git clone https://github.com/angussidney/ruby
cp /var/mmtk/libmmtk_ruby.so-release ruby/libmmtk_ruby.so
pushd ruby
autoconf
export LD_LIBRARY_PATH=$PWD
CFLAGS="-O0 -ggdb3 -DUSE_THIRD_PARTY_HEAP -DUSE_TRANSIENT_HEAP=0" ./configure --prefix=$PWD/build
RUST_BACKTRACE=true make install
PATH=$PWD/build/bin:$PATH
popd

echo PATH=$PATH >> .bashrc
