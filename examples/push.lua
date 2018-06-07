-- Test the push parser and encoder
-- The program will decode a message, and as it goes will
-- encode it again. 
 
local bp = require 'bencode-push'

local orig = '0:10:abcdefghijli10e10:abcdefghijeli20ei30eed3:bar4:spam3:fooi42ee'

-- a callback for the encoder, will concatenate everything
local back = ''
local encode = bp.encoder( function(s) back=back..s end )

-- callbacks for the decoder, will print out and send back to the encoder
local callbacks = {
  push_number = function (level, n)
    print ('level', level, 'number', n)
    encode.push_number(n)
  end,
  push_string_len = function (level, length)
    print ('level', level, 'string length', length)
    encode.push_string_length(length)
  end,
  push_string_fragment = function (level, string)
    if string then 
      print ('level', level, 'string fragment', '['..#string..']', string)
      encode.push_string_fragment(string)
    else
      print ('level', level, 'string end')
    end
  end,
  push_list = function (level)
    print ('level', level, 'list')
    encode.push_list()
  end,
  push_dict = function (level)
    print ('level', level, 'dictionary')
    encode.push_dict()
  end,
  push_pop = function (level)
    print ('level', level, 'pop')
    encode.pop()
  end,
}

print ('decoding:', orig)

local decode = bp.decoder(callbacks)
math.randomseed(os.time())

-- split a message in random chunks and decode
local m = orig
while #m > 0 do
  local subm = m:sub(1, math.random(0, 10))
  m = m:sub(#subm+1, -1)
  decode(subm)
end

print ('reencoded:', back)
assert(orig==back, 'reencoding failed!')
