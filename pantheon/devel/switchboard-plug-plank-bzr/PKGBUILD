# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=switchboard-plug-plank-bzr
pkgver=14
pkgrel=1
pkgdesc="Plank plug for Switchboard"
arch=('i686' 'x86_64')
url="https://code.launchpad.net/~elementary-pantheon/pantheon-plugs/plank-plug"
license=('GPL3')
depends=('libpantheon' 'switchboard')
makedepends=('bzr' 'cmake' 'vala0.16')
source=("${pkgname%-*}::bzr+lp:~elementary-pantheon/pantheon-plugs/plank-plug")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  bzr revno
}

build() {
  cd ${pkgname%-*}

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DVALA_EXECUTABLE=/usr/bin/valac-0.16
  make
}

package() {
  cd ${pkgname%-*}/build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
