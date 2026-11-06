# Shebang is intentionally missing - do not run as a script

# Override host metadata to make builds more reproducible and avoid leaking info
export BUILD_USERNAME=nobody
export BUILD_HOSTNAME=android-build

if [ -n "${ANDROID_BUILD_TOP}" ]; then
    CLANG_VERSION=$(${ANDROID_BUILD_TOP}/vendor/aospa/tools/get_clang_version.py)
    export LLVM_AOSP_PREBUILTS_VERSION="${CLANG_VERSION}"

    RUST_VERSION=$(grep 'RustDefaultVersion =' ${ANDROID_BUILD_TOP}/build/soong/rust/config/global.go | awk '{print $3}' | awk -F '"' '{print $2}')
    export RUST_AOSP_PREBUILTS_VERSION="${RUST_VERSION}"
fi
