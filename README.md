

# macOS 好用的输入法 Rime 鼠须管 Squirrel 配置方案详解

![EV1nySmzsxD8QZp](https://i.loli.net/2021/02/05/EV1nySmzsxD8QZp.png)

---

### 目录

1. [安装输入法](#一安装输入法)
2. [定制输入法](#二定制输入法)
3. [皮肤主题](#三皮肤主题)
4. [定制方案、候选词个数、中西文切换、翻页](#四定制方案候选词个数中西文切换翻页)
5. [Emoji，自定义快捷字符](#五自定义快捷字符) 
6. [词库设置](#六词库设置)
7. [搜狗词库转换方法](#七搜狗词库转换方法)
8. [在特定程序里关闭中文输入](#八在特定程序里关闭中文输入)
9. [输入动态时间、日期、星期](#九输入动态时间日期星期)
10. [自定义短语（文本替换）](#十自定义短语文本替换)
11. [模糊音](#十一模糊音) 
12. [删除误上屏的错词](#十二删除误上屏的错词)
13. [![Telegram交流群](https://raw.githubusercontent.com/liuour/SVG/aee8b7c77bb0aff2171f5c4b11caba849fc90768/Telegram.svg)](https://t.me/rimesquirrel)

---

### 准备

1. 下载[档案文件](https://github.com/liuour/rime/archive/master.zip)并解压。
2. Mac 不包含所有字体，防止个别字出现乱码，将【font】两个字体安装到 Mac 字体册。
3. 如果你使用拼音输入本配置文件供参考，不建议将双拼，五笔等其他方案都放在一起，原因是可能会出现拼音和候选词不同。

---
### 一、安装输入法

下载鼠须管安装包 [![Download](https://raw.githubusercontent.com/liuour/SVG/07680779bf57800d72e786466f26cd2d5f339826/Download.svg)](https://dl.bintray.com/rime/squirrel/Squirrel-0.14.0.zip)，初次安装，需注销并重新登录，点选菜单栏【ㄓ】图标，即可使用鼠须管输入法。

按组合键 `Control`+`｀` 换出输入法方案选项。

![008eZBHKgy1gn4v5nn7h7j31e20d2wfr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4v5nn7h7j31e20d2wfr.jpg)

获得更好的输入体验，需对输入法进行定制。


---

### 二、定制输入法

| 配置文件                                 | 注释                                                       |
| ---------------------------------------- | ---------------------------------------------------------- |
| custom_phrase.txt                        | 自定义短语（文本替换）                                     |
| default.custom.yaml                      | 全局配置（方案、候选词个数、中英文切换、翻页等快捷键）     |
| easy_en.dict.yaml                        | 英文词典                                                   |
| easy_en.schema.yaml                      | 英文词典配套文件                                           |
| f_myphrases.dict.yaml                    | 自造短语词库                                               |
| installation.yaml                        | 自带文件，可自定义配置文件用户同步数据                     |
| luna_pinyin_simp.custom.yaml             | 朙月拼音·简化字配置（挂载英文、Emoji、模糊音、动态时间等） |
| luna_pinyin.1chengshixinxi.dict.yaml     | 词库（城市信息）                                           |
| luna_pinyin.2zirankexue.dict.yaml        | 词库（自然科学）                                           |
| luna_pinyin.3shehuikexue.dict.yaml       | 词库（社会科学）                                           |
| luna_pinyin.4gongchengyingyong.dict.yaml | 词库（工程应用）                                           |
| luna_pinyin.5nonglinyuchu.dict.yaml      | 词库（农林渔畜）                                           |
| luna_pinyin.6yixueyiyao.dict.yaml        | 词库（医学医药）                                           |
| luna_pinyin.7dianziyouxi.dict.yaml       | 词库（电子游戏）                                           |
| luna_pinyin.8yishusheji.dict.yaml        | 词库（艺术设计）                                           |
| luna_pinyin.9shenghuobaike.dict.yaml     | 词库（生活百科）                                           |
| luna_pinyin.10yundongxiuxian.dict.yaml   | 词库（运动休闲）                                           |
| luna_pinyin.11renwenkexue.dict.yaml      | 词库（人文科学）                                           |
| luna_pinyin.12yulexiuxian.dict.yaml      | 词库（娱乐休闲）                                           |
| luna_pinyin.cn_en.dict.yaml              | 词库（英文）                                               |
| luna_pinyin.dict.yaml                    | 词库（单字CC-CEDICT、三拼等）                              |
| luna_pinyin.extended.dict.yaml           | 挂载词库配置                                               |
| opencc                                   | Emoji 表情                                                 |
| rime.lua                                 | 动态时间、日期、星期                                       |
| squirrel.custom.yaml                     | 皮肤主题                                                   |
| user.yaml                                | 自带文件                                                   |

点选【用户设定】打开目录文件夹，将【配置文件】里的所有文件粘贴进去，并选择覆盖文件。

![008eZBHKgy1gn45cxyphgj31e20ca7e9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45cxyphgj31e20ca7e9.jpg)

点击【重新部署】完成定制。注：修改任何文件都要重新部署（快捷键 `Control`+`Option`+`｀`）生效。

![008eZBHKgy1gn45fjrwu3j31e00c87e7](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

---
### 三、皮肤主题

用 `squirrel.custom.yaml` 保存皮肤主题的设置。

在 `style/color_scheme:` 后方输入皮肤名字更换主题。可以在将自己配置的皮肤添加进去。

![GR7eBJLUvfFyw1X](https://i.loli.net/2021/02/04/GR7eBJLUvfFyw1X.png)

更多皮肤效果图：[点击这里](https://github.com/liuour/rime-pifu)


* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![008eZBHKgy1gn45ifbfhnj311r0kw769](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

---
### 四、定制方案、候选词个数、中西文切换、翻页

用 `default.custom.yaml` 保存输入方案的设置。

例如，添加自己喜欢的输入方式。

```
- schema: luna_pinyin          # 朙月拼音
- schema: luna_pinyin_simp     # 朙月拼音 简化字模式
- schema: wubi86               # 五笔86
- schema: double_pinyin_flypy  # 小鹤双拼
```

例如，允许左 Shift 切换中英文，如果想禁用，将 `commit_code` 改为 `noop`。

```
Shift_L: commit_code     # 允
```

例如，加入 "[" 和 "]" 翻页按键绑定。

```
- { when: paging, accept: bracketleft, send: Page_Up }
- { when: has_menu, accept: bracketright, send: Page_Down }
```

例如，`Control`+`Shift`+`4` 切换繁简体。

```
- {accept: "Control+Shift+4", toggle: simplification, when: always}   # 繁简体切换
```

![2021-01-30-15.44.16](https://tvax2.sinaimg.cn/large/008eZBHKgy1gn5rxl5mprj31rc1cc7a3.jpg)

---

### 五、自定义快捷字符

以朙月拼音·简化字为例，用 `luna_pinyin_simp.custom.yaml` 保存快捷符号的设置。

![u9ig64xarQvAL23](https://i.loli.net/2021/02/06/u9ig64xarQvAL23.png)

![HgKrp7Fmf8jEXBd](https://i.loli.net/2021/02/06/HgKrp7Fmf8jEXBd.png)

【附】输入字符时候选词关联的Emoji表情在〔opencc〕文件夹。

---

### 六、词库设置

用 `luna_pinyin.extended.dict.yaml` 保存词库的设置。

将词库名称去掉 `.dict.yaml` 添加进去。

例如，词库文件 `luna_pinyin.sgmain.dict.yaml`，输入 `- luna_pinyin.sgmain` 即可。

![lb3NAMHRrKTuWXG](https://i.loli.net/2021/02/06/lb3NAMHRrKTuWXG.png)

---
### 七、搜狗词库转换方法
打开[搜狗词库](https://pinyin.sogou.com/dict/)下载 `.scel` 词库文件。

下载深蓝词库转换工具 [imewlconverter_Windows.zip](https://github.com/studyzy/imewlconverter/releases) 并打开，选择词库，点击打开。

【注】如果工具识别不到词库，选择所有格式。

选择【搜狗细胞词库 scel】-【无拼音纯汉字】，再点击转换保存在本地。

![bVyxtQvzXmBjCTP](https://i.loli.net/2021/02/05/bVyxtQvzXmBjCTP.png)

生成 `.txt` 文件（也可以选择多个词库生成一个 `.txt` 文件）。

![008eZBHKgy1gn45qmyev0j31ca0nkdi9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45qmyev0j31ca0nkdi9.jpg)

将下面代码粘贴在 `.txt` 文档内最上方， `∙∙∙` 后面加一个换行。

名称格式：`luna_pinyin.xxx` 

```
# Rime dictionary
# encoding: utf-8
# 搜狗词库 目前包含如下：
# 成语俗语（将词库名称输入到此处，方便日后检查是否重复）

---
name: luna_pinyin.xxx
version: "2021.01.21"
sort: by_weight
use_preset_vocabulary: true
...

```
然后将 `.txt` 重命名为 `luna_pinyin.xxx.dict.yaml`，放在 Rime 目录文件夹内，再参考[【六、词库设置】](#六词库设置)添加。

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

顺序：`文字` `编码` `权重`（数字越大排序越靠前），使用 `Tab` 键分隔。

![OcBawnQiDRrFstg](https://i.loli.net/2021/02/05/OcBawnQiDRrFstg.jpg)

---

### 十一、模糊音

在 `luna_pinyin_simp.custom.yaml ` 里设置模糊音。

![008eZBHKgy1gn45ww5v15j31be0xgmzp](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ww5v15j31be0xgmzp.jpg)

---

### 十二、删除误上屏的错词

不慎上屏了错误的词组，再打同样的拼音错词出现在候选栏，十分不爽。

先把选字光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift`+`Fn`+`Delete` 键（第三方键盘按   `Control`+`Delete`）。

【注】只能够从用户词典中删除词组；用于词库里词组时，只会取消其调频效果。
