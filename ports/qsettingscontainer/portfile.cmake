vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO danielskeenan/QSettingsContainer
    REF v2.0.0
    SHA512 0f196e1f616ba26246cc19acbd960c54fe6e4b7f8e66226a8c8dc476d439e27b45a8600b68adab60a67912d2a466cfb90b49f0af52b426f355cb80fca51b31f4
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DQSETTINGSCONTAINER_BUILD_DOC=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(
        PACKAGE_NAME QSettingsContainer
        CONFIG_PATH "share/cmake/QSettingsContainer"
)

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
