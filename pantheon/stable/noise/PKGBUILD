# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=noise
pkgver=0.2.4
pkgrel=1
pkgdesc="Simple, fast, and good looking music player"
arch=('i686' 'x86_64')
url="https://launchpad.net/noise"
license=('GPL3')
groups=('pantheon')
depends=('desktop-file-utils' 'granite' 'gstreamer0.10-base' 'libgpod' 'libnotify' 'libpeas' 'libsoup' 'sqlheavy' 'taglib')
makedepends=('cmake' 'vala')
install=${pkgname}.install
source=("https://launchpad.net/${pkgname}/${pkgver%.?}/${pkgver}/+download/${pkgname}-${pkgver}.tgz")
sha256sums=('ffcd5f2cba112af13707a7ba7f0ceace7b812d4b6082671684ff78d76fc1d8a9')

build() {
  cd ${pkgname}-${pkgver}

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DGSETTINGS_COMPILE=OFF
  make
}

package() {
  cd ${pkgname}-${pkgver}/build

  make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1 DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
