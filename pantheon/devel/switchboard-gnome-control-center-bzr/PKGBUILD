# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=switchboard-gnome-control-center-bzr
pkgver=42
pkgrel=1
pkgdesc="Gnome Control Center plug for Switchboard"
arch=('i686' 'x86_64')
url="https://code.launchpad.net/~elementary-apps/pantheon-plugs/dynamic-gcc-plug"
license=(GPL)
depends=('gnome-desktop' 'libpantheon-bzr' 'switchboard')
makedepends=('bzr' 'cmake' 'vala')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
source=("${pkgname%-*}::bzr+lp:~elementary-apps/pantheon-plugs/dynamic-gcc-plug")
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

  cmake .. -DCMAKE_INSTALL_PREFIX=/usr
  make
}

package() {
  cd ${pkgname%-*}/build

  make DESTDIR="$pkgdir/" install
}

# vim: ts=2 sw=2 et:
