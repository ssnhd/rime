



# macOS Rime 鼠须管（Squirrel）输入法配置方案详解

如果你在寻找一款 macOS 上好用的输入法，那么现在我告诉你，聪明的输入法懂我心意，保护个人隐私，从这里开始。

![](pic/rime效果图1.jpg)

---

1. [安装输入法](#一安装输入法)
2. [定制输入法](#二定制输入法)
3. [皮肤主题](#三皮肤主题设置)
4. [输入法切换](#四输入法切换)
5. [Emoji，自定义快捷字符](#五自定义快捷字符)
6. [词库设置](#六词库设置)
7. [搜狗词库转换方法](#七搜狗词库转换方法)
8. [App 默认英文输入](#八App-默认英文输入)
9. [输入动态时间、日期、星期](#九输入动态时间日期星期)
10. [文本替换](#十文本替换)

---

### 准备

下载解压出【font】字体和【配置文件】。

![](pic/02下载.png)

**安装字体**： Mac 不包含所有字体，防止个别字出现乱码，将本帖【font】内的两个字体安装到 Mac 字体册。

![](pic/00字体.png)

**代码编辑器**：为方便编辑配置文件，需安装编辑器软件，例如 [Visual Studio Code](https://code.visualstudio.com/)（免费）或 [Sublime Text](https://www.sublimetext.com/)（收费）。

![](pic/00编辑器.png)

---
### 一、安装输入法

适用于 macOS 10.9+

前往 [rime.im](https://rime.im/) 下载，初次安装，需注销并重新登录。

点选菜单栏输入法里的【ㄓ】图标，开始使用鼠须管输入法。

![](pic/01安装.png)

想要更好的输入体验，例如，更换皮肤，添加词库，快捷键等，需要完成下面定制设置。


---

### 二、定制输入法

点选【用户设定】打开目录文件（防止操作错误，可将此目录文件备份）。

![](pic/02设定.png)

将本帖【配置文件】粘贴到鼠须管目录文件夹内。

![](pic/02.png)

点击【重新部署】完成。

> 注：修改任何文件，都要点击【重新部署】（快捷键： `Control + Option + ｀`）才能生效。

![](pic/02重新部署.png)

---
### 三、皮肤主题设置

用 `squirrel.custom.yaml` 保存皮肤主题的设置。

在 `color_scheme:` 后方输入皮肤名称来更换主题，保存并【重新部署】。

![](pic/03.png)

上图参数显示效果：

![](pic/03皮肤.png)

【附】更多皮肤主题：[rime/squirrel](https://github.com/rime/squirrel/blob/master/data/squirrel.yaml)

![](pic/aqua.png)

 `0x` 开头的颜色值，比如 `hilited_candidate_back_color: 0xD05B21`，末尾的 `0xD05B21` 表示第一候选词背景颜色。

* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![](pic/04配色.jpg)

---
### 四、输入法切换

快捷键 `Control +｀` 调出方案。

![](pic/04切换.png)

用 `default.custom.yaml` 保存输入方案的设置。

![](pic/04方案切换.png)

---

### 五、自定义快捷字符

以【朙月拼音·简化字】为例，用 `luna_pinyin_simp.custom.yaml` 保存快捷符号的设置。

![](pic/05.png)

输入 `/bq` 显示表情。

![](pic/05表情.png)

输入 `/vmm` 显示卖萌颜文字。

![](pic/05颜文字.png)

输入 `/hb` 显示货币符号。

![](pic/05货币.png)

在 opencc 文件夹内可以修改 Emoji、符号、颜文字、货币等。

![](pic/05Emoji.png)

---

### 六、词库设置

用 `luna_pinyin.extended.dict.yaml` 保存词库的设置。

将词库名称去掉 `.dict.yaml` 添加进去，保存并【重新部署】。

示例：搜狗词库 `luna_pinyin.sgmain.dict.yaml` 只需输入 `- luna_pinyin.sgmain`。

![](pic/06.png)

---
### 七、搜狗词库转换方法
打开[搜狗词库](https://pinyin.sogou.com/dict/)下载 `.scel` 词库文件。

![](pic/071.png)

下载深蓝词库转换工具 [imewlconverter_Windows.zip](https://github.com/studyzy/imewlconverter/releases) 并打开。

选择 `.scel` 词库文件，点击打开。

> 注：如果工具识别不到词库，请选择所有格式。

![](pic/072.png)

选择【搜狗细胞词库 scel】—>>【Rime 中州韵】，类型选择【拼音】【macOS】，点击确定，再点击转换。

![](pic/073.png)

生成 `.txt` 文件（也可以选择多个词库生成一个 `txt` 文件）。

![](pic/075.png)

将下面代码粘贴在 `txt` 文档（可以将关键词写进去，防止以后添加词库重复）里最上方。

【注】最后一行 `∙∙∙` 后面加一个换行。

```
# Rime dictionary
# encoding: utf-8
# 搜狗词库 目前包含如下：
# 成语俗语（将词库名称输入到此处，方便日后检查是否重复）

---
name: luna_pinyin.sgmain
version: "2021.01.21"
sort: by_weight
use_preset_vocabulary: true
...

```
然后保存为 `luna_pinyin.sgmain.dict.yaml` 并放在 Rime 目录文件内，再参考[【六、词库设置】](#六词库设置)添加。

---

### 八、App 默认英文输入

在 `squirrel.custom.yaml` 最底部设置 App 默认英文输入。

![](pic/08.png)


---

### 九、输入动态时间、日期、星期

将 [rime.lua](https://github.com/KyleBing/rime-wubi86-jidian/blob/master/rime.lua) 文件添加在 Rime 目录文件内（本配置文件里已包含），可根据自己喜好修改时间、日期、星期快捷词语。

![](pic/09日期.png)

在对应的输入方式里加入下面代码，例如，朙月拼音简化字，就添加在 `luna_pinyin_simp.custom.yaml` 里。

```
# librime-lua 输入动态时间和日期
  engine/translators/+: 
    - lua_translator@date_translator
    - lua_translator@time_translator
```

![](pic/09.png)

![](pic/10时间.png)

![](pic/10日期.png)

![](pic/10星期.png)

---

### 十、文本替换

在 `custom_phrase.txt` 设置文本替换。

> 顺序：`文字` `编码` `权重`（数字越大排序越靠前，可选）。短语使用 `Tab` 键分隔。

![](pic/10wtf.png)

叠字输入。

![](pic/10long.png)

![](pic/10文本.png)

---

资源参考：

* Rime 官网： https://rime.im/
* lotem Squirrel：[https://github.com/rime/squirrel](https://github.com/rime/squirrel)
* 皮肤：[https://github.com/rime/squirrel/blob/master/data/squirrel.yaml](https://github.com/rime/squirrel/blob/master/data/squirrel.yaml)
* 中英切换自定义：https://gist.github.com/lotem/2981316
* grasonchan 鼠须管朙月拼音配置文件：[https://github.com/grasonchan/squirrel-config](https://github.com/grasonchan/squirrel-config)
* KyleBing Rime 五笔输入法：[https://github.com/KyleBing/rime-wubi86-jidian](https://github.com/KyleBing/rime-wubi86-jidian)

---

Rime 鼠须管交流群：[Telegram](https://t.me/rimesquirrel)

