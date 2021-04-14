

# Mac 第三方输入法｜Rime 鼠须管（Squirrel）配置详解

![rime效果图](https://tvax3.sinaimg.cn/large/008eZBHKly1gpbtyhi91wj31jk1j8wkf.jpg)


---
### 主要特点

* 朙月拼音简化字
* 超大词库〔150万搜狗词条〕
* Emoji 与苹果设备同步
* 动态输入时间、日期、星期
* 高度自定义

[![](https://img.shields.io/badge/%E9%BC%A0%E9%A1%BB%E7%AE%A1%E5%AE%89%E8%A3%85%E5%8C%85-0.15.2-%23009CD1)](https://dl.bintray.com/rime/squirrel/Squirrel-0.15.2.zip)  [![](https://img.shields.io/badge/Download-%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6-%234BC022)](https://github.com/maomiui/rime/archive/refs/heads/master.zip) [![](https://img.shields.io/badge/Twitter-%E6%8E%A8%E7%89%B9-%231BA1F3)](https://twitter.com/yifangme) [![](https://img.shields.io/badge/Telegram-%E8%AE%A8%E8%AE%BA%E7%BE%A4-%2323A5E4)](https://t.me/shurufa1)

---

### 【配置文件】更新日志

#### 2021-04-14

* 英文词典：增加常见词
* 自定义短语：删除与英文词典里重复的短语
* 搜狗词库：添加词条〔哔哩哔哩〕
* Emoji：更新部分中文编码
* 修复无法更改候选词个数 [#22](https://github.com/maomiui/rime/issues/22)

#### 2021-04-09

* 增加[回车清码](#回车清码)功能，默认关闭
* 增加 win10 皮肤
* 搜狗词库编码由**纯汉字**（部分词条无效）更新为**汉字 + 拼音**
* Emoji 支持更多中文编码，并修改部分中文编码不准确问题

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
11. [搜狗词库转换方法](https://github.com/liuour/rime-dict)
12. [修改 Emoji](#修改-emoji)
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
24. [同步](#同步)
25. [卸载](#卸载鼠须管)
---
### 安装输入法

安装鼠须管输入法，点选菜单栏【ㄓ】图标，即可使用鼠须管输入法。

小贴士：按 `Control+｀` 切换输入方案。

![008eZBHKgy1gn4v5nn7h7j31e20d2wfr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4v5nn7h7j31e20d2wfr.jpg)


---

### 定制输入法

将配置文件解压得到【配置文件】和【花园明朝字体】，首先将字体安装到 Mac 字体册。

![2021-04-10-15.38.40](https://tva2.sinaimg.cn/large/008eZBHKly1gpeowyisfbj31ie0swwhz.jpg)

点选**用户设定**打开 Rime 目录文件夹，将【配置文件】里所有文件粘贴进去，并选择覆盖。

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
luna_pinyin.extended.dict.yaml    # 挂载词库
luna_pinyin.dict.yaml             # 词库（汉字）
luna_pinyin.sogou.dict.yaml       # 词库（搜狗）
luna_pinyin.zonghe.dict.yaml      # 词库（综合）
opencc                            # Emoji
rime.lua                          # 动态时间、日期、星期
squirrel.custom.yaml              # 皮肤
```

点击**重新部署**完成定制，如对细节进行调整，继续往下看。

> 注1：修改任何配置文件都要**重新部署**才会生效（快捷键 `Control+Option+｀`）。
>
> 注2：搜狗词库较大，重新部署时间会稍长，请耐心等待。

![008eZBHKgy1gn45fjrwu3j31e00c87e7](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

---
### 输入方案

打开 `default.custom.yaml` 文件，添加输入方案。

> 注意：本配置不包含双拼，五笔等输入方案，更多方案可参考 [东风破](https://github.com/rime/plum)。

![1r3FiCtUnamDHRq](https://i.loli.net/2021/02/26/1r3FiCtUnamDHRq.png)

### 候选词个数

打开 `default.custom.yaml`，修改数字即候选词数量。

```
menu/page_size: 9
```

![E3eQ5gKHFNhPS8d](https://i.loli.net/2021/02/23/E3eQ5gKHFNhPS8d.png)

### 中英文切换

打开 `default.custom.yaml`，设置开启和禁用切换中英文。

> 注意1：Mac 上鼠须管不能区分左、右 Shift ，因此左、右 Shift 键的作用一样。
>
> 注意2：如果 caps 键不能切换大小写，打开系统偏好设置 - 键盘 - 输入法 - 取消勾选【使用大写锁定键切换“美国”输入模式】

![ogPE4mBitAzcZ5U](https://i.loli.net/2021/02/23/ogPE4mBitAzcZ5U.png)

### 翻页键

打开 `default.custom.yaml`，设置翻页，如不需要在前面添加 `#` 号。

![截屏2021-03-26 下午6.17.58](https://tva4.sinaimg.cn/large/008eZBHKly1goxh6033qlj31ao08c74x.jpg)

### 常见快捷键

打开 `default.custom.yaml`，设置快捷键，更多快捷键参考：[点击这里](https://github.com/rime/rime-prelude/blob/master/key_bindings.yaml)

![截屏2021-03-26 下午6.17.09](https://tvax4.sinaimg.cn/large/008eZBHKly1goxh5892kpj31ao088js6.jpg)

---

### 回车清码

打开 `default.custom.yaml`，找到下面代码，将前面的 `#` 号去掉并对其代码，即开启回车清码。

```
- {accept: Return, send: Escape, when: composing}
```

![截屏2021-04-09 下午2.42.27](https://tva3.sinaimg.cn/large/008eZBHKly1gpdhm76bofj31am02u0sl.jpg)

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

> 注：本配置搜狗词库含以下 12 个分类，满足绝大部分用户。
>
> 城市信息、自然科学、社会科学、工程应用、农林渔畜、医学医药
>
> 电子游戏、艺术设计、生活百科、运动体闲、人文科学、娱乐休闲

![截屏2021-04-01 下午6.58.06](https://tvax1.sinaimg.cn/large/008eZBHKly1gp4g1qlgxwj31ao048745.jpg)

> 小贴士：搜狗词库转换方法：[点击这里](https://github.com/liuour/rime-dict)。

---

### 修改 Emoji

打开 opencc 文件夹内 `emoji_word.txt` 修改。

规则：文字+文字+Emoji，文字之间用 `tab` 键分隔，文字和表情之间用 `空格` 键分隔。

> 注意：词库里需有中文编码才会显示 Emoji。例如，眯眼 = 😆，词库里需包含〔眯眼〕才会显示〔😆〕。

![截屏2021-03-26 下午6.05.33](https://tva2.sinaimg.cn/large/008eZBHKly1goxgt4aawqj31ao0geq4o.jpg)

---

### 载入词库和 Emoji

打开 `luna_pinyin_simp.custom.yaml` 载入中/英文词库和 Emoji。

![lLwFyREWcz3N7Gv](https://i.loli.net/2021/02/23/lLwFyREWcz3N7Gv.png)

---

### 自定义快捷字符

打开 `luna_pinyin_simp.custom.yaml` 文件，修改快捷 Emoji 和符号。

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
### 皮肤

打开 `squirrel.custom.yaml` 文件，添加皮肤代码，并在 `style/color_scheme:` 后面更改主题名称，例如：`macos_light`。

![截屏2021-04-10 上午5.21.25](https://tvax4.sinaimg.cn/large/008eZBHKly1gpe70qhu7nj31ao0ummzd.jpg)


* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![008eZBHKgy1gn45ifbfhnj311r0kw769](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

更多皮肤效果：[点击这里](https://github.com/liuour/rime-pifu)。

---

### 关闭 Emoji

按 `Control + ｀` 组合键，选择朙月拼音·简化字，关闭 Emoji 选择〔🈶→🈚️〕，反之选择〔🈚️→🈶〕。

![截屏2021-04-01 上午2.28.15](https://tvax4.sinaimg.cn/large/008eZBHKly1gp3nfu2fenj31ao04s3z0.jpg)

---

### 特定程序里关闭开启中文输入

打开 `squirrel.custom.yaml` 进行添加修改设置。

![HIL4Jevp8tulaBk](https://i.loli.net/2021/02/23/HIL4Jevp8tulaBk.png)

---

### 特定程序里中文输入英文标点

打开 `squirrel.custom.yaml`，在指定程序里加入 `ascii_punct: true` 即可。

例如，下图里是 Visual Studio Code 里中文状态输入标点是英文符号。

![UWnEmVLXvazqDAj](https://i.loli.net/2021/02/24/UWnEmVLXvazqDAj.png)



---

### 删除误上屏的错词

先把选字光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift+Fn+Delete` 键（第三方键盘按   `Control+Delete`）。

> 注意：只能从用户词典中删除词组；词库里词组只会取消其调频顺序。

---

### 智能纠错

打开 `luna_pinyin_simp.custom.yaml` 下拉至底部。

![AFIO56cLTDiGo2d](https://i.loli.net/2021/02/23/AFIO56cLTDiGo2d.png)

---

### 动态时间、日期、星期

![008eZBHKgy1gn4w304etcj31e00bzjtr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4w304etcj31e00bzjtr.jpg)

打开 `Rime.lua`，可修改格式和快捷编码，例如，`rq` = `日期`。

![UTXEo4NGh5VzmBk](https://i.loli.net/2021/02/23/UTXEo4NGh5VzmBk.png)

最后在对应的输入方式里加入下面代码生效。

例如：朙月拼音·简化字，即添加在 `luna_pinyin_simp.custom.yaml`。

![EiZV7jTWFUaYtpl](https://i.loli.net/2021/02/23/EiZV7jTWFUaYtpl.png)

---

### 同步

示例：同步到 iCloud 云盘，在 iCloud 云盘内新建个文件夹（例如叫 Rime）。

1. 打开 ` installation.yaml`，修改 `installation_id` 的 UUID（例如叫 mac）。

2. 再输入或粘贴以下代码。

```
 sync_dir: "/Users/用户名/Library/Mobile Documents/com~apple~CloudDocs/Rime"
```

![RLnWQgxA9sZpY2k](https://i.loli.net/2021/03/01/RLnWQgxA9sZpY2k.png)

点选菜单栏【ㄓ】-【同步用户数据】，打开 iCloud 云盘查看同步文件，可多台设备同步。

![3WGFzIevCr69j8n](https://i.loli.net/2021/03/01/3WGFzIevCr69j8n.png)

更多同步方案请参考：[点击这里](https://github.com/rime/home/wiki/UserGuide#%E5%90%8C%E6%AD%A5%E7%94%A8%E6%88%B6%E8%B3%87%E6%96%99)

---

### 卸载鼠须管

1. 打开系统盘好设置 - 键盘 - 输入法，移除【鼠须管】。
2. 打开访达并按下 `command+shift+G` 前往 `/Library/Input Methods` 文件夹，删除【Squirrel.app】。
3. 如上，前往 `~/Library` 并删除文件夹【Rime】。
4. 重新登入系统，确保清理完毕。

🔝[返回顶部](#mac-第三方输入法rime-鼠须管squirrel配置详解)