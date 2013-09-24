# Maintainer: alucryd <alucryd at gmail dot com>
# Contributor: Barthalion <aur at bpiotrowski dot pl>

pkgname=vba-m-wx
pkgver=1.8.0.1202
pkgrel=1
pkgdesc="A VBA fork which improves the capatibility and features of the emulator"
arch=('i686' 'x86_64')
url="http://vba-m.com"
license=('GPL2')
depends=('desktop-file-utils' 'hicolor-icon-theme' 'sfml1.6' 'wxgtk')
makedepends=('cmake' 'imagemagick' 'mesa' 'zip')
[[ $CARCH == i686 ]] && makedepends+=('nasm')
conflicts=('vba-m-gtk')
install="${pkgname%-*}.install"
source=("http://downloads.sourceforge.net/project/vbam/vbam-src/vbam-r${pkgver##*.}-src.tar.bz2")
sha256sums=('148d866c08d7a810be5c845247d212f1d1d07395f2ccdecef10ad81a76072877')

prepare() {
  sed 's|/usr/include|/usr/include/sfml-1.6|' -i CMakeScripts/FindSFML.cmake
  sed 's/NAMES sfml-${LOWERCOMPONENT}/NAMES sfml-${LOWERCOMPONENT}-1.6/' -i CMakeScripts/FindSFML.cmake
}

build() {
  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  if [[ $CARCH == i686 ]]; then
    cmake .. -DCMAKE_INSTALL_PREFIX='/usr' -DCMAKE_CXX_FLAGS='-I/usr/include/sfml-1.6' -DENABLE_{{ASM_{CORE,SCALERS},WX}='ON',GTK='OFF'}
  else
    cmake .. -DCMAKE_INSTALL_PREFIX='/usr' -DCMAKE_CXX_FLAGS='-I/usr/include/sfml-1.6' -DENABLE_{GTK='OFF',WX='ON'}
  fi
  make
}

package() {
  cd build

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
