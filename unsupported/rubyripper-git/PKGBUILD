# Maintainer: Alucryd <alucryd at gmail dot com>
# Contributor: Michael Düll <mail at akurei dot me>
# Contributor: Wintershade <wintershade at gmail dot com>

pkgname=rubyripper-git
pkgver=327
pkgrel=2
pkgdesc="Secure audiodisc ripper"
arch=('any')
url="http://code.google.com/p/rubyripper/"
license=('GPL3')
depends=('cdparanoia' 'gtk2' 'hicolor-icon-theme' 'ruby-iconv')
makedepends=('git' 'ruby-gettext')
optdepends=('ruby-gtk2: GTK+ GUI'
            'cd-discid: Freedb support'
            'eject: Eject support'
            'lame: MP3 encoding support'
            'vorbis-tools: Ogg Vorbis encoding support'
            'flac: FLAC encoding support'
            'wavegain: WAV ReplayGain support'
            'mp3gain: MP3 ReplayGain support'
            'vorbisgain: Ogg Vorbis ReplayGain support'
            'normalize: Normalization support'
            'cdrdao: Advanced TOC analysis')
provides=('rubyripper')
conflicts=('rubyripper')
install=${pkgname}.install
source=("${pkgname%-*}::git+https://code.google.com/p/rubyripper/#branch=stable"
        'configure.patch')
sha256sums=('SKIP'
            'f0f855ade49728cf255e8505e7bc51132ad2063ca53954ab33c8adfa6652b873')

pkgver() {
  cd "${srcdir}"/${pkgname%-*}

  git rev-list --count HEAD
}

prepare() {
  cd "${srcdir}"/${pkgname%-*}

  patch -N -i "${srcdir}"/configure.patch
}

build() {
  cd "${srcdir}"/${pkgname%-*}

./configure --prefix=/usr --enable-gtk2 --enable-cli --ruby=$(ruby -e 'v = RbConfig::CONFIG["vendorlibdir"] ; v["/usr"] = ""; puts v')
  make DESTDIR="${pkgdir}"
}

package() {
  cd "${srcdir}"/${pkgname%-*}

  make DESTDIR="${pkgdir}" install
}

# vim: ts=2 sw=2 et:
