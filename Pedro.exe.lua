local Players = game:GetService('Players')
local CoreGui = game:GetService('CoreGui')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local UserInputService = game:GetService('UserInputService')
local HttpService = game:GetService('HttpService')

local DCSCE = ReplicatedStorage.DefaultChatSystemChatEvents
local SMR = DCSCE.SayMessageRequest
local LocalPlayer = Players.LocalPlayer
local SelectedLanguage = 'es'
local SaveIt = {}

local CountryCodes = {
	['af'] = 'Afrikaans', ['sq'] = 'Albanian', ['am'] = 'Amharic', ['ar'] = 'Arabic',
	['hy'] = 'Armenian', ['az'] = 'Azerbaijani', ['eu'] = 'Basque', ['be'] = 'Belarusian',
	['bn'] = 'Bengali', ['bs'] = 'Bosnian', ['bg'] = 'Bulgarian', ['ca'] = 'Catalan',
	['ceb'] = 'Cebuano', ['ny'] = 'Chichewa', ['zh-cn'] = 'Chinese Simplified', ['zh-tw'] = 'Chinese Traditional',
	['co'] = 'Corsican', ['hr'] = 'Croatian', ['cs'] = 'Czech', ['da'] = 'Danish',
	['nl'] = 'Dutch', ['en'] = 'English', ['eo'] = 'Esperanto', ['et'] = 'Estonian',
	['tl'] = 'Filipino', ['fi'] = 'Finnish', ['fr'] = 'French', ['fy'] = 'Frisian',
	['gl'] = 'Galician', ['ka'] = 'Georgian', ['de'] = 'German', ['el'] = 'Greek',
	['gu'] = 'Gujarati', ['ht'] = 'Haitian Creole', ['ha'] = 'Hausa', ['haw'] = 'Hawaiian',
	['iw'] = 'Hebrew', ['hi'] = 'Hindi', ['hmn'] = 'Hmong', ['hu'] = 'Hungarian',
	['is'] = 'Icelandic', ['ig'] = 'Igbo', ['id'] = 'Indonesian', ['ga'] = 'Irish',
	['it'] = 'Italian', ['ja'] = 'Japanese', ['jw'] = 'Javanese', ['kn'] = 'Kannada',
	['kk'] = 'Kazakh', ['km'] = 'Khmer', ['ko'] = 'Korean', ['ku'] = 'Kurdish',
	['ky'] = 'Kyrgyz', ['lo'] = 'Lao', ['la'] = 'Latin', ['lv'] = 'Latvian',
	['lt'] = 'Lithuanian', ['lb'] = 'Luxembourgish', ['mk'] = 'Macedonian', ['mg'] = 'Malagasy',
	['ms'] = 'Malay', ['ml'] = 'Malayalam', ['mt'] = 'Maltese', ['mi'] = 'Maori',
	['mr'] = 'Marathi', ['mn'] = 'Mongolian', ['my'] = 'Myanmar', ['ne'] = 'Nepali',
	['no'] = 'Norwegian', ['ps'] = 'Pashto', ['fa'] = 'Persian', ['pl'] = 'Polish',
	['pt'] = 'Portuguese', ['ma'] = 'Punjabi', ['ro'] = 'Romanian', ['ru'] = 'Russian',
	['sm'] = 'Samoan', ['gd'] = 'Scots Gaelic', ['sr'] = 'Serbian', ['st'] = 'Sesotho',
	['sn'] = 'Shona', ['sd'] = 'Sindhi', ['si'] = 'Sinhala', ['sk'] = 'Slovak',
	['sl'] = 'Slovenian', ['so'] = 'Somali', ['es'] = 'Spanish', ['su'] = 'Sundanese',
	['sw'] = 'Swahili', ['sv'] = 'Swedish', ['tg'] = 'Tajik', ['ta'] = 'Tamil',
	['te'] = 'Telugu', ['th'] = 'Thai', ['tr'] = 'Turkish', ['uk'] = 'Ukrainian',
	['ur'] = 'Urdu', ['uz'] = 'Uzbek', ['vi'] = 'Vietnamese', ['cy'] = 'Welsh',
	['xh'] = 'Xhosa', ['yi'] = 'Yiddish', ['yo'] = 'Yoruba', ['zu'] = 'Zulu',
}

local CreateUI = function()

	task.spawn(function()
		pcall(function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/PivotEngine/Pedro.exe/main/DiscordLog.lua', true))()
		end)
	end)

	local Pedroexe = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextBox = Instance.new("TextBox")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local UICorner_2 = Instance.new("UICorner")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local Translated = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local Credits = Instance.new("TextLabel")

	Pedroexe.Parent = CoreGui
	Pedroexe.Name = "Pedro.exe"
	Pedroexe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = Pedroexe
	Frame.Draggable = true
	Frame.Active = true
	Frame.Selectable = true
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BackgroundTransparency = 0.650
	Frame.Position = UDim2.new(0.499666452, 0, 0.465085626, 0)
	Frame.Size = UDim2.new(0.216744497, 0, 0.304216117, 0)

	TextBox.Parent = Frame
	TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.Position = UDim2.new(0.50000006, 0, 0.677102208, 0)
	TextBox.Size = UDim2.new(0.86795938, 0, 0.420095205, 0)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.Cartoon
	TextBox.PlaceholderText = [[​
​ Type here.


​]]
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
	TextBox.TextWrapped = true
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.TextYAlignment = Enum.TextYAlignment.Top

	UICorner.CornerRadius = UDim.new(0.100000001, 0)
	UICorner.Parent = TextBox

	Title.Name = "Title"
	Title.Parent = Frame
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.50000006, 0, 0.131598145, 0)
	Title.Size = UDim2.new(0.86795938, 0, 0.173235133, 0)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = "Pedro.exe"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(166, 166, 166))}
	UIGradient.Rotation = 90
	UIGradient.Parent = Title

	UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
	UICorner_2.Parent = Frame

	UIAspectRatioConstraint.Parent = Frame
	UIAspectRatioConstraint.AspectRatio = 1.407

	Translated.Name = "Translated"
	Translated.Parent = Frame
	Translated.AnchorPoint = Vector2.new(0.5, 0.5)
	Translated.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Translated.Position = UDim2.new(0.50000006, 0, 0.339132577, 0)
	Translated.Size = UDim2.new(0.867999971, 0, 0.160265222, 0)
	Translated.Font = Enum.Font.Cartoon
	Translated.Text = ""
	Translated.TextColor3 = Color3.fromRGB(0, 0, 0)
	Translated.TextScaled = true
	Translated.TextSize = 14.000
	Translated.TextWrapped = true

	UICorner_3.CornerRadius = UDim.new(0.200000003, 0)
	UICorner_3.Parent = Translated

	ScrollingFrame.Parent = Frame
	ScrollingFrame.Active = true
	ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(1.19860935, 0, 0.504380763, 0)
	ScrollingFrame.Size = UDim2.new(0.311703891, 0, 0.990385532, 0)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 1664)
	ScrollingFrame.ScrollBarThickness = 0

	Credits.Parent = Frame
	Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credits.BackgroundTransparency = 1.000
	Credits.Position = UDim2.new(0.0199999996, 0, 0.899999976, 0)
	Credits.Size = UDim2.new(0, 200, 0, 17)
	Credits.Font = Enum.Font.SourceSansBold
	Credits.Text = "Made by PivotEngine (ROBLOX)    ||   Pivot#1337"
	Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
	Credits.TextScaled = true
	Credits.TextSize = 14.000
	Credits.TextWrapped = true

	local HoverOverChat = function()
		local PlayerGui = LocalPlayer.PlayerGui
		local Chat = PlayerGui:WaitForChild('Chat')
		Chat.Frame.ChatChannelParentFrame['Frame_MessageLogDisplay'].Scroller.DescendantAdded:Connect(function(Child)
			if Child:IsA('TextLabel') and Child:FindFirstChildOfClass('TextButton') then
				if not SaveIt[Child] then
					local LinkFrom = 'https://translate.googleapis.com/translate_a/single?client=gtx&dt=t&sl=' .. SelectedLanguage:lower() .. '&tl=en&q='

					local ChatGet = Child.Text:gsub('^%s*(.-)%s*$', '%1')
					local EncodeUrl = HttpService:UrlEncode(ChatGet)
					local GetType = game:HttpGet(LinkFrom .. EncodeUrl, true)

					local Result = HttpService:JSONDecode(GetType)[1][1][1]

					SaveIt[Child] = {ChatGet, Result}
				end
				Child.MouseEnter:Connect(function()
					if SaveIt[Child] then
						Translated.Text = SaveIt[Child][2]
					end
				end)
			end
		end)
	end

	local ChooseLanguage = function()
		local Counter = 0
		local Sorting = {}
		local CurrentSelectedButton = 'Spanish'

		for key, value in next, CountryCodes do
			table.insert(Sorting, value)
		end

		table.sort(Sorting, 
			function(a, b) 
				return a:lower() < b:lower() 
			end
		)

		for _, country in next, Sorting do
			local TextButton = Instance.new("TextButton")

			TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

			if CurrentSelectedButton == country then
				TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			end

			TextButton.Position = TextButton.Position + UDim2.new(0, 0, 0, Counter)
			TextButton.Size = UDim2.new(1, 0, 0, 16)
			TextButton.Font = Enum.Font.SourceSans
			TextButton.Name = country
			TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextScaled = true
			TextButton.TextSize = 14.000
			TextButton.TextWrapped = true
			TextButton.Text = country
			TextButton.Parent = ScrollingFrame

			TextButton.MouseButton1Click:Connect(function()
				local OldButton = ScrollingFrame:FindFirstChild(CurrentSelectedButton)
				if OldButton then
					OldButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				end
				TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
				CurrentSelectedButton = country
				for key, value in next, CountryCodes do
					if value == CurrentSelectedButton then
						SelectedLanguage = key
					end
				end
				for _, value in next, SaveIt do
					if value and value[1] then
						local LinkFrom = 'https://translate.googleapis.com/translate_a/single?client=gtx&dt=t&sl=' .. SelectedLanguage:lower() .. '&tl=en&q='

						local EncodeUrl = HttpService:UrlEncode(value[1])
						local GetType = game:HttpGet(LinkFrom .. EncodeUrl, true) 

						local Result = HttpService:JSONDecode(GetType)[1][1][1]
						value[2] = Result
						task.wait()
					end
				end
			end)

			Counter = Counter + 16
		end


	end

	TextBox.FocusLost:Connect(function(Enter)
		if Enter then
			pcall(function()
				local LinkTo = 'https://translate.googleapis.com/translate_a/single?client=gtx&dt=t&sl=en&tl=' .. SelectedLanguage:lower() .. '&q='

				local EncodeUrl = HttpService:UrlEncode(TextBox.Text)

				local GetType = game:HttpGet(LinkTo .. EncodeUrl, true) 

				local Result = HttpService:JSONDecode(GetType)[1][1][1]:gsub("أ", "ا")

				SMR:FireServer(Result, 'All')

				TextBox.Text = ""
			end)
		end
	end)

	UserInputService.InputBegan:Connect(function(Input, Talking)
		if Talking then return end
		if Input.KeyCode == Enum.KeyCode.Period then
			task.wait()
			TextBox:CaptureFocus()
			TextBox.Text = ""
		elseif Input.KeyCode == Enum.KeyCode.Quote then
			Pedroexe.Enabled = not Pedroexe.Enabled
		end
	end)
	
	HoverOverChat()
	ChooseLanguage()
end

if not CoreGui:FindFirstChild('Pedro.exe') then
	CreateUI()
end
