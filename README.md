在 `custom_phrase.txt` 设置文本替换。



# macOS Rime 鼠须管（Squirrel）输入法配置方案详解

![008eZBHKgy1gn456juke6j31e01y9qax](https://ww1.sinaimg.cn/large/008eZBHKgy1gn456juke6j31e01y9qax.jpg)

---

### 目录

1. [安装输入法](#一安装输入法) ........................................................................................................................................... Rime 官网
2. [定制输入法](#二定制输入法) ............................................................................................................................................. 配置文件
3. [皮肤主题](#三皮肤主题) .............................................................................................................................. squirrel.custom.yaml
4. [定制方案、候选词个数、中西文切换、翻页](#四定制方案候选词个数中西文切换翻页) ........................................................................ default.custom.yaml
5. [Emoji，自定义快捷字符](#五自定义快捷字符) ............................................................ Open 文件夹 和 luna_pinyin_simp.custom.yaml 
6. [词库设置](#六词库设置) ............................................................................................................. luna_pinyin.extended.dict.yaml
7. [搜狗词库转换方法](#七搜狗词库转换方法) ..................................................................................................... 后缀名为 `.dict.yaml` 文件
8. [在特定程序里关闭中文输入](#八在特定程序里关闭中文输入) ................................................................................................. squirrel.custom.yaml
9. [输入动态时间、日期、星期](#九输入动态时间日期星期) ............................................................... rime.lua 和 luna_pinyin_simp.custom.yaml
10. [自定义短语（文本替换）](#自定义短语（文本替换）) ................................................................................................................ custom_phrase.txt
11. [模糊音](#十一模糊音) .................................................................................................................. luna_pinyin_simp.custom.yaml 
12. [删除误上屏的错词](#十二删除误上屏的错词)

---

### 准备

1. 下载[档案文件](https://github.com/liuour/rime/archive/master.zip)并解压出【font】和【配置文件】，其他的都不需要。
2. Mac 不包含所有字体，防止个别字出现乱码，将【font】两个字体安装到 Mac 字体册。
3. 编辑器软件推荐使用  [Visual Studio Code](https://code.visualstudio.com/) 或 [Sublime Text](https://www.sublimetext.com/)。

---
### 一、安装输入法

下载 [Rime 鼠须管](https://dl.bintray.com/rime/squirrel/Squirrel-0.14.0.zip)安装包，初次安装，需注销并重新登录，点选菜单栏【ㄓ】图标，立即使用鼠须管输入法。

![008eZBHKgy1gn45bsu72zj31e00ceak3](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45bsu72zj31e00ceak3.jpg)

按组合键 `Control` + `｀` 换出输入法方案选项，切换到朙月拼音·简化字。

![008eZBHKgy1gn4v5nn7h7j31e20d2wfr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4v5nn7h7j31e20d2wfr.jpg)

获得更好的输入体验（例如，皮肤、Emoji、词库、快捷字符、模糊音等），需对输入法进行定制。


---

### 二、定制输入法

点选【用户设定】打开目录文件。

![008eZBHKgy1gn45cxyphgj31e20ca7e9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45cxyphgj31e20ca7e9.jpg)

Rime 目录文件夹里内容删除清空，将【配置文件】粘贴进去。

![008eZBHKgy1gn45evcvwzj31ng12ijw9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45evcvwzj31ng12ijw9.jpg)

点击【重新部署】完成定制。

【注】修改任何文件都要重新部署（`Control` + `Option` + `｀`）才能生效。

![008eZBHKgy1gn45fjrwu3j31e00c87e7](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

---
### 三、皮肤主题

用 `squirrel.custom.yaml` 保存皮肤主题的设置。

在 `style/color_scheme:` 后方输入皮肤名称来更换主题，更多皮肤效果图：[rime-pifu](https://github.com/liuour/rime-pifu)

![008eZBHKgy1gn45h391hcj31dy048jrp](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45h391hcj31dy048jrp.jpg)

![008eZBHKgy1gn46otuizgj31be1rwwmf](https://ww1.sinaimg.cn/large/008eZBHKgy1gn46otuizgj31be1rwwmf.jpg)

**配色方法**

* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![008eZBHKgy1gn45ifbfhnj311r0kw769](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

- 自定配色主题，产生代码的小工具：[Rime 西米 for Squirrel](https://gjrobert.github.io/Rime-See-Me-squirrel/)

---
### 四、定制方案、候选词个数、中西文切换、翻页

用 `default.custom.yaml` 保存输入方案的设置。

支持在方案选单中添加双拼、五笔、粤拼、注音等，保留你需要的。

例如，我用拼音输入所以只保留【朙月拼音】和【朙月拼音·简化字】。

```
- schema: luna_pinyin          # 朙月拼音
- schema: luna_pinyin_simp     # 朙月拼音 简化字模式
- schema: luna_pinyin_tw       # 朙月拼音 台湾正体模式
- schema: terra_pinyin         # 地球拼音 dì qiú pīn yīn
- schema: bopomofo             # 注音
- schema: wubi86               # 五笔86
- schema: wubi_pinyin          # 五笔拼音混合输入
- schema: double_pinyin        # 自然码双拼
- schema: double_pinyin_mspy   # 微软双拼
- schema: double_pinyin_flypy  # 小鹤双拼
```

例如，加入 "[" 和 "]" 翻页按键绑定。

```
- { when: paging, accept: bracketleft, send: Page_Up }
- { when: has_menu, accept: bracketright, send: Page_Down }
```

![008eZBHKgy1gn4vqa7fyuj31be1ao79n](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4vqa7fyuj31be1ao79n.jpg)

---

### 五、自定义快捷字符

以朙月拼音·简化字为例，用 `luna_pinyin_simp.custom.yaml` 保存快捷符号的设置。

![008eZBHKgy1gn45kbr23nj31p0168dii](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45kbr23nj31p0168dii.jpg)

输入 `/bq` 显示表情。

![008eZBHKgy1gn45lbrlxpj31dw03q74h](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45lbrlxpj31dw03q74h.jpg)

输入 `/vmm` 显示卖萌颜文字。

![008eZBHKgy1gn45m9js8vj31dy052jrs](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45m9js8vj31dy052jrs.jpg)

输入 `/hb` 显示货币符号。

![008eZBHKgy1gn45lqmz88j31dy04waah](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45lqmz88j31dy04waah.jpg)

在 opencc 文件夹内可以修改 Emoji、符号、颜文字、货币等。

![008eZBHKgy1gn45mxec5xj31hc0togon](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45mxec5xj31hc0togon.jpg)

---

### 六、词库设置

用 `luna_pinyin.extended.dict.yaml` 保存词库的设置。

将词库名称去掉 `.dict.yaml` 添加进去，保存并重新部署。

示例：词库文件 `luna_pinyin.sgmain.dict.yaml`，输入 `- luna_pinyin.sgmain` 即可。

![008eZBHKgy1gn45nyzbefj31p00viq58](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45nyzbefj31p00viq58.jpg)

---
### 七、搜狗词库转换方法
打开[搜狗词库](https://pinyin.sogou.com/dict/)下载 `.scel` 词库文件。

![008eZBHKgy1gn45oo6pq9j30yg0ngdjf](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45oo6pq9j30yg0ngdjf.jpg)

下载深蓝词库转换工具 [imewlconverter_Windows.zip](https://github.com/studyzy/imewlconverter/releases) 并打开，选择 `.scel` 词库文件，点击打开。

【注】如果工具识别不到词库，请选择所有格式。

![008eZBHKgy1gn45p8561tj30yg0qxtde](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45p8561tj30yg0qxtde.jpg)

选择【搜狗细胞词库 scel】—>>【Rime 中州韵】，类型选择【拼音】【macOS】，点击确定，再点击转换。

![008eZBHKgy1gn45pyrlegj30yg0qotaw](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45pyrlegj30yg0qotaw.jpg)

生成 `.txt` 文件（也可以选择多个词库生成一个 `txt` 文件）。

![008eZBHKgy1gn45qmyev0j31ca0nkdi9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45qmyev0j31ca0nkdi9.jpg)

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

### 八、在特定程序里关闭中文输入

用 `squirrel.custom.yaml` 最底部设置应用默认英文输入。

* 例如，要在 Xcode 里面默认关闭中文输入，又要在 Alfred 里面恢复开启中文输入，可如此设定：

```
app_options/com.apple.Xcode:
    ascii_mode: true
  app_options/com.alfredapp.Alfred: {}
```

【注】：一些版本的 Xcode 标识为 com.apple.dt.Xcode，请注意查看 Info.plist。

* 例如，要在 聚焦搜索（Spotlight）里面默认关闭中文输入，可如此设定：

```
com.apple.Spotlight:
    ascii_mode: true      # ture关闭中文输入
```

![2021-01-30-00.58.26](https://tvax3.sinaimg.cn/large/008eZBHKgy1gn524bmxf0j31820f0dgv.jpg)


---

### 九、输入动态时间、日期、星期

![008eZBHKgy1gn4w304etcj31e00bzjtr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4w304etcj31e00bzjtr.jpg)

将 `rime.lua` 文件添加在 Rime 目录文件内（本配置文件里已包含），可根据自己喜好修改时间、日期、星期快捷词语。

![008eZBHKgy1gn45roiva7j31dw1260w6](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45roiva7j31dw1260w6.jpg)

在对应的输入方式里加入下面代码，例如，朙月拼音简化字，就添加在 `luna_pinyin_simp.custom.yaml` 里。

```
# librime-lua 输入动态时间和日期
  engine/translators/+: 
    - lua_translator@date_translator
    - lua_translator@time_translator
```

![008eZBHKgy1gn45s5d4x7j31dw0e0wfi](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45s5d4x7j31dw0e0wfi.jpg)

---

### 十、自定义短语（文本替换）

在 `custom_phrase.txt` 设置文本替换。

![008eZBHKgy1gn45wgynfjj31dy04egm0](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45wgynfjj31dy04egm0.jpg)

![008eZBHKgy1gn45wm891bj31dy04e0t2](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45wm891bj31dy04e0t2.jpg)

顺序：`文字` `编码` `权重`（数字越大排序越靠前），使用 `Tab` 键分隔。

![2021-01-30-03.06.26](https://tva3.sinaimg.cn/large/008eZBHKgy1gn55tqlol8j317g0liq46.jpg)

---

### 十一、模糊音

在 `luna_pinyin_simp.custom.yaml ` 里设置模糊音。

去掉代码前方的 `#` 保存并重新部署即生效模糊音。

![008eZBHKgy1gn45ww5v15j31be0xgmzp](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ww5v15j31be0xgmzp.jpg)

---

### 十二、删除误上屏的错词

不慎上屏了错误的词组，再打同样的编码时，那错词出现在候选栏，令有洁癖的同学十分不爽。

**方法**：先把选字光标（用 ↑ ↓ 或 ← → 键）移到要删除的词组上，再按下 `Shift+Delete` 或  `Control+Delete`（ 键盘用 `Shift+Fn+Delete`）。

【注】只能够从用户词典中删除词组。用于码表中原有的词组时，只会取消其调频效果。

---

资源参考：

* Rime 官网： https://rime.im/
* lotem Squirrel：[https://github.com/rime/squirrel](https://github.com/rime/squirrel)
* 皮肤：[https://github.com/rime/squirrel/blob/master/data/squirrel.yaml](https://github.com/rime/squirrel/blob/master/data/squirrel.yaml)
* 中英切换：https://gist.github.com/lotem/2981316
* grasonchan ：[https://github.com/grasonchan/squirrel-config](https://github.com/grasonchan/squirrel-config)
* KyleBing Rime ：[https://github.com/KyleBing/rime-wubi86-jidian](https://github.com/KyleBing/rime-wubi86-jidian)

---

Rime 鼠须管交流群：[Telegram](https://t.me/rimesquirrel)

