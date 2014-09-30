# Maintainer: Maxime Gauduin <alucryd@archlinux.org>
# Contributor: Maintainer: Josip Ponjavic <josipponjavic@gmail.com>

pkgname=libgsignon-glib-git
pkgver=2.1.0.r341.c7e865e
pkgrel=1
pkgdesc='gSSO client library'
arch=('i686' 'x86_64')
url='https://01.org/gsso'
license=('LGPL2.1')
depends=('glib2' 'python')
makedepends=('git' 'gobject-introspection' 'gtk-doc')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
source=("${pkgname%-*}::git+https://code.google.com/p/accounts-sso.libgsignon-glib/")
sha256sums=('SKIP')

pkgver() {
  cd ${pkgname%-*}

  printf "2.1.0.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

build() {
  cd ${pkgname%-*}

  ./autogen.sh --prefix='/usr' --enable-{dbus-type='session',gtk-doc,introspection='yes'}
  make
}

package() {
  cd ${pkgname%-*}

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
