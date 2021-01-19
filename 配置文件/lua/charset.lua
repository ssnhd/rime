--[[
charset_filter: 滤除含 CJK 扩展汉字的候选项
charset_comment_filter: 为候选项加上其所属字符集的注释

本例说明了 filter 最基本的写法。

请见 `charset_filter` 和 `charset_comment_filter` 上方注释。
--]]

-- 帮助函数（可跳过）
local charset = {
   ["CJK"] = { first = 0x4E00, last = 0x9FFF },
   ["ExtA"] = { first = 0x3400, last = 0x4DBF },
   ["ExtB"] = { first = 0x20000, last = 0x2A6DF },
   ["ExtC"] = { first = 0x2A700, last = 0x2B73F },
   ["ExtD"] = { first = 0x2B740, last = 0x2B81F },
   ["ExtE"] = { first = 0x2B820, last = 0x2CEAF },
   ["ExtF"] = { first = 0x2CEB0, last = 0x2EBEF },
   ["Compat"] = { first = 0x2F800, last = 0x2FA1F } }

local function exists(single_filter, text)
  for i in utf8.codes(text) do
     local c = utf8.codepoint(text, i)
     if (not single_filter(c)) then
	return false
     end
  end
  return true
end

local function is_charset(s)
   return function (c)
      return c >= charset[s].first and c <= charset[s].last
   end
end

local function is_cjk_ext(c)
   return is_charset("ExtA")(c) or is_charset("ExtB")(c) or
      is_charset("ExtC")(c) or is_charset("ExtD")(c) or
      is_charset("ExtE")(c) or is_charset("ExtF")(c) or
      is_charset("Compat")(c)
end

--[[
filter 的功能是对 translator 翻译而来的候选项做修饰，
如去除不想要的候选、为候选加注释、候选项重排序等。

欲定义的 filter 包含两个输入参数：
 - input: 候选项列表
 - env: 可选参数，表示 filter 所处的环境（本例没有体现）

filter 的输出与 translator 相同，也是若干候选项，也要求您使用 `yield` 产生候选项。

如下例所示，charset_filter 将滤除含 CJK 扩展汉字的候选项：
--]]
local function charset_filter(input)
   -- 使用 `iter()` 遍历所有输入候选项
   for cand in input:iter() do
      -- 如果当前候选项 `cand` 不含 CJK 扩展汉字
      if (not exists(is_cjk_ext, cand.text))
      then
	 -- 结果中仍保留此候选
	 yield(cand)
      end
      --[[ 上述条件不满足时，当前的候选 `cand` 没有被 yield。
           因此过滤结果中将不含有该候选。
      --]]
   end
end


--[[
如下例所示，charset_comment_filter 为候选项加上其所属字符集的注释：
--]]
local function charset_comment_filter(input)
   -- 使用 `iter()` 遍历所有输入候选项
   for cand in input:iter() do
      -- 判断当前候选内容 `cand.text` 中文字属哪个字符集
      for s, r in pairs(charset) do
	 if (exists(is_charset(s), cand.text)) then
	    --[[ 修改候选的注释 `cand.comment`
                 因复杂类型候选项的注释不能被直接修改，
                 因此使用 `get_genuine()` 得到其对应真实的候选项
            --]]
	    cand:get_genuine().comment = cand.comment .. " " .. s
	    break
	 end
      end
      -- 在结果中对应产生一个带注释的候选
      yield(cand)
   end
end

-- 本例中定义了两个 filter，故使用一个表将两者导出
return { filter = charset_filter,
	 comment_filter = charset_comment_filter }
