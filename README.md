## Rime 鼠须管（Squirrel）朙月拼音、小鹤双拼、自然码双拼配置详解

![](https://i.imgur.com/nm2Wk1F.jpg)

### 主要特点

* 朙月拼音、小鹤双拼、自然码双拼、大写数字
* 词库不丢失，配置里包含约 170 万搜狗词库
* Emoji 与 macOS 同步
* 动态输入时间、日期、星期
* 速度快、开源、不联网、DIY 空间大
* 缺点：上手难度大，前期自造词准确度低

***
### 先看

* 目录包含大部分详解，建议先看完；未能解决可以 [Issues](https://github.com/qingmail/rime/issues)（[含关闭 Issues](https://github.com/qingmail/rime/issues?q=is%3Aissue+is%3Aclosed)），或加入 [![](https://img.shields.io/badge/Telegram-%E8%AE%A8%E8%AE%BA%E7%BE%A4-%2323A5E4)](https://t.me/V2EXPro)
* 安装鼠须管建议打开通知，部署配置文件会实时提示是否成功。
* 更新日志：[点击这里](https://github.com/qingmail/rime/wiki#%E6%9B%B4%E6%96%B0%E6%97%A5%E5%BF%97)

***

### 目录

1. [安装输入法](#安装输入法)
2. [备份安装包](#备份安装包)
3. [定制输入法](#定制输入法)
4. [输入方案](#输入方案)
5. [大写数字](#大写数字)
6. [候选词个数](#候选词个数)
7. [中英文切换键](#中英文切换键)
8. [快捷键](#快捷键)
9. [回车清码](#回车清码)
10. [词库文档格式](#词库文档格式)
11. [外挂词库](#外挂词库)
12. [搜狗词库转换方法](https://github.com/qingmail/sogou-dict-transform)
13. [修改 Emoji](#修改-emoji)
14. [载入外挂词库和 Emoji](#载入外挂词库和-Emoji)
15. [关闭 Emoji](#关闭-emoji)
16. [快捷符号](#快捷符号)
17. [模糊音](#模糊音)
18. [智能纠错](#智能纠错)
19. [动态时间、日期、星期](#动态时间日期星期)
20. [自定义短语](#自定义短语)
21. [皮肤](#皮肤)
22. [特定程序里关闭开启中文输入](#特定程序里关闭开启中文输入)
23. [特定程序里中文输入英文标点](#特定程序里中文输入英文标点)
24. [删除错词](#删除错词)
25. [删除生僻字](https://github.com/qingmail/rime-rare-word)
26. [同步](#同步)
27. [报错日志](#报错日志)
28. [卸载](#卸载鼠须管)
---
### 安装输入法

1. 下载[鼠须管](https://rime.im/)并安装。
2. 菜单栏点选【ㄓ】图标，开始使用输入法。
> 注：默认为繁体输入，通过快捷键 `Control+｀` 呼出方案，切换输入方式，例如选择【朙月拼音·简化字】简体输入。

配置文件路径：
* 程序配置路径: `/Library/Input Methods/Squirrel.app/Contents/SharedSupport`
* 用户配置路径: `~/Library/Rime`（一般情况下，我们只用到这个）

---

### 备份安装包

防止定制输入法操作不当无法恢复，建议先为初始配置做个备份。在【终端】中输入或粘贴以下命令，按回车键。

```
cp -r ~/Library/Rime ~/Library/Rime.bak
```

配置文件路径（`~/Library/Rime`）多出【Rime.bak】即备份文件。

![](https://tvax2.sinaimg.cn/large/008jMPXrgy1gr7uvc1gflj31m40v00vw.jpg)

> 还原方法：【Rime】文件夹清空，将【Rime.bak】内的文件粘贴过去，重新部署。

---

### 定制输入法

下载[配置文件](https://github.com/qingmail/rime/archive/refs/heads/master.zip)解压得到【配置文件】和【花园明朝字体】，因为 macOS 不含部分生僻字，所以将花园明朝字体安装到字体册。

点选**用户设定**（`~/Library/Rime`）打开目录文件夹，将【配置文件】 里所有文件复制粘贴进去，并选择覆盖。

![](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45cxyphgj31e20ca7e9.jpg)

```
# 定制配置文件说明
custom_phrase.txt                 # 自定义短语
default.custom.yaml               # 全局设置
double_pinyin_flypy.custom.yaml   # 小鹤双拼
double_pinyin_flypy.schema.yaml   # 小鹤双拼
double_pinyin.custom.yaml         # 自然码双拼
double_pinyin.schema.yaml         # 自然码双拼
easy_en.dict.yaml                 # 英文词典
easy_en.schema.yaml               # 英文词典
luna_pinyin_simp.custom.yaml      # 朙月拼音·简化字
luna_pinyin_simp.schema.yaml      # 朙月拼音·简化字
luna_pinyin.custom.yaml           # 朙月拼音
luna_pinyin.schema.yaml           # 朙月拼音
luna_pinyin.extended.dict.yaml    # 挂载词库
luna_pinyin.dict.yaml             # 词库（汉字）
luna_pinyin.sogou.dict.yaml       # 词库（搜狗）
luna_pinyin.zonghe.dict.yaml      # 词库（综合）
numbers.schema.yaml               # 大写数字
opencc                            
  ├── emoji_word.txt              # Emoji
  └── emoji.json           
rime.lua                          # 动态时间、日期、星期
squirrel.custom.yaml              # 皮肤
```


点击**重新部署**（快捷键 `Control+Option+｀`），到这里完成定制，如对功能进行探索或调整，继续往下看。

> 修改任何配置文件都要**重新部署**生效；
> 本配置里搜狗词库较大，第一次部署时间会稍长。

![](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)


---
### 输入方案

如果输入方案配置文件（例如下面的大写数字）已加入配置文件内，需要将输入方案名称添加进 `default.custom.yaml`（按 `Control+｀` 切换输入方案）。

```
patch:
  schema_list:
    - schema: luna_pinyin_simp      # 朙月拼音简化字
    - schema: luna_pinyin           # 朙月拼音
    - schema: double_pinyin_flypy   # 小鹤双拼
    #- schema: double_pinyin         # 自然码双拼
    - schema: numbers               # 大写数字
```

> 其他输入方案[点击这里](https://github.com/rime/plum)。推荐使用 [Visual Studio Code](https://code.visualstudio.com/) 打开 `.yaml` 文件（[Tab](https://twitter.com/qingmail/status/1357338760623529988) 键可能需要修改，因人而异）。

---

### 大写数字

大写数字输入方案配置文件 `numbers.schema.yaml`。将下面代码添加在 `default.custom.yaml`（默认已添加）。

```
- schema: numbers               # 大写数字
```
用法：
| 按键  |  输出 |✂️|按键（按住Shift）|输出 |
|---|---|---|---|---|
| 1234567890  | 壹贰叁肆伍陆柒捌玖零  |✂️| 1234567890  | 一二三四五六七八九〇  |
| wqbsjfd.  |  万仟佰拾角分第点 |✂️|  wqbsjfd. |  万千百十角分第点 |
|  z | 整之  |✂️| z  | 整之  |
|  y | 元月亿  |✂️| y  | 元月亿  |


![](https://i.loli.net/2021/04/14/qYxrowydRaAUvzP.gif)

---

### 候选词个数

打开 `default.custom.yaml` 文件，数字即候选词个数。

```
  menu/page_size: 9   # 候选词个数
```

---

### 中英文切换键

打开 `default.custom.yaml` 文件，设置切换中英文。

```
  ascii_composer/good_old_caps_lock: true   # 若为true，caps只切换大小写
  ascii_composer/switch_key:
    Caps_Lock: commit_code                    
    Shift_L: commit_code   # 左Shift，关闭noop
    Shift_R: noop          # 右Shift
    Control_L: noop        # 左Control
    Control_R: noop        # 右Control
```

> 注1：Mac 上鼠须管不能区分左右 `Shift` ，因此左右 `Shift` 键作用一样。
>
> 注2：如果 `caps` 键不能切换大小写，打开 Mac 系统偏好设置 - 键盘 - 输入法 - 取消勾选“使用大写锁定键切换“美国”输入模式”。

---

### 快捷键

打开 `default.custom.yaml` 文件，设置翻页和其他快捷键（关闭某项在前面添加 `#`）。

```
key_binder/bindings: # 翻页
  - { when: composing, accept: ISO_Left_Tab, send: Page_Up }  # "tab"翻页
  - { when: composing, accept: Shift+Tab, send: Page_Up }
  - { when: composing, accept: Tab, send: Page_Down }     
  - { when: paging, accept: minus, send: Page_Up }            # "-"上一页
  - { when: has_menu, accept: equal, send: Page_Down }        # "="下一页
  - { when: paging, accept: bracketleft, send: Page_Up }      # "["上一页
  - { when: has_menu, accept: bracketright, send: Page_Down } # "]"下一页
  #- { when: paging, accept: comma, send: Page_Up }            # ","上一页
  #- { when: has_menu, accept: period, send: Page_Down }       # "."下一页

  #- {accept: "Control+a", send: Home, when: composing}                   # 光标移至首
  #- {accept: "Control+e", send: End, when: composing}                    # 光标移至尾
  #- {accept: "Control+Shift+1", select: .next, when: always}             # 切换输入方案
  #- {accept: "Control+Shift+2", toggle: ascii_mode, when: always}        # 中英文切换
  #- {accept: "Control+Shift+3", toggle: full_shape, when: always}        # 全角/半角切换
  - {accept: "Control+Shift+4", toggle: simplification, when: always}    # 繁简体切换
  #- {accept: "Control+Shift+5", toggle: extended_charset, when: always}  # 通用/增广切换（显示生僻字）
```

更多快捷键：[点击这里](https://github.com/rime/rime-prelude/blob/master/key_bindings.yaml)

---

### 回车清码

打开 `default.custom.yaml` 文件，找到下面代码（默认关闭，若开启去掉 `#`）。

```
  #- {accept: Return, send: Escape, when: composing} 
```

---

### 词库文档格式

文件命名为 <词库名>.dict.yaml。 

```
# 以 --- ... 分别标记出 YAML 文档的起始与结束位置
# 在 ... 下方空一行

---
name: luna_pinyin            # 词库名
version: "0.9"               # 版本
sort: by_weight              # by_weight（词频高低排序）或 original（保持原码表中的顺序）
use_preset_vocabulary: true  # true 或 false，是否导入预设词汇八股文
...

# 格式每行定义一条〔文字－编码〕，字符与码表之间使用 tab 键，码表之间使用空格键。
测	ce
测试	ce shi
目的地	mu di di
```

---

### 外挂词库

打开 `luna_pinyin.extended.dict.yaml` 文件，找到 `import_tables`，将词库名称添加在下方。

```
import_tables:
  - luna_pinyin
  - luna_pinyin.sogou
  - luna_pinyin.zonghe
```

---

### 修改 Emoji

打开 opencc 文件夹内 `emoji_word.txt` 修改 Emoji。

规则：`字符` + `字符` + `Emoji`；字符之间用 `tab` 键分隔，字符和 Emoji 之间用 `空格` 键分隔。

![](https://tva2.sinaimg.cn/large/008eZBHKly1goxgt4aawqj31ao0geq4o.jpg)

---

### 载入外挂词库和 Emoji

打开 `luna_pinyin_simp.custom.yaml` 文件，载入中 / 英文词库和 Emoji。

```
  engine/filters:
      - simplifier
      - simplifier@emoji_conversion
      - uniquifier
      - charset_filter@gbk              # (※3) GBK 过滤
      - single_char_filter

  emoji_conversion:
    opencc_config: emoji.json
    option_name: show_emoji
    tags: abc
    # tips: all    # Emoji 显示注释（去掉 # 开启）

# 改写拼写运算，含英文的词汇（luna_pinyin.cn_en.dict.yaml）不影响简拼
  "speller/algebra/@before 0": xform/^([b-df-hj-np-tv-z])$/$1_/

#  载入朙月拼音扩充词库
  "translator/dictionary": luna_pinyin.extended

# 加载easy_en依赖
  "schema/dependencies/@1": easy_en
# 载入翻译英文的码表翻译器，取名为 english
  "engine/translators/@4": table_translator@english
# english翻译器的设定项
  english:
    dictionary: easy_en
    spelling_hints: 9
    enable_completion: false      # 是否启用英文输入联想补全
    enable_sentence: false
    initial_quality: 1            # 调整英文候选词的位置
```
---

### 关闭 Emoji

按 `Control + ｀` 组合键，选择输入方案。

* 关闭 Emoji 选择 🈶 → 🈚️
* 开启 Emoji 选择 🈚️ → 🈶

![](https://tvax4.sinaimg.cn/large/008eZBHKly1gp3nfu2fenj31ao04s3z0.jpg)

---

### 快捷符号

打开 `luna_pinyin_simp.custom.yaml` 文件，找到 `punctuator`，修改快捷 Emoji 和符号。

```
 # 符号快速输入和部分符号的快速上屏
  punctuator:
    import_preset: symbols
    symbols:
      "/fs": [½, ‰, ¼, ⅓, ⅔, ¾, ⅒ ]
      "/xh": [ ＊, ×, ✱, ★, ☆, ✩, ✧, ❋, ❊, ❉, ❈, ❅, ✿, ✲]
      "/dq": [🌍,🌎,🌏,🌐,🌑,🌒,🌓,🌔,🌕,🌖,🌗,🌘]
      "/sg": [🍇,🍉,🍌,🍍,🍎,🍏,🍑,🍒,🍓,🍗,🍦,🎂,🍺,🍻]
      "/dw": [🙈,🐵,🐈,🐷,🐨,🐼,🐾,🐔,🐬,🐠,🦋]
      "/bq": [😀,😁,😂,😃,😄,😅,😆,😉,😊,😋,😎,😍,😘,😗]
      "/ss": [💪,👈,👉,👆,👇,✋,👌,👍,👎,✊,👊,👋,👏,👐]
    half_shape:
      "#": "#"
      "*": "*"
      "`": "`"
      "~": "~"
      "@": "@"
      "=": "="
      '\': "、"
      "%": "%"
      "$": ["¥", "$", "€", "£", "¢", "¤"]
      "|": ["|", "｜", "·", "・", "§", "¦", "‖", "︴"]
      "/": ["/", "÷"]
      "'": { pair: ["「", "」"] }
      "[": ["【", "〔", "［"]
      "]": ["】", "〕", "］"]
      "<": "《"
      ">": "》"

  recognizer/patterns/punct: "^/([a-z]+|[0-9]0?)$"
```



---

### 模糊音

示例：打开朙月拼音简化字 `luna_pinyin_simp.custom.yaml ` 文件，找到下面代码进行设置。 

```
# 模糊拼音
  'speller/algebra':
    - erase/^xx$/                      # 第一行保留

    # 模糊音定義
    # 需要哪組就刪去行首的 # 號，單雙向任選
    #- derive/^([zcs])h/$1/             # zh, ch, sh => z, c, s
    #- derive/^([zcs])([^h])/$1h$2/     # z, c, s => zh, ch, sh

    #- derive/^n/l/                     # n => l
    #- derive/^l/n/                     # l => n
```

---

### 智能纠错

示例：打开朙月拼音简化字 `luna_pinyin_simp.custom.yaml` 文件，找到下面代码进行设置。

```
    # 自動糾正一些常見的按鍵錯誤
    - derive/([aeiou])ng$/$1gn/        # dagn => dang 
    - derive/([dtngkhrzcs])o(u|ng)$/$1o/  # zho => zhong|zhou
    - derive/ong$/on/                  # zhonguo => zhong guo
    - derive/ao$/oa/                   # hoa => hao
    - derive/([iu])a(o|ng?)$/a$1$2/    # tain => tian
```

---

### 动态时间、日期、星期
打开 `Rime.lua` 文件修改编码和输出格式。

* `time` = `时间`
* `date` = `日期`
* `week` = `星期`

> 注：例如将时间设为 `sj`，双拼用户不建议改为两位字母，会存在冲突。

再将下面代码添加在对应的输入方案里，例如：朙月拼音·简化字方案即添加在 `luna_pinyin_simp.custom.yaml`。

```
# librime-lua 输入动态时间和日期
  "engine/translators/@6": lua_translator@date_translator
```

---

### 自定义短语

打开 `custom_phrase.txt` 文件编辑短语。规则：`文字+编码+权重`，使用 `Tab` 键分隔。

示例：

```
Rime	rime	4
鼠须管	rime	3
https://rime.im/	rime	2
Squirrel	rime	1
```


![](https://i.loli.net/2021/02/23/S3z1lxFm8Kws6nW.png)

> 注：自定义短语始终显示在第一候选项，无法单独设置为第二或第三候选项。

---
### 皮肤

打开 `squirrel.custom.yaml` 文件，将皮肤代码添加进去。在 `style/color_scheme:` 后面修改名称即可更换皮肤。

```
  # 更换皮肤
  style/color_scheme: macos_light

  # 皮肤主题 
  preset_color_schemes:
  
    macos_light:
      back_color: 0xFFFFFF                      # 候选条背景色，24位色值，16进制，BGR顺序
      border_color: 0xFFFFFF                    # 边框色
      text_color: 0x424242                      # 拼音行文字颜色
      hilited_back_color: 0xD75A00              # 第一候选项背景背景色
      hilited_candidate_text_color: 0xFFFFFF    # 第一候选项文字颜色
      hilited_candidate_label_color: 0xFFFFFF   # 第一候选项编号颜色
      hilited_comment_text_color: 0x999999      # 注解文字高亮
      hilited_text_color: 0x999999              # 高亮拼音 (需要开启内嵌编码)
      candidate_text_color: 0x3c3c3c            # 预选项文字颜色
      comment_text_color: 0x999999              # 拼音等提示文字颜色
      horizontal: true                          # 水平排列
      inline_preedit: true                      # 单行显示，false双行显示
      label_color: 0x999999                     # 预选栏编号颜色
      candidate_format: "%c\u2005%@"            # 用 1/6 em 空格 U+2005 来控制编号 %c 和候选词 %@ 前后的空间
      font_face: "PingFangSC"                   # 候选词编号字体
      font_point: 16              # 候选文字大小
      label_font_point: 13        # 候选编号大小
      corner_radius: 5            # 候选条圆角
      hilited_corner_radius: 5    # 高亮圆角
      border_height: 4            # 窗口上下高度
      border_width: 4             # 窗口左右宽度
      border_color_width: 0       # 输入条边框宽度
```

更多皮肤效果：[点击这里](https://github.com/qingmail/rime-pifu)。

* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

---

### 特定程序里关闭开启中文输入

打开 `squirrel.custom.yaml` 文件，找到 `app_options:`，在下方输入程序目录名称。
* `ture` 为关闭中文输入
* `false` 为开启中文输入

示例：
```
  app_options:    # App关闭中文输入
    #com.apple.Spotlight:            # 聚焦搜索
        #ascii_mode: true
    #com.runningwithcrayons.Alfred:  # afred
        #ascii_mode: true
    com.apple.Terminal:             # 终端
        ascii_mode: true
    com.microsoft.VSCode:           # Visual Studio Code
        ascii_mode: false           # 开启中文输入
```

> 延伸：如何获取程序安装目录下的名称？
> 1. 打开**活动监视器**，选中对应程序，点击上方 `···` 再点选**取样进程**。
> 2. 找到 `Identifier`，后面的编码即为该程序名称。

---

### 特定程序里中文输入英文标点

打开 `squirrel.custom.yaml` 文件，找到 `app_options:`，在指定程序里加入 `ascii_punct: true`。

示例：在 Visual Studio Code 程序里中文状态输入英文标点。

```
  app_options:    # App关闭中文输入
    com.microsoft.VSCode:           # Visual Studio Code
        ascii_mode: false           # 开启中文输入
        ascii_punct: true           # 半角符号即中文状态输入英文标点
```

---

### 删除错词

将光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift + Fn + Delete` 键（第三方键盘按   `Control + Delete`）。

> 注：只能从用户词典中删除词组；词库里词组只会取消其调频顺序。

---

### 同步

同步到 iCloud 云盘，在 iCloud 云盘内新建个文件夹。

1. 打开 ` installation.yaml` 文件，修改 `installation_id` 后面的 UUID。

2. 再输入以下代码（admin 修改为您的 Mac 用户名）。

```
 sync_dir: "/Users/admin/Library/Mobile Documents/com~apple~CloudDocs/Rime"
```
示例：

```
distribution_code_name: Squirrel
distribution_name: "鼠鬚管"
distribution_version: 0.15.2
install_time: "Tue Feb 23 04:21:16 2021"
installation_id: "mac"	# 修改id, 同步时会在同步目录下生成文件夹，文件夹名对应id
sync_dir: "/Users/admin/Library/Mobile Documents/com~apple~CloudDocs/Rime"  # 同步和备份目录至iCloud云盘
rime_version: 1.7.3
update_time: "Thu Feb 25 16:18:53 2021"
```


1. 点选菜单栏【ㄓ】->【同步用户数据】，打开 iCloud 云盘可查看。

![](https://i.loli.net/2021/03/01/3WGFzIevCr69j8n.png)

**延伸：词库同步至新 Mac 方法：**

1. 先将需要同步的配置文件拷贝至新电脑 iCloud 云盘。
2. 再配置好鼠须管，打开 ` installation.yaml` 文件，将 UUID 和路径修改为同步文件一至并重新部署，完成词库同步。

更多同步方案：[点击这里](https://github.com/rime/home/wiki/UserGuide#%E5%90%8C%E6%AD%A5%E7%94%A8%E6%88%B6%E8%B3%87%E6%96%99)

---

### 报错日志

打开**终端**输入 `$TMPDIR/rime.Squirrel.INFO` 按回车键，复制路径地址在访达中打开。

![](https://tva3.sinaimg.cn/large/008eZBHKgy1gq3krzyftbj311w09qgm4.jpg)

找到【rime.squirrel.INFO】文件，右击点选**显示原身**得到日志文件。

![](https://tvax2.sinaimg.cn/large/008eZBHKgy1gq3kwsm5vvj31l00outbn.jpg)

---

### 卸载鼠须管

1. 打开系统盘好设置 - 键盘 - 输入法，移除【鼠须管】。
2. 打开访达并按下 `command + shift + G` 前往 `/Library/Input Methods` 文件夹，删除【Squirrel.app】。
3. 如上，前往 `~/Library` 并删除文件夹【Rime】。
4. 重新登入系统，确保清理完毕。

🔝[返回目录](#目录)

