

# Rime 鼠须管 Squirrel 配置文件详解

![](https://i.loli.net/2021/02/22/gqMZF8Loa51XWVy.png)

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
14. [智能纠错](#十四智能纠错)
15. [关闭 Emoji](#十五关闭-Emoji)
16. [![Telegram交流群](https://raw.githubusercontent.com/liuour/SVG/aee8b7c77bb0aff2171f5c4b11caba849fc90768/Telegram.svg)](https://t.me/rimesquirrel)
---
### 一、安装输入法

下载安装包 [0.14.0](https://dl.bintray.com/rime/squirrel/:Squirrel-0.14.0.zip)，初次安装，需注销并重新登录，点选菜单栏【ㄓ】图标。按组合键 `Control`+`｀` 切换输入方案，到这一步，已经可以使用。

注：不建议升级至 `0.15.0 `或更高版本，行高会不一致（如效果图所示，仔细观察会发现纯中文、中文里带 Emoji、声调、箭头等）。

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
default.custom.yaml                      # 全局配置（方案、候选词个数、中英文切换、翻页、快捷键）    
easy_en.dict.yaml                        # 词库（英文）                       
easy_en.schema.yaml                      # 英文词典配套文件                                   
luna_pinyin_simp.custom.yaml             # 朙月拼音·简化字配置（挂载中英文、Emoji、快捷符号、模糊音、动态日期）
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
luna_pinyin.cn_en.dict.yaml              # 词库（英文和特殊符号）                    
luna_pinyin.dict.yaml                    # 词库（汉字）    
luna_pinyin.extended.dict.yaml           # 外挂词库                    
opencc                                   # Emoji                    
rime.lua                                 # 动态时间、日期、星期            
squirrel.custom.yaml                     # 皮肤                         
```

点击【重新部署】完成定制。

注1：修改任何文件都要重新部署（快捷键 `Control`+`Option`+`｀`）生效。

注2：本配置文件包含约 200 万个词库，重新部署时间可能会稍长，介意的话可以删除自己不喜欢的词库。

![008eZBHKgy1gn45fjrwu3j31e00c87e7](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45fjrwu3j31e00c87e7.jpg)

到这里可以近乎完美地使用输入法了，对细节进行调整，继续往下看。

---
### 三、输入方案、候选词个数、中英文切换、翻页、快捷键

打开 `default.custom.yaml`。

**切换输入方案**

更多输入方案参考：[点击这里](https://gist.github.com/lotem/2309739)

![BblXHY6ucgoT7La](https://i.loli.net/2021/02/23/BblXHY6ucgoT7La.png)

**候选词个数**

![E3eQ5gKHFNhPS8d](https://i.loli.net/2021/02/23/E3eQ5gKHFNhPS8d.png)

**切换中英文**

![ogPE4mBitAzcZ5U](https://i.loli.net/2021/02/23/ogPE4mBitAzcZ5U.png)

**翻页**

![截屏2021-02-23 下午6.33.18](https://tvax4.sinaimg.cn/large/008eZBHKly1gnxngud3kij31ao0a641s.jpg)

**快捷键**

更多快捷键参考：[点击这里](https://github.com/rime/rime-prelude/blob/master/key_bindings.yaml)

![yI5XAYwr9mg23ES](https://i.loli.net/2021/02/23/yI5XAYwr9mg23ES.png)


---
### 四、载入词库和Emoji

打开 `luna_pinyin_simp.custom.yaml` 载入 Emoji、中/英文词库。

![lLwFyREWcz3N7Gv](https://i.loli.net/2021/02/23/lLwFyREWcz3N7Gv.png)

opencc 文件夹内 `emoji_word.txt` 可修改 Emoji。

注：候选词如果不显示某个 Emoji，原因是词典里没包含 Emoji 中文编码。例如，眯眼 = 😆，词典里需包含〔眯眼〕才会显示〔😆〕。

![1yGouCUvIeFhSDn](https://i.loli.net/2021/02/23/1yGouCUvIeFhSDn.png)

---

### 五、自定义快捷字符

打开 `luna_pinyin_simp.custom.yaml` 修改快捷 Emoji 和符号。

![iNUSQxemPdycoRg](https://i.loli.net/2021/02/23/iNUSQxemPdycoRg.png)


---

### 六、模糊音

打开 `luna_pinyin_simp.custom.yaml `，去掉前面的 ` #` 开启模糊音。 

![jXRH9aq3iAlIOhW](https://i.loli.net/2021/02/23/jXRH9aq3iAlIOhW.png)



---

### 七、输入动态时间、日期、星期

![008eZBHKgy1gn4w304etcj31e00bzjtr](https://ww1.sinaimg.cn/large/008eZBHKgy1gn4w304etcj31e00bzjtr.jpg)

打开 `Rime.lua`，可修改显示方式和快捷编码，例如，我设置 `rq` = `日期`。

![UTXEo4NGh5VzmBk](https://i.loli.net/2021/02/23/UTXEo4NGh5VzmBk.png)

最后在对应的输入方式里加入下面代码生效。

例如，我使用朙月拼音·简化字，就添加在 `luna_pinyin_simp.custom.yaml` 里。

![EiZV7jTWFUaYtpl](https://i.loli.net/2021/02/23/EiZV7jTWFUaYtpl.png)

---

### 八、自定义短语（文本替换）

打开 `custom_phrase.txt` 设置自定义短语。

![S3z1lxFm8Kws6nW](https://i.loli.net/2021/02/23/S3z1lxFm8Kws6nW.png)

规则：`文字`  +  `编码` +  `权重`，使用 `Tab` 键分隔。

![RhHwdz9GT3NAlx7](https://i.loli.net/2021/02/23/RhHwdz9GT3NAlx7.png)



---
### 九、皮肤主题

打开 `squirrel.custom.yaml`，在 `style/color_scheme:` 后方输入皮肤名字更换主题。

更多皮肤效果：[点击这里](https://github.com/liuour/rime-pifu)

![GSyDz7sZP5nO3jY](https://i.loli.net/2021/02/23/GSyDz7sZP5nO3jY.png)


* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共 32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![008eZBHKgy1gn45ifbfhnj311r0kw769](https://ww1.sinaimg.cn/large/008eZBHKgy1gn45ifbfhnj311r0kw769.jpg)

---

### 十、在特定程序里关闭中文输入

打开 `squirrel.custom.yaml` 进行添加修改设置。

![HIL4Jevp8tulaBk](https://i.loli.net/2021/02/23/HIL4Jevp8tulaBk.png)


---

### 十一、词库设置

打开 `luna_pinyin.extended.dict.yaml`，将以 `.dict.yaml` 结尾的词库添加进去。

例如，英文词库 `luna_pinyin.cn_en.dict.yaml`，输入 `- luna_pinyin.cn_en` 即可。

![osE3gXnyJriLCuK](https://i.loli.net/2021/02/23/osE3gXnyJriLCuK.png)

---
### 十二、搜狗词库转换方法
1）打开[搜狗词库](https://pinyin.sogou.com/dict/)下载 `.scel` 词库文件。下载深蓝词库转换工具 [imewlconverter_Windows.zip](https://github.com/studyzy/imewlconverter/releases) 并打开，选择词库，点击打开。

注：如果工具识别不到词库，选择所有格式。

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

然后将 `.txt` 重命名为 `luna_pinyin.yishusheji.dict.yaml`，放在 Rime 目录文件夹内，再参考[【十一、词库设置】](#十一词库设置)添加。

---

### 十三、删除误上屏的错词

先把选字光标（`↑` `↓`或`←` `→`）移到要删除的词组上，按 `Shift`+`Fn`+`Delete` 键（第三方键盘按   `Control`+`Delete`）。

【注】只能从用户词典中删除词组；词库里词组只会取消其调频效果。

---

### 十四、智能纠错

打开 `luna_pinyin_simp.custom.yaml` 下拉至底部。

![AFIO56cLTDiGo2d](https://i.loli.net/2021/02/23/AFIO56cLTDiGo2d.png)

---

### 十五、关闭 Emoji

按 `Control` + `｀`  组合键切换输入方式，选择〔朙月拼音·简化字〕，再选择〔🈶→🈚️〕。反之选择〔🈚️→🈶〕。

注：这里也可以选择设置半角和全角符号，中文过滤等。

![zqf5LdKeXMsocEt](https://i.loli.net/2021/02/24/zqf5LdKeXMsocEt.png)