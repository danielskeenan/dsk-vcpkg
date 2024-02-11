vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO danielskeenan/QSettingsContainer
    REF v2.0.0
    SHA512 6927a4cc0c0977f580a12a1ec2ec80560a754ebe41a71c43a953dab49120d2de0b047faff5547a1a611fe6c6a412443b0703698f189ec995133467452e3a6213
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
