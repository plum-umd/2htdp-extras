# 2htdp-extras

This package implements "extras" for the 2htdp libraries.

```
(require 2htdp/image/bytes) 
; image->bytes : Image -> Bytes
; bytes->images : Bytes -> Image
; Serialize and deserialize image

; Useful for sending images in universe programs because
; bytes are S-Exprs.


(require 2htdp/image/colors) 
; colors : [Listof String]
; A list of all color names
```
