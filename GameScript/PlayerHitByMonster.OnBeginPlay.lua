return function (self) 
self.damSkin[0] = "d6339bb5df9e4a3fa37b774983bfb5b9"
self.damSkin[1] = "fed78745796444a59e731af32d169631"
self.damSkin[2] = "9b977cf459b6496a9453fe0fc827ebf7"
self.damSkin[3] = "d4dbe9c88c8946a5b4ea72e15e75a755"
self.damSkin[4] = "7f595ae2fa104c4984006814aabbd39b"
self.damSkin[5] = "8bef41921116430fb5bf52765deb7a5c"
self.damSkin[6] = "ddd026bd28fd420891c74b297b044098"
self.damSkin[7] = "28c2fe79a6164105a79b202df13192d4"
self.damSkin[8] = "085296c6fe6f4ed7a703c2939e6a2724"
self.damSkin[9] = "d85d0dfa5bd5450db9411f2dde020c90"

self.damBigSkin[0] = "537c44b24fdb4e148e1204ea9b71c965"
self.damBigSkin[1] = "2c60ebd8faef4271b9b3100a1611c2fb"
self.damBigSkin[2] = "92a4a4d16bfb4f1ba7b3f02ee00d79b0"
self.damBigSkin[3] = "08aa9f262c9d4b47a7f4b2eed31d2c28"
self.damBigSkin[4] = "cdacad870dcf4019ae0aaf20e7ea73a6"
self.damBigSkin[5] = "3f06a95ce80641babe5670d927869952"
self.damBigSkin[6] = "82ad67772ec74cb58da41b8b1f47a4b2"
self.damBigSkin[7] = "91323a84b6a14b1380fea8656c5925d3"
self.damBigSkin[8] = "08dfacee2d8440c5afd69ba8967af0dd"
self.damBigSkin[9] = "530978709cf049aaa1c76c88caec04ca"

local func = function()
end

_ResourceService:PreloadAsync(self.damSkin, func)
_ResourceService:PreloadAsync(self.damBigSkin, func)
end