--[[
hello world
--]]
print('hello world!');

tab1 = { key1= "val1", key2 = "val2" }
tab2 = {}
tab2["a"]=12
tab2["b"]="b"
fruits = {"banana","orange","apple"}

-- 在末尾插入
table.insert(fruits,"mango")
print("索引为 4 的元素为 ",fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits,2,"grapes")
print("索引为 2 的元素为 ",fruits[2])

print("最后一个元素为 ",fruits[1])
table.remove(fruits,1)
print("移除后最后一个元素为 ",fruits[5])

for i, v in ipairs(fruits) do
    print(i .. " - " .. v)
end
 
tbl = {[1] = "a", [2] = "b", [3] = "c",[4] = "d", [25] = "n", [26] = "z"}
print("tbl 长度 ", #tbl)
for k, v in pairs(tbl) do
    print(k .. " - " .. v)
end

mytable = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable.key1,mytable.key2)