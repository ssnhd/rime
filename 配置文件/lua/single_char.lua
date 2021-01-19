--[[
single_char_filter: 候选项重排序，使单字优先
--]]

local function filter(input)
   local l = {}
   for cand in input:iter() do
      if (utf8.len(cand.text) == 1) then
	 yield(cand)
      else
	 table.insert(l, cand)
      end
   end
   for i, cand in ipairs(l) do
      yield(cand)
   end
end

return filter
