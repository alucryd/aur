# Maintainer: Maxime Gauduin <alucryd@gmail.com>
# Contributor: Kurnevsky Evgeny <kurnevsky@gmail.com>
# Contributor: Stefan Husmann <stefan-husmann@t-online.de>
# Contributor: Simon Lipp <sloonz+aur@gmail.com>
# Contributor: Thomas Dziedzic <gostrc@gmail.com>

pkgname=scilab-devel
pkgver=5.5.0_beta_1
pkgrel=1
pkgdesc='A scientific software package for numerical computations'
arch=('i686' 'x86_64')
url='http://www.scilab.org/'
license=('custom:CeCILL')
depends=('arpack' 'curl' 'desktop-file-utils' 'gtk-update-icon-cache' 'fftw' 'hdf5' 'java-environment' 'shared-mime-info' 'tk')
makedepends=('apache-ant' 'ocaml' 'umfpack')
install="${pkgname%-*}.install"
options=('!emptydirs')
source=("http://www.scilab.org/download/${pkgver//_/-}/scilab-${pkgver//_/-}-src.tar.gz")
sha256sums=('71b4b5c8b6fba1af1f66702ca68fb8a17c9d36134cee84fcab8d92d16a85d934')

if [[ $CARCH == 'i686' ]]; then
  source+=("http://www.scilab.org/download/${pkgver//_/-}/prerequirements-scilab-${pkgver//_/-}-src.tar.gz")
  sha256sums+=('e7152d181fce1421f160d9d85cb33ba2ce1567aa7a4c9dadca1fdbb812ae45fb')
elif [[ $CARCH == 'x86_64' ]]; then
  source+=("http://www.scilab.org/download/${pkgver//_/-}/prerequirements-scilab-${pkgver//_/-}-x86_64-src.tar.gz")
  sha256sums+=('8fd4ebe1c49678703dadc94f5b19211dac68b9174ce36dc8255ef35f66ad6a63')
fi

build() {
  cd ${pkgname%-*}-${pkgver//_/-}

  export LDFLAGS="${LDFLAGS/--as-needed,/}"

  ./configure --prefix='/usr' --enable-build-localization --disable-build-help --without-matio
  make all
}

package() {
  cd ${pkgname%-*}-${pkgver//_/-}

  make DESTDIR="${pkgdir}" install

  install -dm 755 "${pkgdir}"/usr/share/${pkgname%-*}/thirdparty
  install -m 644 etc/classpath.xml.vc  "${pkgdir}"/usr/share/${pkgname%-*}/etc/classpath.xml
  for jar in thirdparty/*.jar; do
    install -m 644 ${jar} "${pkgdir}"/usr/share/${pkgname%-*}/thirdparty/
  done
  for lib in gluegen2-rt jogl_desktop nativewindow_{awt,x11} newt; do
    install -m 644 lib/thirdparty/lib${lib}.so "${pkgdir}"/usr/lib/scilab/
  done

# License
  install -dm 755 "${pkgdir}"/usr/share/licenses/${pkgname}
  mv "${pkgdir}"/usr/share/scilab/{COPYING{,-FR,-BSD},license.txt} "${pkgdir}"/usr/share/licenses/${pkgname}/
}

# vim: ts=2 sw=2 et:
