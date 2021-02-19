

# Rime 鼠须管 Squirrel 配置文件详解——Mac 上较好用的输入法

![EV1nySmzsxD8QZp](https://i.loli.net/2021/02/05/EV1nySmzsxD8QZp.png)

---

### 目录

1. [安装输入法](#一安装输入法)
2. [定制输入法](#二定制输入法)
3. [输入方案、候选词个数、中英文切换、翻页、快捷键](#三输入方案候选词个数中英文切换翻页快捷键)
4. [载入词库和Emoji](#四载入词库和Emoji)
5. [自定义快捷字符](#五自定义快捷字符)
6. [模糊音](#六模糊音)
7. [输入动态时间、日期、星期](#七输入动态时间日期星期)
8. [自定义短语（文本替换）](#八自定义短语文本替换)
9. [皮肤主题](#九皮肤主题)
10. [在特定程序里关闭中文输入](#十在特定程序里关闭中文输入)
11. [词库设置（本配置包含约200万个词组👍）](#十一词库设置)
12. [搜狗词库转换方法](#十二搜狗词库转换方法)
13. [删除误上屏的错词](#十三删除误上屏的错词)
14. [![Telegram交流群](https://raw.githubusercontent.com/liuour/SVG/aee8b7c77bb0aff2171f5c4b11caba849fc90768/Telegram.svg)](https://t.me/rimesquirrel)
---
### 一、安装输入法

下载鼠须管 [安装包](https://dl.bintray.com/rime/squirrel/Squirrel-0.15.0.zip)，初次安装，需注销并重新登录，点选菜单栏【ㄓ】图标。按组合键 `Control`+`｀` 换出输入法方案选项，到这一步，已经可以使用输入法。

![008eZBHKgy1gn4v5nn7h7j31e20d2wfr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4v5nn7h7j31e20d2wfr.jpg)

获得更好的输入体验，需对输入法进行定制。


---

### 二、定制输入法

下载[档案文件](https://github.com/liuour/rime/archive/master.zip)并解压，首先将【font】两个字体安装到 Mac 字体册。

点选【用户设定】打开目录文件夹，将【配置文件】里的所有文件粘贴进去，并选择覆盖文件。

![008eZBHKgy1gn45cxyphgj31e20ca7e9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45cxyphgj31e20ca7e9.jpg)

```
# 配置文件介绍
custom_phrase.txt                        # 自定义短语（文本替换）             
default.custom.yaml                      # 全局配置（方案、候选词个数、中英文切换、翻页等快捷键）    
easy_en.dict.yaml                        # 英文词典                       
easy_en.schema.yaml                      # 英文词典配套文件               
f_myphrases.dict.yaml                    # 词库（常用符号）                    
installation.yaml                        # 自带文件，可自定义配置文件用户同步数据
luna_pinyin_simp.custom.yaml             # 朙月拼音·简化字配置（挂载中英文、Emoji、模糊音等）
luna_pinyin_simp.schema.yaml             # 朙月拼音·简化字文件
luna_pinyin.1chengshixinxi.dict.yaml     # 词库（城市信息）              
luna_pinyin.2zirankexue.dict.yaml        # 词库（自然科学）                
luna_pinyin.3shehuikexue.dict.yaml       # 词库（社会科学）                
luna_pinyin.4gongchengyingyong.dict.yaml # 词库（工程应用）                
luna_pinyin.5nonglinyuchu.dict.yaml      # 词库（农林渔畜）                
luna_pinyin.6yixueyiyao.dict.yaml        # 词库（医学医药）                
luna_pinyin.7dianziyouxi.dict.yaml       # 词库（电子游戏）                
luna_pinyin.8yishusheji.dict.yaml        # 词库（艺术设计）                
luna_pinyin.9shenghuobaike.dict.yaml     # 词库（生活百科）                
luna_pinyin.10yundongxiuxian.dict.yaml   # 词库（运动休闲）                
luna_pinyin.11renwenkexue.dict.yaml      # 词库（人文科学）                
luna_pinyin.12yulexiuxian.dict.yaml      # 词库（娱乐休闲）                
luna_pinyin.cn_en.dict.yaml              # 词库（英文）                    
luna_pinyin.dict.yaml                    # 词库（单字CC-CEDICT、三拼等）    
luna_pinyin.extended.dict.yaml           # 挂载词库配置                    
opencc                                   # Emoji                    
rime.lua                                 # 动态时间、日期、星期            
squirrel.custom.yaml                     # 皮肤主题                      
user.yaml                                # 自带文件    
```

点击【重新部署】完成定制。注：修改任何文件都要重新部署（快捷键 `Control`+`Option`+`｀`）生效。

![008eZBHKgy1gn45fjrwu3j31e00c87e7](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

到这里可以近乎完美地使用输入法了，如果你想对更多细节进行调整，继续往下看。

---
### 三、输入方案、候选词个数、中英文切换、翻页、快捷键

打开 `default.custom.yaml` 。

![2021-01-30-15.44.16](https://tvax2.sinaimg.cn/large/008eZBHKgy1gn5rxl5mprj31rc1cc7a3.jpg)

**切换输入方案**

* 我只是用拼音，所以只保留朙月拼音·简化字，你可以将自己喜欢的输入方案添加进去，例如五笔、双拼、注音等。
* 更多方案名称参考：https://gist.github.com/lotem/2309739

```
schema_list:
  - schema: luna_pinyin_simp      # 朙月拼音简化字
# - schema: luna_pinyin           # 朙月拼音（繁体）
# - schema: terra_pinyin          # 地球拼音 dì qiú pīn yīn
# - schema: double_pinyin_flypy   # 小鶴雙拼
# - schema: wubi86                # 五笔86
```

**候选词个数**

* 数字代表的是候选词个数，根据个人喜欢修改。

```
menu/page_size: 9   # 候选词个数
```

**切换中英文**

* 我将鼠须管设置只输入中文。下面代码表示 `caps_lock` 键只切换大小写，其他键禁用。
*  `commit_code` = 启用，`noop` = 无操作。

```
ascii_composer/good_old_caps_lock: true     # 若为true，caps只切换大小写
ascii_composer/switch_key:
  Caps_Lock: commit_code                    
  Shift_L: noop                             # 左Shift
  Shift_R: noop                             # 右Shift
  Control_L: noop                           # 左Control
  Control_R: noop                           # 右Control
```

**翻页**

* 例如， "[" 和 "]" 翻页按键。

```
- { when: paging, accept: bracketleft, send: Page_Up }
- { when: has_menu, accept: bracketright, send: Page_Down }
```

**快捷键**

* 例如，`Control`+`Shift`+`4` 切换繁简体。
* 更多快捷键参考：https://github.com/rime/rime-prelude/blob/master/key_bindings.yaml

```
 - {accept: "Control+a", send: Home, when: composing}     					# 光标移至首
 - {accept: "Control+e", send: End, when: composing}   							# 光标移至尾
 - {accept: "Control+Shift+2", toggle: ascii_mode, when: always}    # 中英文切换
```


---
### 四、载入词库和Emoji

打开 `luna_pinyin_simp.custom.yaml` 。

**载入词库**

```
#  载入朙月拼音扩充词库
  "translator/dictionary": luna_pinyin.extended
#  拼写纠错
# "translator/enable_correction": true
```

**载入英文词库**

```
# 加载easy_en依赖
  "schema/dependencies/@1": easy_en
# 载入翻译英文的码表翻译器，取名为 english
  "engine/translators/@4": table_translator@english
# english翻译器的设定项
  english:
    dictionary: easy_en
    spelling_hints: 9
    enable_completion: false     # 是否启用英文输入联想补全
    enable_sentence: false
    initial_quality: -4           # 调整英文候选词的位置，如 -3 会更靠后
```

**载入 Emoji 表情**

* Emoji 可以在 opencc 文件夹里修改。

```
emoji_conversion:
  opencc_config: emoji.json
  option_name: show_emoji
  tags: abc
```

---

### 五、自定义快捷字符

打开 `luna_pinyin_simp.custom.yaml` 。

* 设置快捷 Emoji。

```
punctuator:
  import_preset: symbols
  symbols:
    "/fs": [½, ‰, ¼, ⅓, ⅔, ¾, ⅒ ]
    "/xh": [ ＊, ×, ✱, ★, ☆, ✩, ✧, ❋, ❊, ❉, ❈, ❅, ✿, ✲]
    "/dq": [🌍,🌎,🌏,🌐,🌑,🌒,🌓,🌔,🌕,🌖]
    "/sg": [🍇,🍈,🍉,🍊,🍋,🍌,🍍,🍎,🍏,🍐]
    "/dw": [🙈,🙉,🙊,🐵,🐒,🐶,🐕,🐩,🐺,🐱]
    "/bq": [😀,😁,😂,😃,😄,😅,😆,😉,😊,😋]
    "/ss": [💪,👈,👉,👆,👇,✋,👌,👍,👎,✊]
```

![u9ig64xarQvAL23](https://i.loli.net/2021/02/06/u9ig64xarQvAL23.png)

* 默认一个按键会显示多个符号，可根据喜欢修改，例如直接上屏。

  ```
  half_shape:
    "#": "#"
    "*": "*"
    "`": "`"
    "~": "~"
    "@": "@"
    "=": "="
    '\': "、"
    "/": ["/", "÷"]
    "'": { pair: ["「", "」"] }
    "[": "【"
    "]": "】"
    "<": "《"
    ">": "》"
    "*": "*"
    "|": ["｜", "|", "·", "・"]
  recognizer/patterns/punct: "^/([a-z]+|[0-9]0?)$"
  ```


---

### 六、模糊音

打开 `luna_pinyin_simp.custom.yaml `，去掉前面的 ` #` 开启模糊音。 

![008eZBHKgy1gn45ww5v15j31be0xgmzp](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ww5v15j31be0xgmzp.jpg)



---

### 七、输入动态时间、日期、星期

![008eZBHKgy1gn4w304etcj31e00bzjtr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4w304etcj31e00bzjtr.jpg)

将 `rime.lua` 文件添加在 Rime 目录文件内（本配置文件里已包含），可根据自己喜好修改时间、日期、星期快捷词语。

![008eZBHKgy1gn45roiva7j31dw1260w6](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45roiva7j31dw1260w6.jpg)

在对应的输入方式里加入下面代码，例如，朙月拼音简化字，就添加在 `luna_pinyin_simp.custom.yaml` 里。

```
# librime-lua 输入动态时间和日期
  "engine/translators/@6": lua_translator@date_translator
  "engine/translators/@7": lua_translator@time_translator
```

---

### 八、自定义短语（文本替换）

在 `custom_phrase.txt` 设置文本替换。

![008eZBHKgy1gn45wgynfjj31dy04egm0](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45wgynfjj31dy04egm0.jpg)

顺序：`文字` `编码` `权重`（数字越大排序越靠前），使用 `Tab` 键分隔。

![OcBawnQiDRrFstg](https://i.loli.net/2021/02/05/OcBawnQiDRrFstg.jpg)



---
### 九、皮肤主题

用 `squirrel.custom.yaml` 保存皮肤主题的设置。

在 `style/color_scheme:` 后方输入皮肤名字更换主题。可以在将自己配置的皮肤添加进去。

![GR7eBJLUvfFyw1X](https://i.loli.net/2021/02/04/GR7eBJLUvfFyw1X.png)

更多皮肤效果图：[点击这里](https://github.com/liuour/rime-pifu)


* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![008eZBHKgy1gn45ifbfhnj311r0kw769](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

---

### 十、在特定程序里关闭中文输入

用 `squirrel.custom.yaml` 最底部设置应用默认英文输入。

例如，要在 Xcode 里面默认关闭中文输入，又要在 Alfred 里面恢复开启中文输入，可如此设定：

```
app_options/com.apple.Xcode:
    ascii_mode: true
  app_options/com.alfredapp.Alfred: {}
```

例如，要在聚焦搜索（Spotlight）里面默认关闭中文输入，可如此设定：

```
com.apple.Spotlight:
    ascii_mode: true      # ture关闭中文输入
```

![2021-01-30-00.58.26](https://tvax3.sinaimg.cn/large/008eZBHKgy1gn524bmxf0j31820f0dgv.jpg)


---

### 十一、词库设置

用 `luna_pinyin.extended.dict.yaml` 保存词库的设置。

将词库名称去掉 `.dict.yaml` 添加进去。

例如，词库文件 `luna_pinyin.sgmain.dict.yaml`，输入 `- luna_pinyin.sgmain` 即可。

![lb3NAMHRrKTuWXG](https://i.loli.net/2021/02/06/lb3NAMHRrKTuWXG.png)

---
### 十二、搜狗词库转换方法
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
然后将 `.txt` 重命名为 `luna_pinyin.xxx.dict.yaml`，放在 Rime 目录文件夹内，再参考[【十一、词库设置】](#十一词库设置)添加。



---

### 十三、删除误上屏的错词

先把选字光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift`+`Fn`+`Delete` 键（第三方键盘按   `Control`+`Delete`）。

【注】只能从用户词典中删除词组；词库里词组只会取消其调频效果。

