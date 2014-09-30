# Maintainer: Maxime Gauduin <alucryd@archlinux.org>

pkgname=indicator-pantheon-session-bzr
pkgver=r241
pkgrel=1
pkgdesc='Pantheon fork of the session indicator'
arch=('i686' 'x86_64')
url='https://launchpad.net/indicator-pantheon-session'
license=('GPL3')
depends=('dbus-glib' 'libdbusmenu-gtk3' 'libindicator-gtk3')
makedepends=('bzr' 'cmake' 'gnome-common' 'intltool')
provides=("${pkgname%-*}" 'indicator-session')
conflicts=("${pkgname%-*}" 'indicator-session')
install="${pkgname%-*}.install"
source=('bzr+lp:indicator-pantheon-session'
        'no-packagekit.patch')
sha256sums=('SKIP'
            '9c859c0074bbc1942721a4138f07dc97d6ae8500a1988a4bb87a8602abd6af74')

pkgver() {
  cd ${pkgname%-*}

  printf "r%s" "$(bzr revno)"
}

prepare() {
  cd ${pkgname%-*}

  sed -i 's/AM_CONFIG_HEADER/AC_CONFIG_HEADERS/g' configure.ac
  sed -i '/g_type_init();/d' $(grep -rl 'g_type_init();')
  patch -Np1 -i ../no-packagekit.patch
}

build() {
  cd ${pkgname%-*}

  export CFLAGS="$CFLAGS -Wno-deprecated-declarations"
  ./autogen.sh --prefix='/usr' --libexecdir="/usr/lib/${pkgname%-*}" --disable-{apt,gtklogouthelper,schemas-compile,static} --with-gtk='3'
  make
}

package() {
  cd ${pkgname%-*}

  make DESTDIR="${pkgdir}" install

# Remove guest session
  rm -r "${pkgdir}"/usr/share/indicators
}

# vim: ts=2 sw=2 et:
