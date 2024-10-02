# 本地部署指南

## 前置要求

- Git
- Node.js 20 或更高版本

## 安装步骤

### 1. 安装 Git

1. [Git 官方网站](https://git-scm.com/downloads)
2. 确保 Git 的 bin 目录（通常是 `C:\Program Files\Git\bin`）已添加到系统的 PATH 环境变量中
3. 验证：

```bash
git --version
sh --version
```

### 2. 安装 Node.js

1. [Node.js 官方网站](https://nodejs.org/)
2. 安装 20.x 或更高的 LTS 版本
3. 验证（确保版本号为 20.x 或更高）：

```bash
node --version
npm --version
```

### 3. 克隆项目

```bash
git clone https://github.com/zhang-yusheng/zhang-yusheng.github.io.git
cd zhang-yusheng.github.io
```

### 4. 安装依赖和插件

```bash
sh ./scripts/install_packages.sh
```

### 5. 运行项目

```bash
honkit serve
```

访问：`http://localhost:4000`

## HonKit 常用命令

|      命令      |     描述     |
| :------------: | :----------: |
| `honkit serve` |   本地预览   |
| `honkit build` | 构建静态网站 |
|  `honkit pdf`  |   生成 PDF   |
| `honkit epub`  |  生成 EPUB   |
| `honkit mobi`  |  生成 MOBI   |
