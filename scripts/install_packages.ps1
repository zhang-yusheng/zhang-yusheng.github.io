# 定义要安装的包和版本
$packages = @{
    "honkit" = "4.0.0"
    "gitbook-plugin-search-plus" = ""
    "gitbook-plugin-anchor-navigation-ex" = ""
}

# 获取当前全局安装的包列表
$globalPackages = npm list -g --depth=0

# 检查并安装每个包
foreach ($package in $packages.Keys) {
    $version = $packages[$package]
    $fullPackage = if ($version) { "$package@$version" } else { $package }

    # 检查包是否已经全局安装
    if ($globalPackages -match $package) {
        # 检查版本是否一致
        if ($version -and $globalPackages -notmatch $fullPackage) {
            Write-Output "Uninstalling existing version of $package..."
            npm uninstall -g $package
            Write-Output "Installing $fullPackage..."
            npm i -g $fullPackage
        } else {
            Write-Output "Skipping installation of $fullPackage as it is already installed."
        }
    } else {
        Write-Output "Installing $fullPackage..."
        npm i -g $fullPackage
    }
}
