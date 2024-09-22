# 雨生资料整理

所有资料在 [GitHub](https://github.com/zhang-yusheng/zhang-yusheng.github.io)，资料下载地址：[zhang-yusheng.github.io-main.zip](https://github.com/zhang-yusheng/zhang-yusheng.github.io/archive/refs/heads/main.zip)。

电子书下载：

-   [epub](https://zhang-yusheng.github.io/ebooks/yusheng-zhang-archive.epub)
-   [pdf](https://zhang-yusheng.github.io/ebooks/yusheng-zhang-archive.pdf)
-   [mobi](https://zhang-yusheng.github.io/ebooks/yusheng-zhang-archive.mobi)

# 项目介绍

为了能够更加轻松地理解整个项目的结构，请下载一份网站内容的 [压缩包](https://timaab.lanzouj.com/i3Zce2almbmj) 并解压，结合解压后的文件/文件夹结构理解项目。

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

因为构建工具不支持中文文件名，所以所有的文件名都必须是英文。

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

当一份资料需要引用各种多媒体素材（如图片、音频）时，需要建立一个与资料名称相同的文件夹，将 markdown 文件和所引用的素材放到同一个文件夹内。

如专辑《口是心非》的所有素材都放在 `albums/1997-10-16-ksxf` 文件夹内。

这样的好处是，未来如果要迁移资料，可以直接移动整个文件夹。

# 发布新资料

目前有两种方法投递资料到网站上：

1. 通过邮件将整理好的资料发送给 `zhang-yusheng@qq.com`，注明要发布到的类别，是专辑，还是演出……
2. 使用 GitHub 自带的 merge request

站长有空时就会手动将新资料合入网站

# 未来计划

-   将 [rfhits/Collected\-Work\-of\-Tom\-Chang: 张雨生文集](https://github.com/rfhits/Collected-Work-of-Tom-Chang) 资料迁移到本网站
