# Rime 输入法（鼠须管） for Mac 配置方案
![](https://i.loli.net/2020/12/30/8gMEchXjVxzZfya.jpg)

## 一、安装

1. 前往 [Rime](https://rime.im/) 下载并安装好输入法。
3. 点击【用户设定】打开 Rime 目录文件夹（为防止操作不当引起错误，可将此目录文件备份）。

![](https://i.loli.net/2020/12/28/SjZrkqWQNpUDi4O.png)

3. 将【配置文件】里所有文件粘贴覆盖到 Rime 目录文件夹内。
4. 点击【重新部署】完成。


![](https://i.loli.net/2020/12/28/eMYzCETdGV3qQtB.png)

* 按 `Control` + `~` 选择输入法方案。
* 将【字体】文件夹内的 2 个文件安装到 Mac【字体册】。

## 二、皮肤

打开 `squirrel.custom.yaml` 修改皮肤参数。

```
macOS:	#主题
	author: "masonme"	#	作者
	name: "masonme"	#	名字
	back_color: 0xffffff	#	输入条的背景色，色值按照BGR的形式16进制填写
	corner_radius: 5	#	输入条的圆角效果
	border_height: 4	#	输入条上下宽度
	dborder_width: 4	#	输入条左右宽度
	border_color: 0x9f62e8	#	输入条边框颜色，可能在横向模式下不起作用
	border_color_width: 0	#	输入条边框宽度
	candidate_format: "%c %@  "	#	设置每个候选词之间的间隔距离，%c代表备选的数字，%@代表候选字，通过输入空格来调整候选字之间的间隔距离
	candidate_text_color: 0x4c4c4c	#	候选字颜色
	# comment_text_color: 0x808080	#	提示文字颜色，全拼模式下可能不显示
	font_face: PingFangSC	#	字体
	font_point: 17	#	字体大小
	text_color: 0x333333	#	普通候选字的颜色，非第一候选字
	hilited_candidate_label_color: 0xffffff	#	第一候选字标签颜色，也就是数字1
	hilited_text_color: 0xffffff	#	第一候选字颜色
	hilited_candidate_back_color: 0xD75A00	#	第一候选字高亮颜色（背景色）
	hilited_corner_radius: 5	#	第一候选字高亮颜色的圆角，当不设置时就是一整块的颜色，设置了圆角之后就带有圆角效果了
	horizontal: true	#	设置水平还是竖直模式
	inline_preedit: true	#	设置是否双行显示
	label_color: 0x888888	#	普通标签的颜色(非第一候选字)，也就是候选字数字
	label_font_point: 12	#	普通标签的字体大小
```

少数情况下会遇到 `0x` 开头的颜色值，比如 Rime 输入法里 `hilited_candidate_back_color: 0xD05B21`，末尾的 `0xD05B21` 表示第一候选词背景颜色。如果同一颜色输入不同表示方式，那么显示就会变化。

* 每 8bit 一组，从低位到高位分别代表 Red、Green、Blue、Alpha，共32bit。
* Alpha 值（如果界面支持）是可选的，默认为 `0xF` F 即不透明。
* 把颜色值写为十六进制数，即 `0xAABBGGRR` 或 `0xBBGGRR`。

![](https://upload-images.jianshu.io/upload_images/12894454-3ebd276bc32059e0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

* 配色方案工具：https://gjrobert.github.io/Rime-See-Me-squirrel/

### 三、开启/禁用 Shift 键

打开 `default.custom.yaml` 在 `switch_key` 下修改。
> * `commit_code` 表示开启
> * `noop` 表示禁用
```
switch_key:
      Shift_L: commit_code	#	开启左 Shift 键切换中英文
      Shift_R: noop	#	禁用右 Shift 键切换中英文
      Control_L: noop
      Control_R: noop
      Caps_Lock: commit_code
      Eisu_toggle: clear
```

### 四、键盘选择

打开 `default.custom.yaml` 。
```
patch:
	schema_list:
  	- schema: double_pinyin_flypy	#	双拼
    - schema: luna_pinyin_simp   # 朙月拼音 简化字
    - schema: luna_pinyin	# 朙月拼音
  switcher/hotkeys:
    - "Control+grave"             # 快捷键 Control + `
```