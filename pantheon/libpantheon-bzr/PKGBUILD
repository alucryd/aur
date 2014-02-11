# Maintainer: Maxime Gauduin <alucryd@gmail.com>

pkgname=libpantheon-bzr
pkgver=r25
pkgrel=1
pkgdesc='Library for the Pantheon Desktop Environment'
arch=('i686' 'x86_64')
url='https://launchpad.net/libpantheon'
license=('GPL3')
depends=('gtk3')
makedepends=('bzr' 'cmake' 'gobject-introspection' 'vala')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
source=('bzr+lp:libpantheon')
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  printf "r%s" "$(bzr revno)"
}

build() {
  cd ${pkgname%-*}

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  cmake .. -DCMAKE_BUILD_TYPE='Release' -DCMAKE_INSTALL_PREFIX='/usr'
  make
}

package() {
  cd ${pkgname%-*}/build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
