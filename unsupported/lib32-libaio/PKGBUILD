# Maintainer: alucryd <alucryd at gmail dot com>
# Contributor : josephgbr <rafael.f.f1 at gmail.com>
# Contributor : angvp <angvp at archlinux.org>

pkgname=lib32-libaio
pkgver=0.3.109
pkgrel=5
pkgdesc="The Linux-native asynchronous I/O facility (aio) library"
arch=('x86_64')
url="http://lse.sourceforge.net/io/aio.html"
license=('LGPL')
depends=("${pkgname#*-}")
makedepends=('gcc-multilib')
options=('!staticlibs')
source=("http://ftp.de.debian.org/debian/pool/main/liba/${pkgname#*-}/${pkgname#*-}_${pkgver}.orig.tar.gz")
md5sums=('435a5b16ca6198eaf01155263d855756')

build() {
  cd ${pkgname#*-}-${pkgver}

  export CC='gcc -m32'
  make
}

package() {
  cd ${pkgname#*-}-${pkgver}

  make prefix="${pkgdir}/usr" libdir="${pkgdir}/usr/lib32" install
  rm -rf "${pkgdir}"/usr/include
}

# vim: ts=2 sw=2 et:
