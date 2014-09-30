# Maintainer: Maxime Gauduin <alucryd@archlinux.org>
# Contributor: Balló György <ballogyor+arch@gmail@com>

pkgname=credentials-control-center-bzr
pkgver=177
pkgrel=1
pkgdesc='Control panel for configuring online account credentials and settings'
arch=('i686' 'x86_64')
url='https://launchpad.net/gnome-control-center-signon'
license=('GPL3' 'LGPL3')
depends=('gtk3' 'libaccounts-glib' 'libsignon-glib')
makedepends=('bzr' 'gnome-common' 'gobject-introspection' 'gtk-doc' 'intltool' 'itstool' 'vala' 'yelp-tools')
provides=('credentials-control-center')
conflicts=('credentials-control-center')
install="${pkgname%-*}.install"
source=("${pkgname%-*}::bzr+lp:gnome-control-center-signon")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  printf "%s" "$(bzr revno)"
}

prepare() {
  cd ${pkgname%-*}

#  sed -i 's/test/test -e/' online-accounts-preferences.in
}

build() {
  cd ${pkgname%-*}

  ./autogen.sh --prefix='/usr' --sysconfdir='/etc' --localstatedir='/var' \
               --libexecdir="/usr/lib/${pkgname%-*}" --disable-static \
               --without-unity-control-center
  make
}

package() {
  cd ${pkgname%-*}

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
