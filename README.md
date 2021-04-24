•

## Mac 第三方输入法｜Rime 鼠须管（Squirrel）朙月拼音、小鹤双拼、自然码双拼配置详解

![](https://tvax3.sinaimg.cn/large/008eZBHKly1gpbtyhi91wj31jk1j8wkf.jpg)

### 主要特点

* 朙月拼音｜朙月拼音·简化字｜小鹤双拼｜自然码双拼｜大写数字
* 拼音超大词库〔150万搜狗词条〕
* Emoji 与 macOS 11.2.3 同步
* 动态输入时间、日期、星期
* 高度自定义

[![](https://img.shields.io/badge/Twitter-%E6%8E%A8%E7%89%B9-%231BA1F3)](https://twitter.com/yifangme) [![](https://img.shields.io/badge/Telegram-%E8%AE%A8%E8%AE%BA%E7%BE%A4-%2323A5E4)](https://t.me/shurufa1)
---

### 【配置文件】更新日志

#### 2021-04-19

* 增加小鹤双拼，自然码双拼
* Emoji 增加繁体编码
* 动态时间日期星期编码变更：`sj → time` `rq → date` `xq → week`

#### 2021-04-17

* 搜狗词库由**简体**更新为**繁体**（解决朙月拼音方案读取搜狗词库时是简体问题）
* 增加朙月拼音配置文件
* 增加系统蓝，曬經·日等皮肤

#### 2021-04-14

* 增加[大写数字](#大写数字)输入方案
* 增加英文词典常用词
* 自定义短语删除与英文词典里重复的短语
* 更新 Emoji 中文编码
* 修复无法更改候选词个数 [#22](https://github.com/maomiui/rime/issues/22)

#### 2021-04-09

* 增加[回车清码](#回车清码)功能，默认关闭
* 搜狗词库编码由**纯汉字**更新为**汉字 + 拼音**（解决部分词条无效）
* Emoji 支持更多中文编码
* 增加 win10 皮肤

#### 2021-03-22

* 搜狗12个分类词库合并为 `luna_pinyin.sogou.dict.yaml`，并删除重复词条
* `luna_pinyin.cn_en.dict.yaml` 更改为 `luna_pinyin.zonghe.dict.yaml`

#### 2021-02-23

* 动态日期里移除美式格式 `"%m-%d-%Y"`
* 动态时间里移除含日期格式 `"%Y%m%d%H%M%S"`

---

### 目录

1. [安装输入法](#安装输入法)
2. [定制输入法](#定制输入法)
3. [输入方案](#输入方案)
4. [候选词个数](#候选词个数)
5. [中英文切换](#中英文切换)
6. [翻页键](#翻页键)
7. [常见快捷键](#常见快捷键)
8. [回车清码](#回车清码)
9. [词库文档格式](#词库文档格式)
10. [外挂词库](#外挂词库)
11. [搜狗词库转换方法](https://github.com/maomiui/sogou-dict)
12. [Emoji](#修改-emoji)
13. [载入词库和 Emoji](#载入词库和-Emoji)
14. [自定义快捷字符](#自定义快捷字符)
15. [模糊音](#模糊音)
16. [自定义短语](#自定义短语)
17. [皮肤](#皮肤)
18. [关闭 Emoji](#关闭-emoji)
19. [特定程序里关闭开启中文输入](#特定程序里关闭开启中文输入)
20. [特定程序里中文输入英文标点](#特定程序里中文输入英文标点)
21. [删除误上屏的错词](#删除误上屏的错词)
22. [智能纠错](#智能纠错)
23. [动态时间｜日期｜星期](#动态时间日期星期)
24. [大写数字](#大写数字)
25. [同步](#同步)
26. [卸载](#卸载鼠须管)
---
### 安装输入法

前往[官网](https://rime.im/download/)下载鼠须管并安装，完成后点击菜单栏输入法选择【ㄓ】图标，按 `Control+｀` 切换输入方案，开始使用输入法。

> 注：Rime 配置文件位于 `~/Library/Rime`，定制输入法前建议先[备份原配置文件](https://github.com/maomiui/rime-bak)。

---

### 定制输入法

下载[配置文件](https://github.com/maomiui/rime/archive/refs/heads/master.zip)解压得到【配置文件】和【花园明朝字体】，因为 macOS 不包含生僻字会导致有乱码，所以先将花园明朝字体安装到字体册。

![](https://i.loli.net/2021/04/19/uwNgmUX4prI6Kyq.png)

点选**用户设定**（`~/Library/Rime`）打开 Rime 目录文件夹，将【配置文件】 里所有文件粘贴进去，并选择覆盖。

![](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45cxyphgj31e20ca7e9.jpg)

#### 配置文件说明

```
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

点击**重新部署**完成定制。

> 注1：修改任何配置文件都要**重新部署**生效（快捷键 `Control+Option+｀`）。
>
> 注2：搜狗词库较大，重新部署时间会稍长，请耐心等待。

![](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

如果想对细节进行调整，继续往下看。

---
### 输入方案

打开 `default.custom.yaml` 文件，将输入方案输在此处，按 `Control+｀` 切换输入方案；前面加 `#` 关闭输入方案。

![](https://tva4.sinaimg.cn/large/008eZBHKly1gpohotbdmoj31ao07mmxc.jpg)

> 注1：其他输入方案参考[东风破](https://github.com/rime/plum)。
> 
> 注2：非程序员用户可能不知道如何打开 `.yaml` 文件，推荐使用 [Visual Studio Code](https://code.visualstudio.com/)。

### 候选词个数

打开 `default.custom.yaml` 文件，修改后面的数字即候选词数量。

```
menu/page_size: 9
```

### 中英文切换

打开 `default.custom.yaml` 设置开启和禁用切换中英文。

![](https://i.loli.net/2021/02/23/ogPE4mBitAzcZ5U.png)

> 注1：Mac 上鼠须管不能区分左、右 Shift ，因此左、右 Shift 键的作用一样。
>
> 注2：如果 caps 键不能切换大小写，打开系统偏好设置 - 键盘 - 输入法 - 取消勾选【使用大写锁定键切换“美国”输入模式】

### 翻页键

打开 `default.custom.yaml` 文件设置翻页，关闭某项在前面添加 `#`。

![](https://tva4.sinaimg.cn/large/008eZBHKly1goxh6033qlj31ao08c74x.jpg)

### 常见快捷键

打开 `default.custom.yaml` 设置快捷键，例如繁简切换 `Control + Shift + 4`。

![](https://tvax4.sinaimg.cn/large/008eZBHKly1goxh5892kpj31ao088js6.jpg)

> 更多快捷键参考：[点击这里](https://github.com/rime/rime-prelude/blob/master/key_bindings.yaml)

---

### 回车清码

打开 `default.custom.yaml`，找到下面代码，将前面的 `#` 号去掉并对其代码开启回车清码。

```
- {accept: Return, send: Escape, when: composing}
```

---

### 词库文档格式

文件命名为 <词库名>.dict.yaml。 词库文件的前半部份为一份 YAML 文档：

```
# 注意这里以 --- ... 分别标记出 YAML 文档的起始与结束位置
# 在 ... 下方空一行

---
name: luna_pinyin            # 词库名
version: "0.9"               # 版本
sort: by_weight              # by_weight（按词频高低排序）或 original（保持原码表中的顺序）
use_preset_vocabulary: true  # true 或 false，选择是否导入预设词汇表【八股文】
...

# 格式每行定义一条〔文字－编码〕，字符与码表之间使用 tab 键，码表之间使用空格键。
测	ce
测试	ce shi
目的地	mu di di
```

---

### 外挂词库

打开 `luna_pinyin.extended.dict.yaml`，将词库名称添加进去。

例如：词库文件 `luna_pinyin.sogou.dict.yaml`，则输入 `- luna_pinyin.sogou` 。

![](https://tvax1.sinaimg.cn/large/008eZBHKly1gp4g1qlgxwj31ao048745.jpg)

> 注：本配置搜狗词库含以下 12 个分类，满足绝大部分用户。
>
> 城市信息、自然科学、社会科学、工程应用、农林渔畜、医学医药
>
> 电子游戏、艺术设计、生活百科、运动体闲、人文科学、娱乐休闲

---

### 修改 Emoji

打开 opencc 文件夹内 `emoji_word.txt` 修改。

规则：文字+文字+Emoji，文字之间用 `tab` 键分隔，文字和表情之间用 `空格` 键分隔。

> 注：词库里需有中文编码才会显示 Emoji。例如，眯眼 = 😆，词库里需包含〔眯眼〕才会显示〔😆〕。

![](https://tva2.sinaimg.cn/large/008eZBHKly1goxgt4aawqj31ao0geq4o.jpg)

---

### 载入词库和 Emoji

打开 `luna_pinyin_simp.custom.yaml` 文件，载入中/英文词库和 Emoji。

![](https://i.loli.net/2021/02/23/lLwFyREWcz3N7Gv.png)

---

### 自定义快捷字符

打开 `luna_pinyin_simp.custom.yaml` 文件，修改快捷 Emoji 和快捷符号。

![](https://i.loli.net/2021/02/23/iNUSQxemPdycoRg.png)


---

### 模糊音

打开 `luna_pinyin_simp.custom.yaml ` 文件，去掉前面的 `#` 开启模糊音。 

![](https://i.loli.net/2021/02/23/jXRH9aq3iAlIOhW.png)

---

### 自定义短语

打开 `custom_phrase.txt` 文件，编辑短语。

规则：`文字` + `编码` + `权重`，使用 `Tab` 键分隔。

> 注：自定义短语始终会显示在第一候选项。

例如：

![](https://i.loli.net/2021/02/23/RhHwdz9GT3NAlx7.png)

效果：

![](https://i.loli.net/2021/02/23/S3z1lxFm8Kws6nW.png)



---
### 皮肤

打开 `squirrel.custom.yaml` 文件，添加或修改皮肤代码，并在 `style/color_scheme:` 后面修改名称即更换皮肤。

例如：`macos_light`

![](https://tvax4.sinaimg.cn/large/008eZBHKly1gpe70qhu7nj31ao0ummzd.jpg)


* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

> 更多皮肤效果：[点击这里](https://github.com/liuour/rime-pifu)。

---

### 关闭 Emoji

按 `Control + ｀` 组合键，选择输入方案。

* 关闭 Emoji 选择 🈶 → 🈚️
* 开启 Emoji 选择 🈚️ → 🈶

![](https://tvax4.sinaimg.cn/large/008eZBHKly1gp3nfu2fenj31ao04s3z0.jpg)

---

### 特定程序里关闭开启中文输入

打开 `squirrel.custom.yaml` 文件，找到 `app_options:`，在下方输入程序目录名称。
* `ture` 为关闭中文输入
* `false` 为开启中文输入

示例：
```
  app_options:    # App关闭/开启中文输入
    com.apple.Spotlight:        # 聚焦搜索
        ascii_mode: true        # 关闭中文输入
    com.microsoft.VSCode:       # Visual Studio Code
        ascii_mode: false       # 开启中文输入
```

![](https://i.loli.net/2021/02/23/HIL4Jevp8tulaBk.png)

> 如何获取程序安装目录下的名称？感谢 [@loong1992](https://github.com/loong1992) 提醒！[#25](https://github.com/maomiui/rime/issues/25)
> 1. 打开**活动监视器**，选中对应程序，点击上方 `···` 再点选**取样进程**。
> 2. 找到 `Identifier`，后面的编码即为该程序名称。

---

### 特定程序里中文输入英文标点

打开 `squirrel.custom.yaml` 文件，找到 `app_options:`，在指定程序里加入 `ascii_punct: true` 即中文状态下输入英文标点。

示例：在 Visual Studio Code 程序里中文状态输入英文标点。

```
  app_options:
    com.microsoft.VSCode:       # Visual Studio Code
        ascii_mode: false       # 开启中文输入
        ascii_punct: true       # 中文状态输入英文标点
```

![](https://i.loli.net/2021/02/24/UWnEmVLXvazqDAj.png)



---

### 删除误上屏的错词

先把选字光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift + Fn + Delete` 键（第三方键盘按   `Control + Delete`）。

> 注：只能从用户词典中删除词组；词库里词组只会取消其调频顺序。

---

### 智能纠错

打开 `luna_pinyin_simp.custom.yaml` 文件，找到下图代码，去掉前面的 `#` 即开启。

![](https://i.loli.net/2021/02/23/AFIO56cLTDiGo2d.png)

---

### 动态时间、日期、星期

* `time` = `时间`
* `date` = `日期`
* `week` = `星期`

在对应的输入方案里加入下面代码生效。

例如：朙月拼音·简化字方案即添加在 `luna_pinyin_simp.custom.yaml`。

```
# librime-lua 输入动态时间和日期
  "engine/translators/@6": lua_translator@date_translator
```

打开 `Rime.lua` 文件可修改编码和输出格式，例如：将〔时间〕编码设置为 `sj`（注：如使用双拼方案，两位字母编码可能会受影响，建议改为不冲突的编码）。

---
### 大写数字
配置内 `numbers.schema.yaml` 为大写数字文件。

将下面代码添加在 `default.custom.yaml`（本配置方案默认已添加），快捷键 `Control+｀` 切换方案选择**大写数字**。

```
- schema: numbers               # 大写数字
```

| 按键  |  输出 |
|---|---|
| 1234567890  | 壹贰叁肆伍陆柒捌玖零  |
| wqbsjfd.  |  万仟佰拾角分第点 |
|  z | 整之  |
|  y | 元月亿  |


|  按键（按住Shift） | 输出  |
|---|---|
| 1234567890  | 一二三四五六七八九〇  |
|  wqbsjfd. |  万千百十角分第点 |
| z  | 整之  |
| y  | 元月亿  |

示例：

![](https://i.loli.net/2021/04/14/qYxrowydRaAUvzP.gif)


---

### 同步

示例：同步到 iCloud 云盘，在 iCloud 云盘内新建个文件夹。

1. 打开 ` installation.yaml`，修改 `installation_id` 的 UUID。

2. 再输入或粘贴以下代码。

```
 sync_dir: "/Users/用户名/Library/Mobile Documents/com~apple~CloudDocs/Rime"
```

![](https://i.loli.net/2021/03/01/RLnWQgxA9sZpY2k.png)

点选菜单栏【ㄓ】-【同步用户数据】，打开 iCloud 云盘查看同步文件，可多台设备同步。

![3WGFzIevCr69j8n](https://i.loli.net/2021/03/01/3WGFzIevCr69j8n.png)

更多同步方案请参考：[点击这里](https://github.com/rime/home/wiki/UserGuide#%E5%90%8C%E6%AD%A5%E7%94%A8%E6%88%B6%E8%B3%87%E6%96%99)

---

### 卸载鼠须管

1. 打开系统盘好设置 - 键盘 - 输入法，移除【鼠须管】。
2. 打开访达并按下 `command + shift + G` 前往 `/Library/Input Methods` 文件夹，删除【Squirrel.app】。
3. 如上，前往 `~/Library` 并删除文件夹【Rime】。
4. 重新登入系统，确保清理完毕。

🔝[返回顶部](#主要特点)