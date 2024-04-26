vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO shenyanbin1021/shenprintf
    REF c1c1f146cff93329ea86f559ae03064faae1eb1c
    SHA512 4972b563c81204767786305b5969a54341d6062edf6f65555f0b0976a7a3f690c3aac1bcf2cde65713dd37ebb4c1d93956616e62bebf2e332ed7e9349ac18471
    HEAD_REF main
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
)

vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()


file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

#file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)