# Maintainer: Maxime Gauduin <alucryd@archlinux.org>

pkgname=rpcs3-git
pkgver=0.0.2.r197.b1e8eefad
pkgrel=1
pkgdesc='A Sony PlayStation 3 emulator'
arch=('x86_64')
url='https://github.com/RPCS3/rpcs3'
license=('GPL2')
depends=('gcc-libs' 'glew' 'glibc' 'glu' 'libgl' 'libpng' 'libx11' 'openal'
         'wxgtk' 'yaml-cpp' 'zlib'
         'libavcodec.so' 'libavformat.so' 'libavutil.so' 'libncursesw.so'
         'libswscale.so' 'libswresample.so')
makedepends=('boost' 'cereal' 'cmake' 'git' 'llvm')
provides=('rpcs3')
conflicts=('rpcs3')
source=('git+https://github.com/RPCS3/rpcs3.git'
        'rpcs3-common::git+https://github.com/RPCS3/common.git'
        'rpcs3-hidapi::git+https://github.com/RPCS3/hidapi.git#commit=c095a22'
        'rpcs3-pugixml::git+https://github.com/RPCS3/pugixml.git#commit=f205aaf'
        'git+https://github.com/RPCS3/rsx-debugger.git#commit=3b11b96'
        'git+https://github.com/RPCS3/rsx_program_decompiler.git#commit=de3b205'
        'git+https://github.com/kobalicek/asmjit.git#commit=b0dad1a'
        'git+https://github.com/Microsoft/GSL.git#commit=fc5fce4'
        'git+https://github.com/KhronosGroup/glslang.git#commit=2921e0c'
        'git+https://github.com/KhronosGroup/Vulkan-LoaderAndValidationLayers.git#commit=64d375f'
        'rpcs3.sh')
sha256sums=('SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            'SKIP'
            '478abe078d3177f83a19100147a268a47a77b3fe23216a23706592532b5a9b45')

pkgver() {
  cd rpcs3

  echo "$(git describe --tags | sed 's/^v//; s/-/.r/; s/-g/./')"
}

prepare() {
  cd rsx_program_decompiler

  git submodule init common
  git config submodule.common.url ../rpcs3-common
  git submodule update common

  cd ../rpcs3

  git submodule init 3rdparty/{GSL,hidapi,pugixml} asmjit rsx{-debugger,_program_decompiler} Vulkan/{glslang,Vulkan-LoaderAndValidationLayers}
  git config submodule.asmjit.url ../asmjit
  git config submodule.hidapi.url ../rpcs3-hidapi
  git config submodule.GSL.url ../GSL
  git config submodule.pugixml.url ../rpcs3-pugixml
  git config submodule.rsx-debugger.url ../rsx-debugger
  git config submodule.rsx_program_decompiler.url ../rsx_program_decompiler
  git config submodule.glslang.url ../glslang
  git config submodule.Vulkan-LoaderAndValidationLayers ../Vulkan-LoaderAndValidationLayers
  git submodule update 3rdparty/{GSL,hidapi,pugixml} asmjit rsx_program_decompiler Vulkan/{glslang,Vulkan-LoaderAndValidationLayers}

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
    -DCMAKE_EXE_LINKER_FLAGS='-ldl -lyaml-cpp' \
    -DCMAKE_SKIP_RPATH='ON' \
    -DUSE_SYSTEM_FFMPEG='ON' \
    -DUSE_SYSTEM_LIBPNG='ON'
  make
}

package() {
  cd rpcs3/build

  install -dm 777 "${pkgdir}"/opt/rpcs3
  install -m 755 bin/rpcs3 "${pkgdir}"/opt/rpcs3/

  install -dm 755 "${pkgdir}"/usr/bin
  install -m 755 ../../rpcs3.sh "${pkgdir}"/usr/bin/rpcs3
}

# vim: ts=2 sw=2 et:
