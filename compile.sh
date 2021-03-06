
# Set the appropriate path for your android-ndk and for includes and libs
# put a runnable python2.7.3 binary file and rename it into hostpython.(It can be copied from /usr/bin or can be compiled from source)
# uncomment 'configure' and 'make' commands to corresponding actions.
# this will produce binaries with debugging information (big size tooo). so stripping down is necessary
# binaries with debugging symbols can be used for debugging with gdbsever.
# gdbserver arm-elf binary can be found in ndk folder
# file gdb.setup contains some gdb commands which i used for debuging python using gdb remote debugging
# For redline support, readline and ncurses libraries are necessary.
# no need to compile sqlite and openssl (I didn't do that)
# copy the required header files (for sqlite and openssl) from androidsource/external folder and copy shared libraries fom phones /system/lib folder


export PATH+=:/home/harish/android-ndk-r6b/toolchains/arm-linux-androideabi-4.4.3/prebuilt/linux-x86/bin
export INCLUDES='/data/local/include:/home/harish/android-ndk-r6b/platforms/android-9/arch-arm/usr/include'
export LIBS='/data/local/lib' 

# ./configure --build=i686-pc-linux-gnu --host=arm-linux-androideabi --target=arm-linux-androideabi \
# CFLAGS="--sysroot=/home/harish/android-ndk-r6b/platforms/android-9/arch-arm -I/data/local/include -I/data/local/include/ncurses -I/data/local/include/readline -g3" \
# LDFLAGS="-g3 --sysroot=/home/harish/android-ndk-r6b/platforms/android-9/arch-arm -L/data/local/lib" \
# CXXFLAGS="-g3 --sysroot=/home/harish/android-ndk-r6b/platforms/android-9/arch-arm" \
# --prefix=/data/local/ \
# build_alias=i686-pc-linux-gnu host_alias=arm-linux-androideabi target_alias=arm-linux-androideabi \
# CC=arm-linux-androideabi-gcc --enable-unicode

# make HOSTPYTHON=./hostpython HOSTPGEN=./Parser/hostpgen BLDSHARED="arm-linux-androideabi-gcc -shared" CROSS_COMPILE=arm-linux-androideabi- CROSS_COMPILE_TARGET=yes HOSTARCH=arm-linux-androideabi BUILDARCH=i686-pc-linux-gnu  CFLAGS="--sysroot=/home/harish/android-ndk-r6b/platforms/android-9/arch-arm -I/data/local/include -I/data/local/include/ncurses -I/data/local/include/readline -g3 -I/home/harish/Downloads/Build/Python-3.2/forPy/openssl-android-master/include" LDFLAGS="--sysroot=/home/harish/android-ndk-r6b/platforms/android-9/arch-arm -L/data/local/lib -g3" CXXFLAGS="--sysroot=/home/harish/android-ndk-r6b/platforms/android-9/arch-arm -g3" ARCH=arm NDKPLATFORM="/home/harish/android-ndk-r6b/platforms/android-9"  clean


