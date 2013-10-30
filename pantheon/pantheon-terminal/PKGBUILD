# Maintainer: alucryd <alucryd at gmail dot com>

pkgname=pantheon-terminal
pkgver=0.2.4.1
pkgrel=1
pkgdesc='A modern terminal from elementary project'
arch=('i686' 'x86_64')
url='https://launchpad.net/pantheon-terminal'
license=('GPL3')
depends=('granite' 'libnotify' 'vte3')
makedepends=('cmake' 'vala')
install="${pkgname}.install"
source=("https://launchpad.net/${pkgname}/0.x/${pkgver}/+download/${pkgname}-${pkgver}.tgz")
sha256sums=('0c03dc4023d3a78924d8b21658c62dd23ea0c93cd55af2f398686d28574dac04')

build() {
  cd ${pkgname}-${pkgver}

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  cmake .. -DCMAKE_INSTALL_PREFIX='/usr' -DGSETTINGS_COMPILE='OFF'
  make
}

package() {
  cd ${pkgname}-${pkgver}/build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
