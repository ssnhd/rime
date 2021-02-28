

# Rime 鼠须管 Squirrel 配置文件详解

![](https://i.loli.net/2021/02/22/gqMZF8Loa51XWVy.png)

---

**- 词库不全不准确，没搜🐶的好。**

**- 对，建议放弃！**

---

### 目录

1. [安装输入法](#安装输入法)
2. [定制输入法](#定制输入法)
3. [输入方案、候选词个数、中英文切换、翻页、快捷键](#输入方案候选词个数中英文切换翻页快捷键)
4. [载入词库和Emoji](#载入词库和Emoji)
5. [自定义快捷字符](#自定义快捷字符)
6. [模糊音](#模糊音)
7. [输入动态时间、日期、星期](#输入动态时间日期星期)
8. [自定义短语（文本替换）](#自定义短语文本替换)
9. [皮肤主题](#皮肤主题)
10. [特定程序里关闭中文输入](#特定程序里关闭中文输入)
11. [词库](#词库)
12. [挂载词库](#挂载词库)
13. [搜狗词库转换方法](#搜狗词库转换)
14. [删除误上屏的错词](#删除误上屏的错词)
15. [智能纠错](#智能纠错)
16. [关闭 Emoji](#关闭-Emoji)
17. [特定程序里中文状态输入英文标点](#特定程序里中文状态输入英文标点)
18. [卸载鼠须管方法](#卸载鼠须管方法)
19. [![Telegram交流群](https://raw.githubusercontent.com/liuour/SVG/aee8b7c77bb0aff2171f5c4b11caba849fc90768/Telegram.svg)](https://t.me/rimesquirrel)
---
### 安装输入法

打开[ Rime 官网](https://rime.im/)下载安装包，初次安装，需注销并重新登录，点选菜单栏【ㄓ】图标。按组合键 `Control`+`｀` 切换输入方案，到这一步，已经可以使用。

![008eZBHKgy1gn4v5nn7h7j31e20d2wfr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4v5nn7h7j31e20d2wfr.jpg)

获得更好的输入体验，需对输入法进行定制。


---

### 定制输入法

下载[档案文件](https://github.com/liuour/rime/archive/master.zip)并解压，首先将【font】两个字体安装到 Mac 字体册。

点选【用户设定】打开目录文件夹，将【配置文件】里的所有文件粘贴进去，并选择覆盖文件。

> 注：覆盖前建议先备份原文件。

![008eZBHKgy1gn45cxyphgj31e20ca7e9](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45cxyphgj31e20ca7e9.jpg)

```
# 配置文件介绍
custom_phrase.txt                        # 自定义短语（文本替换）             
default.custom.yaml                      # 全局配置（方案、候选词个数、中英文切换、翻页、快捷键） 
easy_en.dict.yaml                        # 词库（英文）                       
easy_en.schema.yaml                      # 词典（英文）方案定义                                   
luna_pinyin_simp.custom.yaml             # 朙月拼音·简化字（载入词库、Emoji、快捷符号、模糊音、动态日期）
luna_pinyin_simp.schema.yaml             # 朙月拼音·简化字方案定义
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
luna_pinyin.cn_en.dict.yaml              # 词库（英文和特殊符号）                    
luna_pinyin.dict.yaml                    # 词库（汉字）    
luna_pinyin.extended.dict.yaml           # 外挂词库                    
opencc                                   # Emoji
pinyin_simp.dict.yaml                    # 词库（单字+词组）
rime.lua                                 # 动态时间、日期、星期            
squirrel.custom.yaml                     # 皮肤                         
```

点击【重新部署】完成定制。

> 注1：修改任何文件都要重新部署（快捷键 `Control`+`Option`+`｀`）生效。
>
> 注2：本配置包含约 200 万个词库，重新部署时间可能会稍长。

![008eZBHKgy1gn45fjrwu3j31e00c87e7](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

到这里可以近乎完美地使用输入法了，对细节进行调整，继续往下看。

---
### 输入方案、候选词个数、中英文切换、翻页、快捷键

打开 `default.custom.yaml`。

**切换输入方案**

更多输入方案参考：[点击这里](https://gist.github.com/lotem/2309739)

![1r3FiCtUnamDHRq](https://i.loli.net/2021/02/26/1r3FiCtUnamDHRq.png)

**候选词个数**

默认每页至多显示 5 个候选项，而允许的范围是 1～9（个别 Rime 发行版可支持10个候选）。

![E3eQ5gKHFNhPS8d](https://i.loli.net/2021/02/23/E3eQ5gKHFNhPS8d.png)

**切换中英文**

> 注：Mac 系统上的鼠须管不能区分左、右 Shift ，因此左、右 Shift 键的作用一样。

![ogPE4mBitAzcZ5U](https://i.loli.net/2021/02/23/ogPE4mBitAzcZ5U.png)

**翻页**

![截屏2021-02-23 下午6.33.18](https://tvax4.sinaimg.cn/large/008eZBHKly1gnxngud3kij31ao0a641s.jpg)

**快捷键**

更多快捷键参考：[点击这里](https://github.com/rime/rime-prelude/blob/master/key_bindings.yaml)

![yI5XAYwr9mg23ES](https://i.loli.net/2021/02/23/yI5XAYwr9mg23ES.png)


---
### 载入词库和Emoji

打开 `luna_pinyin_simp.custom.yaml` 载入 Emoji、中/英文词库。

![lLwFyREWcz3N7Gv](https://i.loli.net/2021/02/23/lLwFyREWcz3N7Gv.png)

opencc 文件夹内 `emoji_word.txt` 可修改 Emoji。

注：候选词如果不显示某个 Emoji，原因是词典里没包含 Emoji 中文编码。例如，眯眼 = 😆，词典里需包含〔眯眼〕才会显示〔😆〕。

![1yGouCUvIeFhSDn](https://i.loli.net/2021/02/23/1yGouCUvIeFhSDn.png)

---

### 自定义快捷字符

打开 `luna_pinyin_simp.custom.yaml` 修改快捷 Emoji 和符号。

![iNUSQxemPdycoRg](https://i.loli.net/2021/02/23/iNUSQxemPdycoRg.png)


---

### 模糊音

打开 `luna_pinyin_simp.custom.yaml `，去掉前面的 ` #` 开启模糊音。 

![jXRH9aq3iAlIOhW](https://i.loli.net/2021/02/23/jXRH9aq3iAlIOhW.png)



---

### 输入动态时间、日期、星期

![008eZBHKgy1gn4w304etcj31e00bzjtr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4w304etcj31e00bzjtr.jpg)

打开 `Rime.lua`，可修改显示方式和快捷编码，例如，我设置 `rq` = `日期`。

![UTXEo4NGh5VzmBk](https://i.loli.net/2021/02/23/UTXEo4NGh5VzmBk.png)

最后在对应的输入方式里加入下面代码生效。

例如，我使用朙月拼音·简化字，就添加在 `luna_pinyin_simp.custom.yaml` 里。

![EiZV7jTWFUaYtpl](https://i.loli.net/2021/02/23/EiZV7jTWFUaYtpl.png)

---

### 自定义短语（文本替换）

打开 `custom_phrase.txt` 设置自定义短语。

![S3z1lxFm8Kws6nW](https://i.loli.net/2021/02/23/S3z1lxFm8Kws6nW.png)

规则：`文字`  +  `编码` +  `权重`，使用 `Tab` 键分隔。

![RhHwdz9GT3NAlx7](https://i.loli.net/2021/02/23/RhHwdz9GT3NAlx7.png)



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

### 特定程序里关闭中文输入

打开 `squirrel.custom.yaml` 进行添加修改设置。

![HIL4Jevp8tulaBk](https://i.loli.net/2021/02/23/HIL4Jevp8tulaBk.png)


---

### 词库

Rime 的词库文件，命名为 <词库名>.dict.yaml，包含一份码表及对应的规则说明。 词库文件的前半部份为一份 YAML 文档：

```
# 注意这里以 --- ... 分别标记出 YAML 文档的起始与结束位置
# 在 ... 标记之后的部份就不会作 YAML 文档来解读

---
name: luna_pinyin
version: "0.9"
sort: by_weight
use_preset_vocabulary: true
...
```

解释：

- `name`: 词典名，内部使用，命名原则同“方案标识”；可以与配套的输入方案标识一致，也可不同；
- `version`: 管理词典的版本，规则同输入方案定义文件的版本号；
- `sort`: 词条初始排序方式，可选填 `by_weight`（按词频高低排序）或 `original`（保持原码表中的顺序）；
- `use_preset_vocabulary`: 填 `true` 或 `false`，选择是否导入预设词汇表【八股文】。

码表：格式每行定义一条〔文字－编码〕，字符与码表之间使用 `tab` 键，码表之间使用空格键。

```
# 单字
你	ni
我	wo

# 词组
你的
天地	tian di
目的地	mu di di
```


---

### 挂载词库

打开 `luna_pinyin.extended.dict.yaml`，将词库名称添加进去。

例如，英文词库 `luna_pinyin.cn_en.dict.yaml`，输入 `- luna_pinyin.cn_en` 即可。

![osE3gXnyJriLCuK](https://i.loli.net/2021/02/23/osE3gXnyJriLCuK.png)

---
### 搜狗词库转换
1）打开[搜狗词库](https://pinyin.sogou.com/dict/)下载 `.scel` 词库文件。下载深蓝词库转换工具 [imewlconverter_Windows.zip](https://github.com/studyzy/imewlconverter/releases) 并打开，选择词库，点击打开。

> 注：如果工具识别不到词库，选择所有格式。

2）选择【搜狗细胞词库 scel】-【无拼音纯汉字】，再点击转换保存在本地。

![bVyxtQvzXmBjCTP](https://i.loli.net/2021/02/05/bVyxtQvzXmBjCTP.png)

3）生成 `.txt` 文件（也可以选择多个词库生成一个 `.txt` 文件）。

4）将下面代码粘贴在 `.txt` 文档内最上方， `∙∙∙` 后面加一个换行。

```
# Rime dictionary
# encoding: utf-8

---
name: luna_pinyin.name
version: "2021.02.05"
sort: by_weight
use_preset_vocabulary: false
...

```

例如，艺术设计词库，name：`luna_pinyin.yishusheji` ，根据自己喜好命名。

![G6ns2wzAcD9tPbm](https://i.loli.net/2021/02/23/G6ns2wzAcD9tPbm.png)

然后将 `.txt` 重命名为 `luna_pinyin.yishusheji.dict.yaml`，放在 Rime 目录文件夹内，再参考[【挂载词库】](#挂载词库)添加。

---

### 删除误上屏的错词

先把选字光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift`+`Fn`+`Delete` 键（第三方键盘按   `Control`+`Delete`）。

> 注：只能从用户词典中删除词组；词库里词组只会取消其调频效果。

---

### 智能纠错

打开 `luna_pinyin_simp.custom.yaml` 下拉至底部。

![AFIO56cLTDiGo2d](https://i.loli.net/2021/02/23/AFIO56cLTDiGo2d.png)

---

### 关闭 Emoji

按 `Control` + `｀`  组合键切换输入方式，选择〔朙月拼音·简化字〕，再选择〔🈶→🈚️〕。反之选择〔🈚️→🈶〕。

> 注：这里也可以选择设置半角和全角符号，中文过滤等。

![zqf5LdKeXMsocEt](https://i.loli.net/2021/02/24/zqf5LdKeXMsocEt.png)

---

### 特定程序里中文状态输入英文标点

打开 `squirrel.custom.yaml`，在指定程序里加入 `ascii_punct: true` 即可。

例如，下图里是 Visual Studio Code 里中文状态输入标点是英文符号。

![UWnEmVLXvazqDAj](https://i.loli.net/2021/02/24/UWnEmVLXvazqDAj.png)

---

### 卸载鼠须管方法

1. 打开系统盘好设置 - 键盘 - 输入法，移除【鼠须管】。
2. 打开访达并按下 `command` + `shift` + `G` 前往 `/Library/Input Methods` 文件夹，删除【Squirrel.app】。
3. 如上，前往 `~/Library` 并删除文件夹【Rime】。
4. 重新登入系统，确保清理完毕。