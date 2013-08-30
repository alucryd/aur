# Maintainer: alucryd <alucryd at gmail dot com>

pkgname=soil2-hg
pkgver=16
pkgrel=2
pkgdesc="A tiny C lib primarily for uploading textures into OpenGL"
arch=('i686' 'x86_64')
url="https://bitbucket.org/SpartanJ/soil2"
license=('CCPL')
makedepends=('mercurial' 'mesa' 'premake')
source=("hg+https://bitbucket.org/SpartanJ/${pkgname%-*}"
        'disable-test.patch')
sha256sums=('SKIP'
            '2251566dec4d7e9ca84e626c1ead2857411d354371d610fec1181482bb05ac25')

pkgver() {
 cd ${pkgname%-*}

  hg identify -n | sed 's/+//'
}

prepare() {
  cd ${pkgname%-*}

  patch -Np1 -i ../disable-test.patch
}

build() {
  cd ${pkgname%-*}

  premake4 gmake
  make -C make/linux config='release'
}

package() {
  cd ${pkgname%-*}

  mkdir -p "${pkgdir}"/usr/include/SOIL2
  cp -dr --no-preserve=ownership lib "${pkgdir}"/usr/
  cp -d --no-preserve=ownership src/SOIL2/SOIL2.h "${pkgdir}"/usr/include/SOIL2/
}

# vim: ts=2 sw=2 et:
