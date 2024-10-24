#!/bin/bash

# 设置错误处理
set -e

# 定义日志函数
log_info() {
    echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - $1"
}

log_error() {
    echo "[ERROR] $(date '+%Y-%m-%d %H:%M:%S') - $1" >&2
}

# 设置基本变数
bookdir="./ebooks"
bookname="yusheng-zhang-archive"
mkdir -p ${bookdir}

# 定义转换函数
convert_book() {
    format=$1
    log_info "Starting conversion to ${format}"
    
    if honkit ${format} ./ ${bookdir}/${bookname}.${format} > ${bookdir}/build_${format}.log 2>&1; then
        log_info "Successfully generated ${format} version"
        return 0
    else
        log_error "Failed to generate ${format} version"
        cat ${bookdir}/build_${format}.log
        return 1
    fi
}

# 并行执行转换
log_info "Starting parallel book conversion"

# 启动所有转换进程并在后台运行
convert_book epub &
pid_epub=$!

convert_book pdf &
pid_pdf=$!

convert_book mobi &
pid_mobi=$!

# 等待所有进程完成
failed=0

for pid in $pid_epub $pid_pdf $pid_mobi; do
    if ! wait $pid; then
        failed=1
    fi
done

# 检查结果
if [ $failed -eq 0 ]; then
    log_info "All conversions completed successfully"
    # 列出生成的文件及其大小
    ls -lh ${bookdir}/${bookname}.*
else
    log_error "Some conversions failed"
    exit 1
fi