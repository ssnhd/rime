--[[
number_translator: 将 `/` + 阿拉伯数字 翻译为大小写汉字
--]]

local confs = {
   {
      comment = " 大写",
      number = { [0] = "零", "壹", "贰", "叁", "肆", "伍", "陆", "柒", "捌", "玖" },
      suffix = { [0] = "", "拾", "佰", "仟" },
      suffix2 = { [0] = "", "万", "亿", "万亿", "亿亿" }
   },
   {
      comment = " 小写",
      number = { [0] = "零", "一", "二", "三", "四", "五", "六", "七", "八", "九" },
      suffix = { [0] = "", "十", "百", "千" },
      suffix2 = { [0] = "", "万", "亿", "万亿", "亿亿" }
   },
   {
      comment = " 大寫",
      number = { [0] = "零", "壹", "貳", "參", "肆", "伍", "陸", "柒", "捌", "玖" },
      suffix = { [0] = "", "拾", "佰", "仟" },
      suffix2 = { [0] = "", "萬", "億", "萬億", "億億" }
   },
   {
      comment = " 小寫",
      number = { [0] = "零", "一", "二", "三", "四", "五", "六", "七", "八", "九" },
      suffix = { [0] = "", "十", "百", "千" },
      suffix2 = { [0] = "", "萬", "億", "萬億", "億億" }
   },
}

local function read_seg(conf, n)
   local s = ""
   local i = 0
   local zf = true

   while string.len(n) > 0 do
      local d = tonumber(string.sub(n, -1, -1))
      if d ~= 0 then
	 s = conf.number[d] .. conf.suffix[i] .. s
	 zf = false
      else
	 if not zf then
	    s = conf.number[0] .. s
	 end
	 zf = true
      end
      i = i + 1
      n = string.sub(n, 1, -2)
   end

   return i < 4, s
end

local function read_number(conf, n)
   local s = ""
   local i = 0
   local zf = false

   n = string.gsub(n, "^0+", "")

   if n == "" then
      return conf.number[0]
   end

   while string.len(n) > 0 do
      local zf2, r = read_seg(conf, string.sub(n, -4, -1))
      if r ~= "" then
	 if zf and s ~= "" then
	    s = r .. conf.suffix2[i] .. conf.number[0] .. s
	 else
	    s = r .. conf.suffix2[i] .. s
	 end
      end
      zf = zf2
      i = i + 1
      n = string.sub(n, 1, -5)
   end
   return s
end

local function translator(input, seg)
   if string.sub(input, 1, 1) == "/" then
      local n = string.sub(input, 2)
      if tonumber(n) ~= nil then
	 for _, conf in ipairs(confs) do
	    local r = read_number(conf, n)
	    yield(Candidate("number", seg.start, seg._end, r, conf.comment))
	 end
      end
   end
end

return translator
