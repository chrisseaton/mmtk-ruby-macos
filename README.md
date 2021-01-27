```
% vagrant up
% vagrant ssh
```

```
$ export RUST_LOG=trace
$ ruby -e 'loop { [0] * (1024 * 1024) }'
...
[2021-01-27T01:57:17Z TRACE mmtk::util::alloc::bumpallocator] alloc
[2021-01-27T01:57:17Z TRACE mmtk::util::alloc::bumpallocator] Thread local buffer used up, go to alloc slow path
[2021-01-27T01:57:17Z TRACE mmtk::util::alloc::bumpallocator] alloc_slow
[2021-01-27T01:57:17Z TRACE mmtk::policy::space] Space.acquire, tls=OpaquePointer(0xa)
[2021-01-27T01:57:17Z TRACE mmtk::policy::space] Reserving pages
[2021-01-27T01:57:17Z TRACE mmtk::policy::space] Pages reserved
[2021-01-27T01:57:17Z TRACE mmtk::policy::space] Polling ..
[2021-01-27T01:57:17Z DEBUG mmtk::policy::space] Collection not required
[2021-01-27T01:57:17Z DEBUG mmtk::util::heap::monotonepageresource] In MonotonePageResource, reserved_pages = 8, required_pages = 8
[2021-01-27T01:57:17Z DEBUG mmtk::util::heap::monotonepageresource] cursor = 0x20000998000, sentinel = 0x40000000000, current_chunk = 0x20000800000
[2021-01-27T01:57:17Z DEBUG mmtk::util::heap::monotonepageresource] bytes=32768
[2021-01-27T01:57:17Z DEBUG mmtk::util::heap::monotonepageresource] tmp=0x200009a0000
[2021-01-27T01:57:17Z DEBUG mmtk::util::heap::monotonepageresource] update cursor = 0x200009a0000
[2021-01-27T01:57:17Z TRACE mmtk::policy::space] Grow space from 0x20000998000 for 32768 bytes (new chunk = false)
[2021-01-27T01:57:17Z DEBUG mmtk::policy::space] Space.acquire(), returned = 0x20000998000
[2021-01-27T01:57:17Z TRACE mmtk::util::alloc::bumpallocator] Acquired a new block of size 32768 with start address 0x20000998000
[2021-01-27T01:57:17Z TRACE mmtk::util::alloc::bumpallocator] alloc
[2021-01-27T01:57:17Z TRACE mmtk::util::alloc::bumpallocator] Bump allocation size: 288, result: 0x20000998000, new_cursor: 0x20000998120, limit: 0x200009a0000
...
```
