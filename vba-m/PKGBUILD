# Maintainer: Alucryd <alucryd at gmail dot com>
# Contributor: Barthalion <aur at bpiotrowski dot pl>

pkgname=vba-m
pkgver=1.8.0.1159
pkgrel=2
pkgdesc="A VBA fork which improves the capatibility and features of the emulator"
arch=('i686' 'x86_64')
url="http://vba-m.com"
license=('GPL')
depends=('desktop-file-utils' 'gtkglextmm' 'hicolor-icon-theme' 'sdl' 'sfml1.6')
makedepends=('cmake' 'nasm')
install='vba-m.install'
source=("http://downloads.sourceforge.net/project/vbam/vbam-src/vbam-r1159-src.tar.bz2")
sha256sums=('0c5d53b42eb837af963226dad6d175c355991a2bd809a11dcf7d2c832e89fb52')

build() {
  cd "${srcdir}"

# Fix SFML
  sed -i 's|/usr/include|/usr/include/sfml1.6|' CMakeScripts/FindSFML.cmake
  sed -i 's|NAMES sfml-|NAMES sfml1.6-|' CMakeScripts/FindSFML.cmake

  cmake . -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_CXX_FLAGS=" -I/usr/include/sfml1.6"
  make
}

package() {
  cd "${srcdir}"
  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
