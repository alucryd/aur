# Maintainer: Maxime Gauduin <alucryd@archlinux.org>
# Contributor: Maximilian Stein <maxarchpkgbuild@hmamail.com>
# Contributor: josephgbr <rafael.f.f1@gmail.com>
# Contributor: Taylor Lookabaugh <jesus.christ.i.love@gmail.com>

pkgname=lib32-libnl
pkgver=3.2.25
pkgrel=1
pkgdesc='Library for applications dealing with netlink sockets'
arch=('x86_64')
url='http://www.infradead.org/~tgr/libnl/'
license=('GPL')
depends=('lib32-glibc' 'libnl')
makedepends=('gcc-multilib')
source=("http://www.infradead.org/~tgr/libnl/files/libnl-${pkgver}.tar.gz")
sha256sums=('8beb7590674957b931de6b7f81c530b85dc7c1ad8fbda015398bc1e8d1ce8ec5')

build() {
  cd libnl-${pkgver}

  export CC='gcc -m32'
  export CXX='g++ -m32'
  export PKG_CONFIG_PATH='/usr/lib32/pkgconfig'

  ./configure \
    --prefix='/usr' \
    --libdir='/usr/lib32' \
    --sbindir='/usr/bin' \
    --sysconfdir='/etc' \
    --disable-static
  make
}

package() {
  cd libnl-${pkgver}

  make DESTDIR="${pkgdir}" install
  rm -rf "${pkgdir}"/{etc,usr/{bin,include,share}}
}

# vim: ts=2 sw=2 et:
