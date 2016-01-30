# Maintainer: Maxime Gauduin <alucryd@archlinux.org>

pkgname=rpcs3-git
pkgver=0.0.0.6.r441.e1eb075
pkgrel=1
pkgdesc='A Sony PlayStation 3 emulator'
arch=('x86_64')
url='https://github.com/DHrpcs3/rpcs3'
license=('GPL2')
depends=('gcc-libs' 'glew' 'glibc' 'libgl' 'libx11' 'openal' 'wxgtk'
         'libavcodec.so' 'libavformat.so' 'libavutil.so' 'libswscale.so')
makedepends=('cmake' 'git')
provides=('rpcs3')
conflicts=('rpcs3')
source=('git+https://github.com/RPCS3/rpcs3.git'
        'git+https://github.com/RPCS3/common'
        'git+https://github.com/RPCS3/rsx_program_decompiler.git'
        'git+https://github.com/kobalicek/asmjit.git#commit=b0dad1a'
        'git+https://github.com/Microsoft/GSL.git'
        'rpcs3-system-libs.patch')
sha256sums=('SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            '0180072e040f7d523a8abfbe79c14d3a149c06f2225ccb385ba4ef354401b70f')

pkgver() {
  cd rpcs3

  echo "$(git describe --tags | sed 's/^v//; s/-/.r/; s/-g/./')"
}

prepare() {
  cd rsx_program_decompiler

  git submodule init common
  git config submodule.common.url ../common
  git submodule update common

  cd ../rpcs3

  git submodule init asmjit GSL rsx_program_decompiler
  git config submodule.asmjit.url ../asmjit
  git config submodule.GSL.url ../GSL
  git config submodule.rsx_program_decompiler.url ../rsx_program_decompiler
  git submodule update asmjit GSL rsx_program_decompiler

  patch -Np1 -i ../rpcs3-system-libs.patch

  if [[ -d build ]]; then
    rm -rf build
  fi
  mkdir build
}

build() {
  cd rpcs3/build

  cmake .. \
    -DCMAKE_BUILD_TYPE='Release' \
    -DCMAKE_INSTALL_PREFIX='/usr' \
    -DCMAKE_SKIP_RPATH='TRUE'
  make
}

package() {
  cd rpcs3/build

  install -dm 755 "${pkgdir}"/usr/bin
  install -m 755 bin/rpcs3 "${pkgdir}"/usr/bin/
}

# vim: ts=2 sw=2 et:
