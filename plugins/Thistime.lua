local address = 'http://powerful.friends-memorial.ir/api/'
local function run(msg)
local resolve = http.request(address..'index.php')
resolve = string.gsub(resolve,'@GPMod','')
return resolve
end
return {
   patterns = {"^[/!]time$"},
   run = run
}
