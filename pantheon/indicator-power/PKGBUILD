# Maintainer: Maxime Gauduin <alucryd@archlinux.org>
# Contributor: Balló György <ballogyor+arch@gmail.com>

pkgname=indicator-power
pkgver=12.10.5
pkgrel=3
pkgdesc='An indicator to show the power status of your devices'
arch=('i686' 'x86_64')
url="https://launchpad.net/${pkgname}"
license=('GPL')
depends=('gnome-settings-daemon' 'libindicator-gtk3')
makedepends=('intltool')
install="${pkgname}.install"
source=("${url}/${pkgver%.*}/${pkgver}/+download/${pkgname}-${pkgver}.tar.gz"
        "http://pkgbuild.com/~bgyorgy/sources/${pkgname}-translations-20130310.tar.gz")
sha256sums=('2b724486a2336aed0c63feeeaa49028634e8b718cd8b24b057b44279d96fd146'
            '8c91a60a207fc9628b74908720276d11859fc7d8525e1d8fcd68e6a2ab1f03ab')

prepare() {
  cd ${pkgname}-${pkgver}

# Install updated language files
  rename ${pkgname}- '' ../po/${pkgname}-*.po
  mv -f -t po ../po/*
  printf "%s\n" po/*.po | sed -e 's/po\///g' -e 's/\.po//g' >po/LINGUAS
}

build() {
  cd ${pkgname}-${pkgver}

  export CFLAGS="$CFLAGS -Wno-deprecated-declarations"
  ./configure --prefix='/usr' --sysconfdir='/etc' --localstatedir='/var' --libexecdir="/usr/lib/${pkgname}" --disable-{schemas-compile,static}
  make
}

package() {
  cd ${pkgname}-${pkgver}

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
