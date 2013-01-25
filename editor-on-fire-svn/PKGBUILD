# Maintainer: Alucryd <alucryd at gmail dot com>

pkgname=editor-on-fire-svn
pkgver=1085
pkgrel=1
pkgdesc="A song editor for Frets On Fire"
arch=('i686' 'x86_64')
url="http://code.google.com/p/editor-on-fire/"
license=('custom')
depends=('allegro4' 'libpng' 'zlib')
optdepends=('lame: MP3 decoding'
            'vorbis-tools: OGG encoding')
source=('eof' 'eof.desktop')
sha256sums=('933c63271e2895ab02b866c5f90e93e141d6b953559e216f94857dafbeee02f2'
            '4c3529b74664a41e94faf0ad393031e02d1a74c91b046f66988daa5161b70bc5')

_svntrunk=http://editor-on-fire.googlecode.com/svn/trunk/
_svnmod=editor-on-fire

build() {
  cd "${srcdir}"

  msg "Connecting to SVN server...."
  if [ -d ${_svnmod}/.svn ] ; then
    (cd ${_svnmod} && svn up -r ${pkgver})
  else
    svn co ${_svntrunk} --config-dir ./ -r ${pkgver} ${_svnmod}
  fi
  msg "SVN checkout done or server timeout"
  cd "${srcdir}"/${_svnmod}

  make
}

package() {
  cd "${srcdir}"
  install -dm 755 "${pkgdir}"/{opt,usr/{bin,share/{applications,licenses/editor-on-fire-svn}}}
  cp -dr --no-preserve=ownership ${_svnmod}/bin "${pkgdir}"/opt/editor-on-fire
  chmod -R 777 "${pkgdir}"/opt/editor-on-fire
  install -m 755 eof "${pkgdir}"/usr/bin/eof
  install -m 644 eof.desktop "${pkgdir}"/usr/share/applications/eof.desktop
  install -m 644 ${_svnmod}/license.txt "${pkgdir}"/usr/share/licenses/editor-on-fire-svn/license.txt
}

# vim: ts=2 sw=2 et:
