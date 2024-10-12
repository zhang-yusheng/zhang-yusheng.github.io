#!/bin/bash

# 定义要安装的包和版本
declare -A packages=(
    ["honkit"]="4.0.0"
    ["gitbook-plugin-katex-mhchem"]=""
    ["gitbook-plugin-custom-favicon"]=""
    ["gitbook-plugin-page-footer-ex"]=""
)

# 获取当前全局安装的包列表
globalPackages=$(npm list -g --depth=0)

# 检查并安装每个包
for package in "${!packages[@]}"; do
    version=${packages[$package]}
    fullPackage=${package}
    
    # 如果有指定版本，则更新完整包名
    if [ -n "$version" ]; then
        fullPackage="$package@$version"
    fi

    # 检查包是否已经全局安装
    if echo "$globalPackages" | grep -q "$package"; then
        # 检查版本是否一致
        if [ -n "$version" ] && ! echo "$globalPackages" | grep -q "$fullPackage"; then
            echo "Uninstalling existing version of $package..."
            npm uninstall -g "$package"
            echo "Installing $fullPackage..."
            npm install -g "$fullPackage"
        else
            echo "Skipping installation of $fullPackage as it is already installed."
        fi
    else
        echo "Installing $fullPackage..."
        npm install -g "$fullPackage"
    fi
done