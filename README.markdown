Name
====

bencode, lua-bencode or whatever name you call it.


License
=======

The bencode module may be copied under the same terms as Lua.
Please see COPYING for more information.


Installation
============

There are three possible ways install it:

 * your distribution has a package for it (unlikely, unless they like lua)
 * use [luarocks][1] to install it.
 * copy bencode.lua to some place in package.path by hand

What's it all about?
====================

This is a module for the lua programming language for decoding and encoding
bencoded data which can be used to read and write torrent files for bittorrent.
More information on bencoding can be found [here][2].

Authors
=======

 * Kristofer Karlsson, who wrote the decoder, islist and isdictionary
 * Moritz Wilhelmy, who wrote the rest and glued everything together
 * Jorge Visca, who fixed all the bugs and wrote the bencode-push library


Project Homepage
================

Please see the [bitbucket page][3].


Bugs
====

There is an [issue tracker][4] as part of the bitbucket page.
Please use this facility to report any bugs and features you encounter.

Documentation
=============

See the doc directory.


[1]: http://luarocks.org/
[2]: http://wiki.theory.org/BitTorrentSpecification#bencoding
[3]: https://bitbucket.org/wilhelmy/lua-bencode/
[4]: https://bitbucket.org/wilhelmy/lua-bencode/issues
