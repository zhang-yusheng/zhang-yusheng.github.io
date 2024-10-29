# 资料整理指导

本项目所有资料采用 markdown 格式编写，推荐使用 Visual Studio Code（简称 vscode）作为 markdown 编辑器。

或许有朋友会问，「markdown」是什么，我不会 markdown 还能一起整理资料吗？

不必担心，markdown 是一种标记语言，它的语法简洁明了。下面的内容将引导我们在配置并熟悉 vscode 的过程中，掌握基础的 markdown 语法。

# vscode 配置

好的工具能够让资料整理事半功倍，本项目推荐使用 vscode 作为 markdown 文件编辑器。

从 [Visual Studio Code 官方网站](https://code.visualstudio.com/) 下载并安装 vscode，安装过程中所有配置保持默认。

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
-   Partial Diff  
    该插件可以用于比较文本，安装过程和上面安装的插件一致。
-   opencclint  
    该插件可以用于繁体简体相互转换，安装过程和上面安装的插件一致。

最后，请跟随《[Visual Studio Code 设置自动保存](https://www.cnblogs.com/ptxiaochen/p/13715668.html)》的指引，配置自动保存功能。

# markdown 教程

现在，打开 [Markdown 官方教程](https://markdown.com.cn/basic-syntax/)，但请不要着急阅读。

在浏览 `.md` 文件时，有看不懂的地方，在教程上进行查阅即可。

# vscode 使用

配置好 vscode 编辑器后，就可以开始编写资料了。

这里用已经整理好的《口是心非》专辑作为例子，从 [《口是心非》资料整理](https://timaab.lanzouj.com/iWlmB2b4cyyd) 下载压缩包并解压，然后打开 vscode。

## 编辑文件和打开文件夹

点击左上角「文件」后，可以选择「新建文本文件」或「打开文件夹」。

![开始编辑](./begin-to-edit.png)

我们打开解压后的文件夹，名称为 `1997-10-16-ksxf`，侧边栏的「资源管理器」中可以看到文件夹下的文件，点击对应的文件可以浏览。

![浏览文件](./view-files.png)

## 格式化文件

打开 `1997-10-16-ksxf.md` 文件，我们按下 `Alt + Shift + F`  
如果提示需要指定格式化插件（formatter），选择 prettier，千万不要选择 Markdown All in One。

`Alt + Shift + F` 将格式化正在编辑的 markdown 文件，比如连续多个空行将被替换为一个空行，列表的缩进将统一……

## 预览文件

点击右上角放大镜对文件进行预览

![预览 markdown 文件](./preview-markdown.png)

下面是预览效果：

![预览效果](./preview-result.png)

就像谷歌浏览器里的每个标签页那样，在 vscode 中，所有打开的页签都是可以拖动的。
![拖动页签](./move-tabs.png)

## 查阅 markdown 语法

在 `1997-10-16-ksxf.md` 文件中，你可能会看到各种奇奇怪怪的语法。比如 `# 口是心非`，这是 markdown 语言标记一级标题的语法，在 [Markdown 标题语法](https://markdown.com.cn/basic-syntax/headings.html) 对其进行了介绍。也可以在 vscode 中输入标题语法的文本，在右侧对渲染结果进行预览。

值得一提的是插入图片的语法，[Markdown 图片语法](https://markdown.com.cn/basic-syntax/images.html) 对其进行了介绍。

目前每份资料都有自己单独的文件夹，所有图片都存放在资料自己的文件夹下面，  
markdown 中，使用 `.` 表示当前 markdown 文件所在的文件夹，所以 `./cover.jpg` 就表示 `1997-10-16-ksxf.md` 同级文件夹下的 `cover.jpg` 这张图片。

## 插入 B 站视频

markdown 中插入 B 站视频需要使用 HTML 语法。
首先我们需要获取视频的分享链接，这里用[《我期待》MV 为例](https://www.bilibili.com/video/BV1VV41117KV/)：

![获取视频分享链接](./get-video-share-link.png)

点击「嵌入代码」后，剪贴板中就会有如下代码

```HTML
<iframe src="//player.bilibili.com/player.html?isOutside=true&aid=415220022&bvid=BV1VV41117KV&cid=252344992&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"></iframe>
```

我们只需要 `src=""` 里面的内容，所以上面这段代码，真正有用的部分是：

```
//player.bilibili.com/player.html?isOutside=true&aid=415220022&bvid=BV1VV41117KV&cid=252344992&p=1
```

这里提供嵌入 B 站视频链接的一个模板：

```html
<iframe src="https:「替换到这里」&high_quality=1&danmaku=0&autoplay=0" allowfullscreen="allowfullscreen" width="100%" height="500" scrolling="no" frameborder="0" sandbox="allow-top-navigation allow-same-origin allow-forms allow-scripts"></iframe>
```

把真正有用的部分替换到模板里面：

```html
<iframe src="https://player.bilibili.com/player.html?isOutside=true&aid=415220022&bvid=BV1VV41117KV&cid=252344992&p=1&high_quality=1&danmaku=0&autoplay=0" allowfullscreen="allowfullscreen" width="100%" height="500" scrolling="no" frameborder="0" sandbox="allow-top-navigation allow-same-origin allow-forms allow-scripts"></iframe>
```

最后把上面的代码放到 markdown 文件中，就可以渲染出分享出的视频了。

<iframe src="https://player.bilibili.com/player.html?isOutside=true&aid=415220022&bvid=BV1VV41117KV&cid=252344992&p=1&high_quality=1&danmaku=0&autoplay=0" allowfullscreen="allowfullscreen" width="100%" height="500" scrolling="no" frameborder="0" sandbox="allow-top-navigation allow-same-origin allow-forms allow-scripts"></iframe>

目前 vscode 还不支持 B 站分享视频的渲染，但是另一个编辑器 [Typora](https://markdown.com.cn/editor/) 和 [在线 markdown 编辑器](https://markdown.com.cn/editor/) 支持。  
总之，推送到 GitHub 后，这些视频是可以渲染出来的。

## 检查拼写错误单词

点击下方状态栏中 圆圈里有个 i 的图标，可以检查拼写错误

![检查拼写错误](./check-spell-errors.png)

## 编辑 `1997-10-16-ksxf.md`

授人以鱼不如授人以渔，`1997-10-16-ksxf.md` 文件中可能还存在其他的 markdown 语法，如加粗、脚注、换行、无序列表、插入链接等，遇到看不懂的地方，都可以通过 [Markdown 基本语法](https://markdown.com.cn/basic-syntax/) 和 [Markdown 扩展语法](https://markdown.com.cn/extended-syntax/) 进行查阅，还可以问 ChatGPT。

在阅读 markdown 语法教程时，可以在 vscode 中编辑 `1997-10-16-ksxf.md`，比如修改标题、插入一些其他的图片、添加自己的脚注等待，所有的改动都可以通过点击右上角的放大镜图标预览。

## 批量编辑

一只手按住 `Alt + Ctrl + Shift`，另一只手敲击向上键，可以向上的方向上制造多个光标。

这个功能在批量添加换行时非常好用：  
首先将光标移动到最后一行的行首，一只手按住 `Alt + Ctrl + Shift`，另一只手一直敲向上键，直到光标到第一行，按下 `End` 键后，光标就来到了所有行的行末，此时输入两个空格就相当于在所有行的行末插入了换行。

要重新只有一个光标，用鼠标点一下 markdown 文件的任意位置就行。

## 繁简转换

这个功能是在安装了 opencclint 插件以后才会有的。

选中一段文字后，右键，在弹出的扩展菜单中，点击 `Opencclint: Translate Selection`，就可以将简体转换为繁体；点击`Opencclint: Translate Selection Revert` 可以将繁体转换为简体。

# 项目结构介绍

为了能够更加轻松地理解整个项目的结构，请下载一份网站内容的 [压缩包](https://timaab.lanzouj.com/i3Zce2almbmj) 并解压，结合解压后的文件结构理解项目。

## 目录结构

项目的部分目录结构如下：

```shell
zhang-yusheng.github.io
│  SUMMARY.md
│
├─albums
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
|
├─performances
│      1992-xx-xx-alpkfwh.md
│      1992-xx-xx-ayxwzgwywh.md
│
└─shows
       1997-xx-xx-lxhdyyjs.md
       199x-xx-xx-lxhdyyjs.md
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

目前（2024-09-22）只在专辑部分使用图片，统一使用汉语拼音首字母拼接命名。

如《如果你要离开我》的专辑图片，命名为 `rgnylkw.jpg`，而不是 `if-you-want-to-leave-me.jpg`

## 结构约定

当一份资料需要引用各种多媒体素材（如图片、音频）时，需要建立一个**与资料名称相同的文件夹**，将 markdown 文件和所引用的素材放到同一个文件夹内。

如专辑《口是心非》的所有素材都放在 `albums/1997-10-16-ksxf` 文件夹内。

这样的好处是，未来如果要迁移资料，可以直接移动整个文件夹。

# 发布新资料

目前投递资料到网站有如下两种方法：

1. 通过邮件将整理好的资料发送给 `zhang-yusheng@qq.com`，注明要发布到的类别，是专辑，还是演出……
2. 注册一个 GitHub 账号，fork 本[仓库](https://github.com/zhang-yusheng/zhang-yusheng.github.io)后，在自己的仓库下进行编辑，然后通过 pull request 进行更新。

站长有空时就会手动将新资料合入网站

# Commit Comment 约定

该部分只需 GitHub Users 阅读并遵守。

| 类型     | 说明                                       |
| :------- | :----------------------------------------- |
| feat     | 为项目**增加**内容，如添加出处、添加脚注等 |
| fix      | 修订项目中**错误**的部分，如笔误、时间等   |
| refactor | 重命名项目、移动项目                       |
| style    | 文件**格式**修改                           |
| chore    | 网站部署相关的修改                         |
