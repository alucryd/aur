# Maintainer: Yosef Or Boczko <yoseforb@gmail.com>

pkgname=polari-devel
pkgver=3.13.1
pkgrel=1
pkgdesc='An IRC Client for GNOME'
arch=('i686' 'x86_64')
url='https://wiki.gnome.org/Apps/Polari'
license=('GPL2')
groups=('gnome')
depends=('gjs' 'gnome-icon-theme-symbolic' 'gtk3' 'telepathy-idle')
makedepends=('git' 'gobject-introspection' 'gnome-common' 'intltool')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
options=('!libtool')
install="${pkgname%-*}.install"
source=("http://ftp.gnome.org/pub/GNOME/sources/${pkgname%-*}/${pkgver%.*}/${pkgname%-*}-${pkgver}.tar.xz")
sha256sums=('b84cd69fbdc7991f4aa5c6008bde009008b045002cb77e8393380f7a51dd4a74')

build() {
  cd ${pkgname%-*}-${pkgver}

  ./configure --prefix='/usr' --disable-schemas-compile
  make
}

package() {
  cd ${pkgname%-*}-${pkgver}

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
