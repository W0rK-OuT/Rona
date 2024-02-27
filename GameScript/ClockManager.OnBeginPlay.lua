return function (self) 
self.clock:SetEnable(false)
self.left1 = self.clock:GetChildByName("Left1").SpriteGUIRendererComponent
self.left2 = self.clock:GetChildByName("Left2").SpriteGUIRendererComponent
self.right1 = self.clock:GetChildByName("Right1").SpriteGUIRendererComponent
self.right2 = self.clock:GetChildByName("Right2").SpriteGUIRendererComponent

self.numberTable = {
	"0139da76f2894b908370fe80e1575861",
	"07b5d615068a42569e1b65e029d87b5e",
	"c7b25cfcb6ee4c24bcb322507118a826",
	"1d153d90a27f45c79eb4599cb15c8f2c",
	"fa0f0f168fac4945ac063d9eee616924",
	"e3c72901e4b74bb083bd4e4fd931e433",
	"95bc29a87271422c9b8998e8ffbc40c4",
	"bd602fb4f2a24c07ac59b91866c7e4cf",
	"5278b004535d41b4829039bc9b1fb962",
	"99e31e55baca4cf8b56712c0ca7d8dfa",
}
end