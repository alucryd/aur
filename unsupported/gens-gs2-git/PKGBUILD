# Maintainer: Maxime Gauduin <alucryd@gmail.com>

pkgname=gens-gs2-git
pkgver=2365
pkgrel=1
pkgdesc="A Sega Genesis / Sega CD / Sega 32X emulator"
arch=('i686' 'x86_64')
url="http://segaretro.org/Gens/GS_II"
license=('GPL')
if [[ $CARCH == "x86_64" ]]; then
  depends=('lib32-glew' 'lib32-mesa' 'lib32-portaudio' 'lib32-qt4')
  makedepends=('cmake' 'gcc-multilib' 'git' 'nasm')
  optdepends=('lib32-alsa-plugins: Sound support for PulseAudio'
              'lib32-libpulse: Sound support for PulseAudio')
else
  depends=('glew' 'mesa' 'portaudio' 'qt4')
  makedepends=('cmake' 'git' 'nasm')
fi
provides=("${pkgname%-*}")
conflicts=("${pkgname%-*}")
source=("${pkgname%-*}::git://dusers.drexel.edu/srv/git/~korth/gens-gs-ii.git"
        'gens-qt4.desktop'
        'gens-qt4.png')
sha256sums=('SKIP'
            'a501f5f1fe478089de0be5904d09353ae3921241243708599a44288083162a88'
            'bb54a11ed24ea2bed912078faf027c3eeba7b1fe33a17496a834664d821b6bed')

pkgver() {
  cd "${srcdir}"/${pkgname%-*}

  git describe | sed 's|.*-.*-\([0-9]*\)-.*|\1|'
}

build() {
  cd "${srcdir}"/${pkgname%-*}

  if [[ $CARCH == "x86_64" ]]; then
    export CC="gcc -m32"
    export CXX="g++ -m32"
    export PKG_CONFIG_PATH="/usr/lib32/pkgconfig"
  fi

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build && cd build

  cmake .. -DCMAKE_INSTALL_PREFIX=/usr
  make
}

package() {
  cd "${srcdir}"/${pkgname%-*}/build

  install -dm 755 "${pkgdir}"/usr/{bin,share/{applications,pixmaps}}
  install -m 755 src/gens-qt4/gens-qt4 "${pkgdir}"/usr/bin/gens-qt4
  install -m 644 "${srcdir}"/gens-qt4.desktop "${pkgdir}"/usr/share/applications/gens-qt4.desktop
  install -m 644 "${srcdir}"/gens-qt4.png "${pkgdir}"/usr/share/pixmaps/gens-qt4.png
}

# vim: ts=2 sw=2 et:
