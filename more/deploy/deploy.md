# 本地部署指南

## 前置要求

- Git
- Node.js 20 或更高版本

## 安装步骤

### 1. 安装 Git

1. 从 [Git 官方网站](https://git-scm.com/downloads) 下载并安装 Git
2. 验证安装：

```bash
git --version
```

### 2. 安装 Node.js

1. 从 [Node.js 官方网站](https://nodejs.org/) 下载并安装 Node.js
2. 安装 20.x 或更高的 LTS 版本
3. 验证安装（确保版本号为 20.x 或更高）：

```bash
node --version
npm --version
```

### 3. 克隆项目

```bash
git clone https://github.com/zhang-yusheng/zhang-yusheng.github.io.git
cd zhang-yusheng.github.io
```

### 4. 安装 docsify-cli

```bash
npm i docsify-cli -g
```

### 5. 运行项目

```bash
docsify serve
```

启动服务后，请查看终端输出。docsify 会提供一个本地访问链接。使用 Ctrl+ 点击（或 Cmd+ 点击）终端中的链接来在浏览器中打开项目。

注意：
- 实际使用的端口可能会因本地环境而异。始终使用终端中提供的链接来访问项目。
- 如果您想指定一个特定的端口，可以使用 `-p` 参数，例如：

```bash
docsify serve -p 4000
```

这将使用端口 4000 来运行服务。

## 构建电子书（可选）

如果您需要构建电子书版本，请按照以下步骤操作：

### 1. 配置 Git 环境

确保 Git 的 bin 目录（通常是 `C:\Program Files\Git\bin`）已添加到系统的 PATH 环境变量中。这是为了能够使用 `sh` 命令。验证配置：

```bash
sh --version
```

### 2. 安装相关依赖

```bash
sh ./scripts/install_packages.sh
```

### 3. 构建电子书

使用以下命令构建不同格式的电子书：

|      命令      |    描述    |
| :------------: | :--------: |
|  `honkit pdf`  |  生成 PDF  |
| `honkit epub`  | 生成 EPUB  |
| `honkit mobi`  | 生成 MOBI  |