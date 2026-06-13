mkdir -p ~/code/storm/tracker_ws/src 
cd ~/code/storm/tracker_ws/src
git clone git@github.com:jrached/acl-mapping.git
cd acl-mapping && git switch storm && cd ../ 
git clone git@github.com:jrached/dynus_interfaces.git && cd ../
colcon build \
  --cmake-args \
    -DCMAKE_C_COMPILER=/usr/bin/gcc \
    -DCMAKE_CXX_COMPILER=/usr/bin/g++ \
    -DCMAKE_INSTALL_PREFIX=$PWD/install \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CXX_FLAGS_RELEASE="-O3" \
    -DEIGEN_DONT_VECTORIZE=OFF \
  --merge-install
cd ../ && git clone git@github.com:jrached/gridnet_docker.git --recurse-submodules 
cd gridnet_docker/Volume/gridnet_ws && colcon build 
cd ../../ && ./build.sh 

echo ""
echo "Installation Finished Without Issues." 
