min_money=0
script_name="test"
function clear()
end
--above is a smallest script for chain
--you need to define your own function
--example:
--this is store transaction,it just need to store in database,maybe we need to take some money from him.
--you can read the comments below before read the code.
function store(createrid,tablearray)
	--createrid is in string
	--tablearray is a string array in table which has key start from 1
	m = get_usermoney(createrid)
	if type(m)~="nil" then
		m=m-min_money
		rst=set_usermoney(createrid,m)
		if type(rst)~="nil" then
			return 1
		else
			return -132
		end
	else
		return -131
	end
	--return result must be a number
	--if number is 0 or larger then 0,it means success,you can set the map by yourself
	--like:0-->success with no neccessary message.1-->success,your are so brilliant.etc.
	--if number is smaller then 0,it means failed!Please start from -100.between -1 and -100 is for system.
	--like:-101-->failed,your account don't have enough money.-102-->failed,you have one chance/day,and you have used.
end
------------------------------available api to use:
--notice:all table shouldn't have metatable
--[[
1.json_marshal(tableobject)
tableobject is a table which shouldn't have array and hashmap together.If it has array then the hashmap will be dropped,it means you will get a data lost.Nest is supported.
return value nil --> unknwon error, a string --> success the string is what you want
--]]
--[[
2.json_unmarshal(string)
everyone knowns what is a string
return value nil --> unknwon error,a table --> success,same as above,array and hashmap can't stay together.Nest is supported.
--]]
--[[
3.get_usermoney(userid)
userid is in string format
return value nil --> unknwon error,number --> success
--]]
--[[
4.set_usermoney(userid,money)
userid is in string format
money is a number,it will be set as your current money num in account
return value nil --> unknown error,true --> success
--]]
--[[
5.get_userdata(userid)
userid is in string format
return value nil --> unknwon error,a string --> success,the string can be a result from json_marshal
notice:different script has different userdata.
--]]
--[[
6.set_userdata(userid,string)
userid is in string format
string is the user's data in this script,the string can be a result from json_marshal
return value nil --> unknwon error,true --> success
notice:different script has different userdata.
--]]
--[[
7.get_cachedata(key)
cache data is in key-value mode
key is in string format
return value nil --> unknwon error,a string --> success,this is the value
notice:same key in different script is different
--]]
--[[
8.set_cachedata(key,value)
cache data is in key-value mode
key and value are in string format
return value nil --> unknwon error,true --> success,this is the value
notice:same key in different script is different
--]]
--[[
9.del_cachedata(key)
cache data is in key-value mode
key is in string format
return value nil --> unknwon error,true --> success,this is the value
notice:same key in different script is different
--]]
------------------------------available build in function to use:
--basic syntax in lua
--print
--error
--type
--tonumber
--tostring
--select
--next
--table realted:getn concat insert maxn remove sort
--string related:byte char dump find format gsub len lower match rep reverse sub upper
--math related:except random and random raleated
