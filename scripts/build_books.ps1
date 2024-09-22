# 获取第一个参数作为目标目录，如果没有提供，则默认为 "./ebooks"
$targetDir = if ($args.Length -gt 0) { $args[0] } else { "./ebooks" }

# 检查目标目录是否存在
if (-Not (Test-Path -Path $targetDir)) {
    # 如果不存在，创建目录
    Write-Output "Creating directory: $targetDir"
    New-Item -ItemType Directory -Path $targetDir
} else {
    Write-Output "Directory $targetDir already exists, skipping creation."
}

# 生成 PDF 文件
Write-Output "Generating PDF file..."
honkit pdf ./ "$targetDir/archive.pdf"

# 生成 EPUB 文件
Write-Output "Generating EPUB file..."
honkit epub ./ "$targetDir/archive.epub"