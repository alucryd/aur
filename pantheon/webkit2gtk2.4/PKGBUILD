# Maintainer: Maxime Gauduin <alucryd@archlinux.org>
# Contributor: Andreas Radke <andyrtr@archlinux.org>

pkgname=webkit2gtk2.4
pkgver=2.4.8
pkgrel=2
pkgdesc='GTK+ Web content engine library'
arch=('i686' 'x86_64')
url='http://webkitgtk.org/'
license=('custom')
depends=('enchant' 'geoclue2' 'gst-plugins-base-libs' 'gtk3' 'harfbuzz-icu'
         'libsecret' 'libsoup' 'libwebp' 'libxslt' 'libxt' 'sqlite'
         "webkitgtk=${pkgver}")
makedepends=('gobject-introspection' 'gperf' 'gtk2' 'gtk3' 'mesa' 'python2'
             'ruby')
optdepends=('gst-plugins-base: free media decoding'
            'gst-plugins-good: media decoding'
            'gst-libav: nonfree media decoding')
options=('!emptydirs')
source=("http://webkitgtk.org/releases/webkitgtk-${pkgver}.tar.xz"
        'fix-pretty-quotes.patch'
        'bug140241.patch')
sha256sums=('68f11559cb178679ca92acc9e3a3d7febede7acb7b98afd7fb761875bbc6bd23'
            '56316228bbbf0b7ebcbe210a35120f4e72cb9c1b680dd82cc2bde0f4549245e6'
            '0875047b6171c8336d34003d096b2467c00ec797e9084adc2e562c9473ef6230')

prepare() {
  mkdir path
  ln -s /usr/bin/python2 path/python

  cd webkitgtk-${pkgver}

  patch -Np0 -i ../fix-pretty-quotes.patch
  patch -Np1 -i ../bug140241.patch

  autoreconf -fi
}

build() {
  cd webkitgtk-${pkgver}

  export PATH="../path:${PATH}"

  ./configure \
    --prefix='/usr' \
    --libexecdir='/usr/lib/webkit2gtk-3.0' \
    --disable-webkit1 \
    --enable-introspection
  sed -i 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool
  make
}

package() {
  cd webkitgtk-${pkgver}

  make DESTDIR="${pkgdir}" install
  rm -rf "${pkgdir}"/usr/bin/jsc-3 \
         "${pkgdir}"/usr/include \
         "${pkgdir}"/usr/lib/girepository-1.0/JavaScriptCore-3.0.typelib \
         "${pkgdir}"/usr/lib/libjavascriptcoregtk-3.0.so* \
         "${pkgdir}"/usr/lib/pkgconfig/javascriptcoregtk-3.0.pc \
         "${pkgdir}"/usr/share/gir-1.0/JavaScriptCore-3.0.gir \
         "${pkgdir}"/usr/share/locale \
         "${pkgdir}"/usr/share/webkitgtk-3.0

  install -dm 755 "${pkgdir}"/usr/share/licenses
  ln -s webkitgtk "${pkgdir}"/usr/share/licenses/webkit2gtk2.4
}

# vim: ts=2 sw=2 et:
