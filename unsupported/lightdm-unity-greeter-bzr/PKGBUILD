# Maintainer: Alucryd <alucryd at gmail dot com>
# Contributor: Morfeo <morfeo89 at hotmail dot it>

pkgname=lightdm-unity-greeter-bzr
pkgver=807
pkgrel=1
pkgdesc="The greeter (login screen) application for Unity. It is implemented as a LightDM greeter."
arch=('i686' 'x86_64')
url="https://launchpad.net/unity-greeter"
license=('GPL3' 'LGPL3')
depends=('libindicator3' 'lightdm')
makedepends=('bzr' 'gnome-common' 'gnome-doc-utils' 'vala>=0.15')
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
options=('!libtool')
backup=('etc/lightdm/unity-greeter.conf')
install=${pkgname%-*}.install
source=("${pkgname%-*}::bzr+http://bazaar.launchpad.net/~unity-greeter-team/unity-greeter/trunk/"
        'unity-greeter.conf')
sha256sums=('SKIP'
            'ad55d4050a2e782dacf9166f029fd402fce393effa81e6a8aa5369763a0343c9')

pkgver() {
  cd "${srcdir}"/${pkgname%-*}

  bzr revno
}

prepare() {
  cd "${srcdir}"/${pkgname%-*}

  sed -i 's|AM_CONFIG_HEADER|AC_CONFIG_HEADERS|' configure.ac
}

build() {
  cd "${srcdir}"/${pkgname%-*}

  ./autogen.sh --prefix=/usr --sysconfdir=/etc --libexecdir=/usr/lib/lightdm --disable-schemas-compile
  make
}

package() {
  cd "${srcdir}"/${pkgname%-*}

  make DESTDIR="${pkgdir}" install
  install -dm 755 "${pkgdir}"/etc/lightdm/
  install -m 644 ../unity-greeter.conf "${pkgdir}"/etc/lightdm/unity-greeter.conf
}

# vim: ts=2 sw=2 et:
