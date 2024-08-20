local _, ns = ...
local B, C, L, DB = unpack(ns)

local function UpdateProgressItemQuality(self)
	local button = self.__owner
	local index = button:GetID()
	local buttonType = button.type
	local objectType = button.objectType

	local quality
	if objectType == "item" then
		quality = select(4, GetQuestItemInfo(buttonType, index))
	elseif objectType == "currency" then
		quality = select(4, GetQuestCurrencyInfo(buttonType, index))
	end

	local color = DB.QualityColors[quality or 1]
	button.bg:SetBackdropBorderColor(color.r, color.g, color.b)
end

tinsert(C.defaultThemes, function()
	if not C.db["Skins"]["BlizzardSkins"] then return end

	B.ReskinPortraitFrame(QuestFrame)

	B.StripTextures(QuestFrameDetailPanel, 0)
	B.StripTextures(QuestFrameRewardPanel, 0)
	B.StripTextures(QuestFrameProgressPanel, 0)
	B.StripTextures(QuestFrameGreetingPanel, 0)

	local line = QuestFrameGreetingPanel:CreateTexture()
	line:SetColorTexture(1, 1, 1, .25)
	line:SetSize(256, C.mult)
	line:SetPoint("CENTER", QuestGreetingFrameHorizontalBreak)
	QuestGreetingFrameHorizontalBreak:SetTexture("")
	QuestFrameGreetingPanel:HookScript("OnShow", function()
		line:SetShown(QuestGreetingFrameHorizontalBreak:IsShown())
	end)

	for i = 1, MAX_REQUIRED_ITEMS do
		local button = _G["QuestProgressItem"..i]
		button.NameFrame:Hide()
		button.bg = B.ReskinIcon(button.Icon)
		button.Icon.__owner = button
		hooksecurefunc(button.Icon, "SetTexture", UpdateProgressItemQuality)

		local bg = B.CreateBDFrame(button, .25)
		bg:SetPoint("TOPLEFT", button.bg, "TOPRIGHT", 2, 0)
		bg:SetPoint("BOTTOMRIGHT", button.bg, 100, 0)
	end

	QuestDetailScrollFrame:SetWidth(302) -- else these buttons get cut off

	hooksecurefunc(QuestProgressRequiredMoneyText, "SetTextColor", function(self, r)
		if r == 0 then
			self:SetTextColor(.8, .8, .8)
		elseif r == .2 then
			self:SetTextColor(1, 1, 1)
		end
	end)

	B.Reskin(QuestFrameAcceptButton)
	B.Reskin(QuestFrameDeclineButton)
	B.Reskin(QuestFrameCompleteQuestButton)
	B.Reskin(QuestFrameCompleteButton)
	B.Reskin(QuestFrameGoodbyeButton)
	B.Reskin(QuestFrameGreetingGoodbyeButton)

	B.ReskinTrimScroll(QuestProgressScrollFrame.ScrollBar)
	B.ReskinTrimScroll(QuestRewardScrollFrame.ScrollBar)
	B.ReskinTrimScroll(QuestDetailScrollFrame.ScrollBar)
	B.ReskinTrimScroll(QuestGreetingScrollFrame.ScrollBar)

	-- Text colour stuff

	QuestProgressRequiredItemsText:SetTextColor(1, .8, 0)
	QuestProgressRequiredItemsText:SetShadowColor(0, 0, 0)
	QuestProgressRequiredItemsText.SetTextColor = B.Dummy
	QuestProgressTitleText:SetTextColor(1, .8, 0)
	QuestProgressTitleText:SetShadowColor(0, 0, 0)
	QuestProgressTitleText.SetTextColor = B.Dummy
	QuestProgressText:SetTextColor(1, 1, 1)
	QuestProgressText.SetTextColor = B.Dummy
	GreetingText:SetTextColor(1, 1, 1)
	GreetingText.SetTextColor = B.Dummy
	AvailableQuestsText:SetTextColor(1, .8, 0)
	AvailableQuestsText.SetTextColor = B.Dummy
	AvailableQuestsText:SetShadowColor(0, 0, 0)
	CurrentQuestsText:SetTextColor(1, .8, 0)
	CurrentQuestsText.SetTextColor = B.Dummy
	CurrentQuestsText:SetShadowColor(0, 0, 0)

	-- Quest NPC model

	B.StripTextures(QuestModelScene)
	local bg = B.SetBD(QuestModelScene)
	B.StripTextures(QuestModelScene.ModelTextFrame)
	bg:SetOutside(nil, nil, nil, QuestModelScene.ModelTextFrame)

	if QuestNPCModelTextScrollFrame then
		B.ReskinTrimScroll(QuestNPCModelTextScrollFrame.ScrollBar)
	end

	hooksecurefunc("QuestFrame_ShowQuestPortrait", function(parentFrame, _, _, _, _, _, x, y)
		x = x + 6
		QuestModelScene:SetPoint("TOPLEFT", parentFrame, "TOPRIGHT", x, y)
	end)

	-- Friendship
	for i = 1, 4 do
		local notch = QuestFrame.FriendshipStatusBar["Notch"..i]
		if notch then
			notch:SetColorTexture(0, 0, 0)
			notch:SetSize(C.mult, 16)
		end
	end
	QuestFrame.FriendshipStatusBar.BarBorder:Hide()
end)