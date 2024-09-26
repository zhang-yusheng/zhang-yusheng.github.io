# 资料整理指导

# markdown

目前，所有页面均采用 Markdown 格式编写。Markdown 的语法简洁明了，只需花费不到半小时即可轻松掌握。

在继续阅读之前，请确保您已熟悉 Markdown 的基本语法。如果需参考，可查阅 [Markdown 基本语法](https://markdown.com.cn/basic-syntax/)。

# 项目介绍

为了能够更加轻松地理解整个项目的结构，请下载一份网站内容的 [压缩包](https://timaab.lanzouj.com/i3Zce2almbmj) 并解压，结合解压后的文件结构理解项目。

## 目录结构

项目的部分目录结构如下：

```shell
zhang-yusheng.github.io
│  SUMMARY.md
│
├─albums
│  │  albums.md
│  │
│  └─1994-08-xx-kloktbw
│         1994-08-xx-kloktbw.md
│         description.jpg
│         thanks.jpg
│         dwdbg.jpg
│         gdswb.jpg
│         hdj.jpg
│         hzhj.jpg
│
├─articles
│      1994-0x-xx-preface-of-tell-you-the-truth.md
│      articles.md
|
├─performances
│      1992-xx-xx-alpkfwh.md
│      1992-xx-xx-ayxwzgwywh.md
│      performances.md
│
└─shows
       1997-xx-xx-lxhdyyjs.md
       199x-xx-xx-lxhdyyjs.md
       shows.md
```

不同文件夹用于存放不同类型的资料，包括：

-   albums: 专辑
-   articles: 文章
-   letters: 信
-   shows: 综艺
-   performances: 演出

未来可能还会有新的文件夹存放对应资料

## 文件夹和网址的对应关系

`SUMMARY.md` 定义了网站左侧目录的结构，在 `SUMMARY.md` 中通过相对路径引用的 markdown 文件会被发布到网站上。

目前（2024-09-22） `SUMMARY.md` 内容如下：

```md
# Summary

-   [Introduction](README.md)
-   [专辑](./albums/albums.md)
    -   [口是心非](./albums/1997-10-16-ksxf/1997-10-16-ksxf.md)
    -   [口是心非（抛物线版）](./albums/1997-xx-xx-ksxf-parabola/1997-xx-xx-ksxf-parabola.md)
    -   [卡拉 OK·台北·我](./albums/1994-08-xx-kloktbw/1994-08-xx-kloktbw.md)
-   [文章](./articles/articles.md)
    -   [《跟你说真的》序](./articles/1994-0x-xx-preface-of-tell-you-the-truth.md)
-   [综艺](./shows/shows.md)
    -   [199x 龙兄虎弟音乐教室](./shows/199x-xx-xx-lxhdyyjs.md)
    -   [1997 龙兄虎弟音乐教室](./shows/1997-xx-xx-lxhdyyjs.md)
-   [演出](./performances/performances.md)
    -   [1992 奥林匹克风晚会](./performances/1992-xx-xx-alpkfwh.md)
    -   [1992 奥运希望之光文艺晚会](./performances/1992-xx-xx-ayxwzgwywh.md)

```

## 命名约定

因为电子书打包工具不支持中文文件名，所以所有的文件和文件夹名称都**必须是英文**。

文件名只能使用**小写字母**、数字和减号。

### 文件夹

文件夹的名称应当为复数形式或缩写，如 albums、articles、music-videos 或 mv。

### 资料

「资料」指的是具有明确的发布或创作时间的一个文件。如《口是心非》专辑、雨生 1997 年参加的一次龙兄虎弟音乐教室。

资料文件名格式为 `创作时间-资料名.md`，时间不知道的用小写英文字母 `x` 表示。  
目前项目采用的文件名格式有两种：

1. `年-月-日-资料中文拼音首字母拼接.md`，适用于不知道如何翻译资料以及资料的名称太长的情况。  
   如 `1997-10-16-ksxf.md` 表示 1997 年 10 月 16 日发行的专辑《口是心非》的内容。
2. `年-月-日-资料名英文.md`，适用于资料非常好翻译为英文的情况。  
   如 `1994-0x-xx-preface-of-tell-you-the-truth.md`，表示 1994 年某月某日雨生为《跟你说真的》这本书写的序。

在 `albums` 文件夹中，统一使用第一种文件名格式。

### 图片

目前（2024-09-22）只在专辑部分使用图片，统一使用中文拼音首字母缩写拼接命名。

如《如果你要离开我》的专辑图片，命名为 `rgnylkw.jpg`，而不是 `if-you-want-to-leave-me.jpg`

## 结构约定

当一份资料需要引用各种多媒体素材（如图片、音频）时，需要建立一个**与资料名称相同的文件夹**，将 markdown 文件和所引用的素材放到同一个文件夹内。

如专辑《口是心非》的所有素材都放在 `albums/1997-10-16-ksxf` 文件夹内。

这样的好处是，未来如果要迁移资料，可以直接移动整个文件夹。

# 发布新资料

目前投递资料到网站有如下几种方法：

1. 通过邮件将整理好的资料发送给 `zhang-yusheng@qq.com`，注明要发布到的类别，是专辑，还是演出……
2. 注册一个 GitHub 账号，fork 本[仓库](https://github.com/zhang-yusheng/zhang-yusheng.github.io)后，在自己的仓库下进行编辑，然后通过 pull request 进行更新。

站长有空时就会手动将新资料合入网站

# 编辑器配置

## 安装 Visual Studio Code 和插件

这里我们选择使用 Visual Studio Code（简称 vscode）作为 markdown 文件的编辑器。

从 [Visual Studio Code](https://code.visualstudio.com/) 下载并安装 vscode，安装过程中所有配置保持默认。

打开 vscode，在侧边栏的插件市场中搜索并安装如下插件：

-   Chinese (Simplified)
    ![安装汉化插件](./install-Chinese-extension.png)
-   prettier
    ![安装格式化插件](./install-prettier.png)
-   markdown all in one
    ![安装 markdown 编辑插件](./install-markdown-all-in-one.png)
-   autocorrect
    ![安装 autocorrect](install-autocorrect.png)
-   markdown preview enhanced
    ![安装 markdown preview enhanced](./install-markdown-preview-enhanced.png)
-   code spell checker
    ![安装 code spell checker](./install-code-spell-checker.png)

## VSCode 使用

### 编辑文件或文件夹

点击左上角「文件」后，可以选择「新建文本文件」或「打开文件夹」。

![开始编辑](./begin-to-edit.png)

### 格式化文件

`Alt + Shift + F` 格式化 markdown 文件，使用 prettier 作为格式化插件

### 预览文件

点击右上角放大镜对文件进行预览

![预览 markdown 文件](./preview-markdown.png)

### 检查拼写错误单词

点击下方状态栏中 圆圈里有个 i 的图标检查拼写错误

![检查拼写错误](./check-spell-errors.png)

# Commit Comment 约定

该部分只需 GitHub Collaborators 阅读。

| 类型     | 说明                                       |
| :------- | :----------------------------------------- |
| feat     | 为项目**增加**内容，如添加出处、添加脚注等 |
| fix      | 修订项目中**错误**的部分，如笔误、时间等   |
| refactor | 重命名项目、移动项目                       |
| style    | 文件**格式**修改                           |
| chore    | 网站部署相关的修改                         |
