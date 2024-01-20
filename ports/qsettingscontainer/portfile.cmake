vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO danielskeenan/QSettingsContainer
    REF v2.0.0
    SHA512 daf8b997d1e58a0e7a13ef4bd8c1fd80533e017a0ecd2a09e7f9ef14546454756dfcb83149c437afed7e44030edc0acb7d85f7b71e2cb3ee58560909521bd321
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DQSETTINGSCONTAINER_BUILD_DOC=OFF
)
vcpkg_cmake_config_fixup()

vcpkg_cmake_install()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
