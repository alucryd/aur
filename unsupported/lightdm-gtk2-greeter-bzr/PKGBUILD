# Maintainer: Alucryd  <alucryd at gmail dot com>

pkgname=lightdm-gtk2-greeter-bzr
pkgver=r222
pkgrel=1
pkgdesc='GTK+ greeter for LightDM'
arch=('i686' 'x86_64')
url='https://launchpad.net/lightdm-gtk-greeter'
license=('GPL3' 'LGPL3')
depends=('gtk2' 'lightdm')
makedepends=('bzr' 'exo' 'gnome-common' 'gnome-doc-utils' 'gobject-introspection' 'intltool')
provides=('lightdm-gtk-greeter')
conflicts=('lightdm-gtk-greeter')
backup=('etc/lightdm/lightdm-gtk-greeter.conf')
install='lightdm-gtk-greeter.install'
source=('bzr+lp:lightdm-gtk-greeter')
sha256sums=('SKIP')

pkgver() {
  cd lightdm-gtk-greeter

  printf "r%s" "$(bzr revno)"
}

build() {
  cd lightdm-gtk-greeter

  ./autogen.sh --prefix='/usr' --sbindir='/usr/bin' --sysconfdir='/etc' --libexecdir='/usr/lib/lightdm' --disable-static --with-gtk2
  make
}

package() {
  cd lightdm-gtk-greeter

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
