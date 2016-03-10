local database = 'http://umbrella.shayan-soft.ir/txt/'
local function run(msg)
local res = http.request(database.."danestani.db")
local danestani = res:split(",")
rete = danestani[math.random(#danestani)]
return string.gsub(rete,"@umbrellateam","")
end

return {
description = "Knowing Book",
usage = "!danestani : send knowing texts",
patterns = {"^[/!]danestani$"},
run = run
}
