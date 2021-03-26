

# Mac 第三方输入法｜Rime 鼠须管（Squirrel）配置详解

![](https://i.loli.net/2021/02/22/gqMZF8Loa51XWVy.png)

---

**优点**：开源、隐私保护、速度快、高度自定义。

**缺点**：上手难度大、没云输入、**前期**个人词库/词频准确度较低、需要维护（例如 Apple 更新 Emoji 需手动添加）。

---

### 目录

1. [安装输入法](#安装输入法)
2. [定制输入法](#定制输入法)
3. [输入方案、候选词个数、中英文切换、翻页、快捷键](#输入方案候选词个数中英文切换翻页快捷键)
4. [载入词库和 Emoji](#载入词库和-Emoji)
5. [修改 Emoji](#修改-emoji)
6. [开启关闭 Emoji、半角、全角](#开启关闭-Emoji半角全角)
7. [自定义快捷字符](#自定义快捷字符)
8. [模糊音](#模糊音)
9. [自定义短语](#自定义短语)
10. [皮肤主题](#皮肤主题)
11. [特定程序里关闭开启中文输入](#特定程序里关闭开启中文输入)
12. [特定程序里中文状态输入英文标点](#特定程序里中文状态输入英文标点)
13. [词库文档格式](#词库文档格式)
14. [外挂词库](#外挂词库)
15. [搜狗词库转换](#搜狗词库转换)
16. [动态时间、日期、星期](#动态时间日期星期)
17. [删除误上屏的错词](#删除误上屏的错词)
18. [智能纠错](#智能纠错)
19. [同步和备份](#同步和备份)
20. [卸载鼠须管方法](#卸载鼠须管方法)
21. [![Telegram交流群](https://raw.githubusercontent.com/liuour/SVG/aee8b7c77bb0aff2171f5c4b11caba849fc90768/Telegram.svg)](https://t.me/shurufa1)
---
### 安装输入法

打开[ Rime 官网](https://rime.im/)下载安装包并安装，点选菜单栏【ㄓ】图标，即可使用鼠须管输入法。

小贴士：按 `Control+｀` 切换输入方案。

![008eZBHKgy1gn4v5nn7h7j31e20d2wfr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4v5nn7h7j31e20d2wfr.jpg)


---

### 定制输入法

下载 [档案文件](https://github.com/liuour/rime/archive/master.zip) 解压出【配置文件】和【花园明朝字体】，将字体安装到 Mac 字体册。

点选【用户设定】打开 Rime 文件夹，将【配置文件】里的所有文件粘贴进去，并选择覆盖。

> 注意：覆盖前建议先备份原文件。

![008eZBHKgy1gn45cxyphgj31e20ca7e9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45cxyphgj31e20ca7e9.jpg)

```
# 配置文件介绍
custom_phrase.txt                 # 自定义短语
default.custom.yaml               # 全局配置
easy_en.dict.yaml                 # 英文词典
easy_en.schema.yaml               # 英文词典方案定义
luna_pinyin_simp.custom.yaml      # 朙月拼音·简化字设置
luna_pinyin_simp.schema.yaml      # 朙月拼音·简化字方案定义
luna_pinyin.extended.dict.yaml    # 词库（外挂）
luna_pinyin.dict.yaml             # 词库（汉字）
luna_pinyin.sogou.dict.yaml       # 词库（搜狗12个分类）
luna_pinyin.zonghe.dict.yaml      # 词库（综合）
opencc                            # Emoji
rime.lua                          # 动态时间、日期、星期
squirrel.custom.yaml              # 皮肤
```

点击【重新部署】完成定制，如对细节进行调整，继续往下看。

> 注1：修改配置需要重新部署（快捷键 `Control+Option+｀`）生效。
>
> 注2：搜狗词库较大（约150万个单词），重新部署时间会稍长请耐心等待。

![008eZBHKgy1gn45fjrwu3j31e00c87e7](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

---
### 输入方案、候选词个数、中英文切换、翻页、快捷键

打开 `default.custom.yaml`。

**输入方案**

> 注意：本配置不包含双拼，五笔输入方案，更多输入方案配置可参考 [rime/plum](https://github.com/rime/plum)。

![1r3FiCtUnamDHRq](https://i.loli.net/2021/02/26/1r3FiCtUnamDHRq.png)

**候选词个数**

数字表示候选词数量。

![E3eQ5gKHFNhPS8d](https://i.loli.net/2021/02/23/E3eQ5gKHFNhPS8d.png)

**切换中英文**

Mac 系统上的鼠须管不能区分左、右 Shift ，因此左、右 Shift 键的作用一样。

> 注意：如果 caps 键不能切换大小写，打开系统偏好设置 - 键盘 - 输入法 - 取消勾选【使用大写锁定键切换“美国”输入模式】

![ogPE4mBitAzcZ5U](https://i.loli.net/2021/02/23/ogPE4mBitAzcZ5U.png)

**翻页**

![截屏2021-03-26 下午6.17.58](https://tva4.sinaimg.cn/large/008eZBHKly1goxh6033qlj31ao08c74x.jpg)

**快捷键**

更多快捷键参考：[点击这里](https://github.com/rime/rime-prelude/blob/master/key_bindings.yaml)

![截屏2021-03-26 下午6.17.09](https://tvax4.sinaimg.cn/large/008eZBHKly1goxh5892kpj31ao088js6.jpg)


---
### 载入词库和 Emoji

打开 `luna_pinyin_simp.custom.yaml` 载入中/英文词库和 Emoji。

![lLwFyREWcz3N7Gv](https://i.loli.net/2021/02/23/lLwFyREWcz3N7Gv.png)

### 修改 Emoji

打开 opencc 文件夹内 `emoji_word.txt` 修改。

规则：文字+文字+Emoji，文字之间用 `tab` 键分隔，文字和表情之间用 `空格` 键分隔。

> 注意：词库里需有中文编码才会显示 Emoji。例如，眯眼 = 😆，词库里需包含〔眯眼〕才会显示〔😆〕。

![截屏2021-03-26 下午6.05.33](https://tva2.sinaimg.cn/large/008eZBHKly1goxgt4aawqj31ao0geq4o.jpg)

---

### 开启关闭 Emoji、半角、全角

按 `Control + ｀`  组合键切换输入方式，选择朙月拼音·简化字，再选择〔🈶→🈚️〕。反之选择〔🈚️→🈶〕。

> 注意：此处也可以设置半/全角符号，中文过滤等。

![zqf5LdKeXMsocEt](https://i.loli.net/2021/02/24/zqf5LdKeXMsocEt.png)

---

### 自定义快捷字符

打开 `luna_pinyin_simp.custom.yaml` 修改快捷 Emoji 和符号。

![iNUSQxemPdycoRg](https://i.loli.net/2021/02/23/iNUSQxemPdycoRg.png)


---

### 模糊音

打开 `luna_pinyin_simp.custom.yaml `，去掉前面的 ` #` 开启模糊音。 

![jXRH9aq3iAlIOhW](https://i.loli.net/2021/02/23/jXRH9aq3iAlIOhW.png)

---

### 自定义短语

打开 `custom_phrase.txt` 编辑短语，规则：文字 + 编码 + 权重，使用 `Tab` 键分隔。

> 注意：自定义短语始终会显示在第一候选词。

![RhHwdz9GT3NAlx7](https://i.loli.net/2021/02/23/RhHwdz9GT3NAlx7.png)

效果：

![S3z1lxFm8Kws6nW](https://i.loli.net/2021/02/23/S3z1lxFm8Kws6nW.png)



---
### 皮肤主题

打开 `squirrel.custom.yaml`，在 `style/color_scheme:` 后方输入皮肤名字更换主题。

更多皮肤效果：[点击这里](https://github.com/liuour/rime-pifu)

![GSyDz7sZP5nO3jY](https://i.loli.net/2021/02/23/GSyDz7sZP5nO3jY.png)


* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![008eZBHKgy1gn45ifbfhnj311r0kw769](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

---

### 特定程序里关闭开启中文输入

打开 `squirrel.custom.yaml` 进行添加修改设置。

![HIL4Jevp8tulaBk](https://i.loli.net/2021/02/23/HIL4Jevp8tulaBk.png)

---

### 特定程序里中文状态输入英文标点

打开 `squirrel.custom.yaml`，在指定程序里加入 `ascii_punct: true` 即可。

例如，下图里是 Visual Studio Code 里中文状态输入标点是英文符号。

![UWnEmVLXvazqDAj](https://i.loli.net/2021/02/24/UWnEmVLXvazqDAj.png)


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

例如：搜狗词库 `luna_pinyin.sogou.dict.yaml`，输入 `- luna_pinyin.sogou` 。

![](https://tva2.sinaimg.cn/large/008eZBHKly1gorgo7s6paj31ao0563yd.jpg)

---
### 搜狗词库转换
➊ 打开[搜狗词库](https://pinyin.sogou.com/dict/)下载 `.scel` 词库文件。下载深蓝词库转换工具 [imewlconverter_Windows.zip](https://github.com/studyzy/imewlconverter/releases) 并打开，选择词库并点击打开。

➋ 选择【搜狗细胞词库 scel】-【无拼音纯汉字】，再点击转换保存在本地。

![bVyxtQvzXmBjCTP](https://i.loli.net/2021/02/05/bVyxtQvzXmBjCTP.png)

➌ 生成 `.txt` 文件，将下面代码粘贴在 `.txt` 文档最上方（`...` 下面空一行），再修改词库名并保存。

```
# 可以将包含哪些词库写在此处，方便日后查看是否有重复。

---
name: luna_pinyin.sogou            # 词库名
version: "0.9"               
sort: by_weight              
use_preset_vocabulary: false
...

```

例如：name: luna_pinyin.sogou

![](https://tvax1.sinaimg.cn/large/008eZBHKly1gorgs3g02fj31ao0e6q3d.jpg)

然后将 `.txt` 文件重命名为 `luna_pinyin.sogou.dict.yaml`，放在 Rime 目录文件夹内，再依照[外挂词库](#外挂词库)载入。

---

### 动态时间、日期、星期

![008eZBHKgy1gn4w304etcj31e00bzjtr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4w304etcj31e00bzjtr.jpg)

打开 `Rime.lua`，可修改格式和快捷编码，例如，`rq` = `日期`。

![UTXEo4NGh5VzmBk](https://i.loli.net/2021/02/23/UTXEo4NGh5VzmBk.png)

最后在对应的输入方式里加入下面代码生效。

例如：朙月拼音·简化字，即添加在 `luna_pinyin_simp.custom.yaml`。

![EiZV7jTWFUaYtpl](https://i.loli.net/2021/02/23/EiZV7jTWFUaYtpl.png)

---

### 删除误上屏的错词

先把选字光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift+Fn+Delete` 键（第三方键盘按   `Control+Delete`）。

> 注意：只能从用户词典中删除词组；词库里词组只会取消其调频顺序。

---

### 智能纠错

打开 `luna_pinyin_simp.custom.yaml` 下拉至底部。

![AFIO56cLTDiGo2d](https://i.loli.net/2021/02/23/AFIO56cLTDiGo2d.png)

---

### 同步和备份

1. 打开 ` installation.yaml`，将 `installation_id` 后面的随机 UUID 改为自己喜欢的名称，例如 `mac`。
2. 示例：同步和备份到 iCloud 云盘，在 iCloud 新建一个 Rime 文件夹，再添加下面一行路径代码。

```
 sync_dir: "/Users/用户名/Library/Mobile Documents/com~apple~CloudDocs/Rime"
```

![RLnWQgxA9sZpY2k](https://i.loli.net/2021/03/01/RLnWQgxA9sZpY2k.png)

3. 点选菜单栏【ㄓ】-【同步用户数据】，打开 iCloud 云盘会看到 `备份文件 mac`已完成。

![3WGFzIevCr69j8n](https://i.loli.net/2021/03/01/3WGFzIevCr69j8n.png)

更多设备同步请参考：[点击这里](https://github.com/rime/home/wiki/UserGuide#%E5%90%8C%E6%AD%A5%E7%94%A8%E6%88%B6%E8%B3%87%E6%96%99)

---

### 卸载鼠须管方法

1. 打开系统盘好设置 - 键盘 - 输入法，移除【鼠须管】。
2. 打开访达并按下 `command+shift+G` 前往 `/Library/Input Methods` 文件夹，删除【Squirrel.app】。
3. 如上，前往 `~/Library` 并删除文件夹【Rime】。
4. 重新登入系统，确保清理完毕。

[🔝返回顶部](#目录)