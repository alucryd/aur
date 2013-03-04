# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=clutter-gst1.6
pkgver=1.6.0
pkgrel=2
pkgdesc="GStreamer bindings for clutter - 1.6 version"
arch=('i686' 'x86_64')
url="http://www.clutter-project.org/"
license=('LGPL')
depends=('clutter' 'gstreamer0.10-bad')
makedepends=('gobject-introspection' 'gstreamer-vaapi' 'gtk-doc')
options=('!libtool')
source=(http://download.gnome.org/sources/clutter-gst/${pkgver%.0}/clutter-gst-$pkgver.tar.xz)
sha256sums=('abc879cdd562f1640a825131405f4327a427bfe65b805ebc25d0c78909c8c622')

build() {
  cd "${srcdir}"/clutter-gst-${pkgver}

# Build
  ./configure  --prefix=/usr --sysconfdir=/etc
  make
}

package() {
  cd "${srcdir}"/clutter-gst-${pkgver}

# Install
  make DESTDIR="${pkgdir}" install
  mv "${pkgdir}"/usr/share/gtk-doc/html/clutter-gst "${pkgdir}"/usr/share/gtk-doc/html/clutter-gst-1.6
}

# vim: ts=2 sw=2 et:
