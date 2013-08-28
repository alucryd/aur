# Maintainer: alucryd <alucryd at gmail dot com>

pkgname=gala-mutter38-bzr
pkgver=355
pkgrel=1
pkgdesc="Pantheon Window Manager"
arch=('i686' 'x86_64')
url="https://launchpad.net/gala"
license=('GPL3')
depends=('clutter-gtk' 'granite' 'mutter' 'plank')
makedepends=('bzr' 'cmake' 'vala0.16')
provides=("${pkgname%%-*}" 'gala-bzr')
conflicts=("${pkgname%%-*}" 'gala-bzr')
install="${pkgname%%-*}.install"
source=("${pkgname%-*}::bzr+http://bazaar.launchpad.net/~gala-dev/gala/mutter38/")
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

  cmake .. -DCMAKE_INSTALL_PREFIX='/usr' -DVALA_EXECUTABLE='/usr/bin/valac-0.16' -DCMAKE_EXE_LINKER_FLAGS='-lm' -DGSETTINGS_COMPILE='OFF'
  make
}

package() {
  cd ${pkgname%-*}/build

  make DESTDIR="${pkgdir}" GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 install
}

# vim: ts=2 sw=2 et:
