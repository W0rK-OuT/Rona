return function (self,event) 
-- Parameters
local SortingLayer = event.SortingLayer
---------------------------------------------------------
_PlayerBuffLogic:UpdateSort(self.Entity, SortingLayer)
_ShadowPartnerManager:UpdateSort(self.Entity, SortingLayer)
_TamingManager:UpdateSort(self.Entity, SortingLayer)
_DecoManager:UpdateSort(self.Entity, SortingLayer)
if self.Entity == _UserService.LocalPlayer then
	_Gagebar:SetLayer(SortingLayer)
	--_PetManager:UpdateLayer(SortingLayer)
end
end