# Maintainer: alucryd <alucryd at gmail dot com>

pkgname=vala0.16
pkgver=0.16.1
pkgrel=4
pkgdesc="Compiler for the GObject type system - 0.16 version"
arch=('i686' 'x86_64')
url="http://live.gnome.org/Vala"
license=('LGPL')
depends=('bash' 'glib2')
makedepends=('libxslt')
provides=("vala=${pkgver}")
options=('!libtool')
source=("http://download.gnome.org/sources/${pkgname%0.16}/0.16/${pkgname%0.16}-${pkgver}.tar.xz")
sha256sums=('8be28ff6347feecb391220ceb4e2209d32b697278e87ed7fc6c9fb1e9345e0d8')

build() {
  cd ${pkgname%0.16}-${pkgver}

  ./configure --prefix='/usr' --enable-vapigen
  make
}

package() {
  cd ${pkgname%0.16}-${pkgver}

  make DESTDIR="${pkgdir}" install

# Prevent conflicts
  rm -rf "${pkgdir}"/usr/{bin/{vala,valac,vala-gen-introspect,vapicheck,vapigen},share/{man/man1/{valac.1,vala-gen-introspect.1,vapigen.1},pkgconfig/vapigen.pc,vala}}
  mv "${pkgdir}"/usr/share/aclocal/vala{,-0.16}.m4
  mv "${pkgdir}"/usr/share/aclocal/vapigen{,-0.16}.m4
}

# vim: ts=2 sw=2 et:
