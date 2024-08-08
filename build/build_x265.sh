cd source
mkdir build
cd build


INSTALL_DIR=/home/ruiqurm/ffmpeg/build/output
CONF_FLAGS=(
  -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR
  -DENABLE_LIBNUMA=OFF
  -DENABLE_SHARED=OFF
  -DENABLE_CLI=OFF
  -DCMAKE_CXX_FLAGS="-msimd128"
  -DCMAKE_C_FLAGS="-msimd128"
)
emmake cmake .. ${CONF_FLAGS[@]}
emmake make -j
emmake make install -j