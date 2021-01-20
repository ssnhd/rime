local function append_blank_filter(input)
   local cands = {}

   for cand in input:iter() do
      if (not cand.comment:find("☯")) then
         table.insert(cands, cand)
      end
   end

   for i, cand in ipairs(cands) do
      yield(Candidate("word", cand.start, cand._end, cand.text .. " ", cand.comment))
   end
end

return { append_blank_filter = append_blank_filter }
