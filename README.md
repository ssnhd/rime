



# Rime 输入法（鼠须管） for Mac 配置方案

### 准备：

**安装字体**： Mac 不包含所有字体，防止个别字出现乱码，将本帖【font】内的两个字体安装到 Mac 字体册。

![](pic/00字体.png)

**代码编辑器**：为方便打开配置文件，需安装编辑器软件，例如：[Visual Studio Code](https://code.visualstudio.com/)（免费）或 [Sublime Text](https://www.sublimetext.com/)（收费）。

![](pic/00编辑器.png)

---
### 一、安装输入法

适用于 macOS 10.9+

前往 [rime.im](https://rime.im/) 下载，初次安装，需注销并重新登录。

点选菜单栏输入法里的【ㄓ】图标，开始使用鼠须管输入法。

![](pic/01安装.png)


---

### 二、定制输入法

点选【用户设定】打开目录文件（防止操作错误，可将此目录文件备份）。

![](pic/02设定.png)

将本帖【配置文件】粘贴到鼠须管目录文件夹内。

![](pic/02目录.png)

点击【重新部署】完成。

> 注：修改任何文件，都要点击【重新部署】（快捷键： `Control + Option + ｀`）才能生效。

![](pic/02重新部署.png)

---
### 三、皮肤主题设置

用 `squirrel.custom.yaml` 保存用户的设置。

可以添加自己的皮肤，格式代码详见 [Gist](https://gist.github.com/lotem/2290714)。

切换皮肤主题，只要在 `style/color_scheme:` 后方修改为相应的皮肤名称，保存并【重新部署】。

![](pic/03皮肤.png)

上图参数显示效果：

![](pic/03皮肤效果.png)

少数情况下会遇到 `0x` 开头的颜色值，比如 `hilited_candidate_back_color: 0xD05B21`，末尾的 `0xD05B21` 表示第一候选词背景颜色。如果同一颜色输入不同表示方式，那么显示就会变化。

* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![](pic/04配色.jpg)

---
### 四、输入法方案

快捷键 `Control +｀` 调出方案。

![](pic/04输入法方案.png)

用 `default.custom.yaml` 保存用户的设置。

![](pic/04方案.png)

---

### 五、自定义快捷字符

以朙月拼音简化字为例：用 `luna_pinyin_simp.custom.yaml` 保存用户的设置。

快捷键 `/+快捷字母` 输出快捷字符。



![](pic/05自定义字符.png)



示例：输入 `/dn`，输出 ⌘ ⌥ ⇧ ⌃ ⎋ ⇪  ⌫（如下图）。

![](pic/05示例.png)

---

### 六、词库设置

用 `luna_pinyin.extended.dict.yaml` 保存用户的设置。

将词库放入目录文件夹后，将词库添加进去（名称去掉 `.dict.yaml`），保存并【重新部署】。

示例：音乐词库 `luna_pinyin.music.dict.yaml` 只需输入 `- luna_pinyin.music`。

![](pic/06词库.png)

---
### 七、搜狗词库转换方法
打开[搜狗词库](https://pinyin.sogou.com/dict/)下载 `.scel` 词库文件。

![](pic/071.png)

下载深蓝词库转换工具 [imewlconverter_Windows.zip](https://github.com/studyzy/imewlconverter/releases) 并打开。

选择 `.scel` 词库文件，点击打开。

> 注：如果工具识别不到词库，请选择所有格式。

![](pic/072.png)

选择【搜狗细胞词库 scel】—>>【Rime 中州韵】，类型选择【拼音】【macOS】，点击确定。

![](pic/073.png)

点击转换。

![](pic/074.png)

生成 `.txt` 文件（也可以选择多个词库生成一个 `txt` 文件）。

![](pic/075.png)

点选【㞢】-【用户设定】打开目录文件，新建一个 `luna_pinyin.sogou.dict.yaml` 文本，输入以下内容。
>注：最后一行 `∙∙∙` 后面加一个换行。

```
# Rime dictionary
# encoding: utf-8
# 搜狗词库 目前包含如下：
# 成语俗语（将词库名称输入到此处，方便日后检查是否重复）

---
name: luna_pinyin.sogou
version: "2021.01.21"
sort: by_weight
use_preset_vocabulary: true
...

```
将 `txt` 里的词库复制粘贴到下面保存，再转至[【六、词库设置】](#六词库设置)添加。


---

附：配置方案来自scomper，本文做部分修改和添加词库。

Telegram 交流群：[加入](https://t.me/rimesquirrel)