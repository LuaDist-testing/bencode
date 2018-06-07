-- This file was automatically generated for the LuaDist project.

package = "bencode"
version = "1-1"

-- LuaDist source
source = {
  tag = "1-1",
  url = "git://github.com/LuaDist-testing/bencode.git"
}
-- Original source
-- source = {
--     url = "http://cdn.bitbucket.org/wilhelmy/lua-bencode/downloads/bencode-1.tar.gz",
--     md5 = "8e752b15cdb93a5841d3b89d06cc8582"
-- }

description = {
    summary  = "library for encoding and decoding bencoded data",
    detailed = "bencode is a module for encoding and decoding bencoded data for the bittorrent filesharing protocols",
    license  = "Public Domain",
    homepage = "http://bitbucket.org/wilhelmy/lua-bencode/"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "none",
    install = {
        lua = { "bencode.lua" }
    }
}