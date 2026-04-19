--[[
    █████╗ ██████╗ ██╗   ██╗██╗   ██╗███╗   ██╗    ██╗  ██╗██╗   ██╗██████╗ 
   ██╔══██╗██╔══██╗██║   ██║██║   ██║████╗  ██║    ██║  ██║██║   ██║██╔══██╗
   ███████║██████╔╝██║   ██║██║   ██║██╔██╗ ██║    ███████║██║   ██║██████╔╝
   ██╔══██║██╔══██╗╚██╗ ██╔╝██║   ██║██║╚██╗██║    ██╔══██║██║   ██║██╔══██╗
   ██║  ██║██║  ██║ ╚████╔╝ ╚██████╔╝██║ ╚████║    ██║  ██║╚██████╔╝██████╔╝
   ╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝   ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 

    🔒 roni Hub UI - Private UI
    © 2026 roni Hub. All Rights Reserved.

    This UI is strictly licensed and owned by roni Hub.
    Unauthorized use, redistribution, or modification is prohibited.
]]

do
	local v118 = "L" .. "P" .. "H" .. "_NO_VIRTUALIZE"
	getfenv()[v118] = getfenv()[v118] or function(v546)
		return v546
	end
end
cloneref = cloneref or function(v120)
	return v120
end
gethui = gethui or get_hidden_gui
getcustomasset = getcustomasset or getsynasset
getgenv = getgenv or getfenv
local v0 = cloneref or function(v121)
	return v121
end
local v1 = game:GetService("UserInputService")
local v2 = game:GetService("Players")
local v3 = game:GetService("Workspace")
local v4 = game:GetService("ReplicatedStorage")
local v5 = game:GetService("HttpService")
local v6 = game:GetService("GuiService")
local v7 = game:GetService("Lighting")
local v8 = game:GetService("RunService")
local v9 = game:GetService("Stats")
local v10 = (gethui and gethui())
	or (get_hidden_gui and get_hidden_gui())
	or v0(game:FindFirstChild("CoreGui"))
	or v0(lp.PlayerGui)
local v11 = game:GetService("Debris")
local v12 = game:GetService("TweenService")
local v13 = game:GetService("SoundService")
local v14 = Vector2.new
local v15 = Vector3.new
local v16 = UDim2.new
local v17 = UDim.new
local v18 = Rect.new
local v19 = CFrame.new
local v20 = v19()
local v21 = v20.PointToObjectSpace
local v22 = CFrame.Angles
local v23 = UDim2.fromOffset
local v24 = Color3.new
local v25 = Color3.fromRGB
local v26 = Color3.fromHex
local v27 = Color3.fromHSV
local v28 = ColorSequence.new
local v29 = ColorSequenceKeypoint.new
local v30 = NumberSequence.new
local v31 = NumberSequenceKeypoint.new
local v32 = v0(workspace.CurrentCamera)
local v33 = v2.LocalPlayer
local v34 = v33:GetMouse()
local v35 = v6:GetGuiInset().Y
local v36 = math.max
local v37 = math.floor
local v38 = math.min
local v39 = math.abs
local v40 = math.noise
local v41 = math.rad
local v42 = math.random
local v43 = math.pow
local v44 = math.sin
local v45 = math.pi
local v46 = math.tan
local v47 = math.atan2
local v48 = math.clamp
local v49 = table.insert
local v50 = table.find
local v51 = table.remove
local v52 = table.concat
if getgenv().library and (type(getgenv().library.unload_menu) == "function") then
	pcall(function()
		getgenv().library:unload_menu()
	end)
end
getgenv().library = {
	directory = "roni Scripts",
	folders = { "/fonts", "/configs" },
	flags = {},
	config_flags = {},
	ignore_flags = {},
	connections = {},
	notifications = { notifs = {} },
	ArcylicParent = v32,
	EnabledBlur = true,
	GlobalSignals = {},
	UnloadEnabled = false,
	IsMouseOverElement = false,
	IsDropdownOpen = false,
	BuiltInRegular = Font.new(
		"rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json",
		Enum.FontWeight.Regular,
		Enum.FontStyle.Normal
	),
	BuiltInBold = Font.new(
		"rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json",
		Enum.FontWeight.Bold,
		Enum.FontStyle.Normal
	),
	current_open,
}
library.Scales = {
	Default = UDim2.new(0, 640, 0, 480),
	Large = UDim2.new(0, 800, 0, 600),
	Mobile = UDim2.new(0, 550, 0, 400),
	Small = UDim2.new(0, 540, 0, 380),
}
local v55 = {
	preset = { accent = Color3.fromRGB(0, 72, 255), accent2 = Color3.fromRGB(78, 127, 252) },
	utility = { accent = { BackgroundColor3 = {}, TextColor3 = {}, ImageColor3 = {}, ScrollBarImageColor3 = {} } },
}
local v56 = {
	[Enum.KeyCode.LeftShift] = "LS",
	[Enum.KeyCode.RightShift] = "RS",
	[Enum.KeyCode.LeftControl] = "LC",
	[Enum.KeyCode.RightControl] = "RC",
	[Enum.KeyCode.Insert] = "INS",
	[Enum.KeyCode.Backspace] = "BS",
	[Enum.KeyCode.Return] = "Ent",
	[Enum.KeyCode.LeftAlt] = "LA",
	[Enum.KeyCode.RightAlt] = "RA",
	[Enum.KeyCode.CapsLock] = "CAPS",
	[Enum.KeyCode.One] = "1",
	[Enum.KeyCode.Two] = "2",
	[Enum.KeyCode.Three] = "3",
	[Enum.KeyCode.Four] = "4",
	[Enum.KeyCode.Five] = "5",
	[Enum.KeyCode.Six] = "6",
	[Enum.KeyCode.Seven] = "7",
	[Enum.KeyCode.Eight] = "8",
	[Enum.KeyCode.Nine] = "9",
	[Enum.KeyCode.Zero] = "0",
	[Enum.KeyCode.KeypadOne] = "Num1",
	[Enum.KeyCode.KeypadTwo] = "Num2",
	[Enum.KeyCode.KeypadThree] = "Num3",
	[Enum.KeyCode.KeypadFour] = "Num4",
	[Enum.KeyCode.KeypadFive] = "Num5",
	[Enum.KeyCode.KeypadSix] = "Num6",
	[Enum.KeyCode.KeypadSeven] = "Num7",
	[Enum.KeyCode.KeypadEight] = "Num8",
	[Enum.KeyCode.KeypadNine] = "Num9",
	[Enum.KeyCode.KeypadZero] = "Num0",
	[Enum.KeyCode.Minus] = "-",
	[Enum.KeyCode.Equals] = "=",
	[Enum.KeyCode.Tilde] = "~",
	[Enum.KeyCode.LeftBracket] = "[",
	[Enum.KeyCode.RightBracket] = "]",
	[Enum.KeyCode.RightParenthesis] = ")",
	[Enum.KeyCode.LeftParenthesis] = "(",
	[Enum.KeyCode.Semicolon] = ",",
	[Enum.KeyCode.Quote] = "'",
	[Enum.KeyCode.BackSlash] = "\\",
	[Enum.KeyCode.Comma] = ",",
	[Enum.KeyCode.Slash] = "/",
	[Enum.KeyCode.Asterisk] = "*",
	[Enum.KeyCode.Plus] = "+",
	[Enum.KeyCode.Period] = ".",
	[Enum.KeyCode.Backquote] = "`",
	[Enum.UserInputType.MouseButton1] = "MB1",
	[Enum.UserInputType.MouseButton2] = "MB2",
	[Enum.UserInputType.MouseButton3] = "MB3",
	[Enum.KeyCode.Escape] = "ESC",
	[Enum.KeyCode.Space] = "SPC",
}
library.__index = library
for v122, v123 in next, library.folders do
	makefolder(library.directory .. v123)
end
local v58 = library.flags
local v59 = library.config_flags
local v60 = library.notifications
local v61 = {}
do
	function Register_Font(v547, v548, v549, v550)
		if not isfile(v550.Id) then
			writefile(v550.Id, v550.Font)
		end
		if isfile(v547 .. ".font") then
			delfile(v547 .. ".font")
		end
		local v551 = { name = v547, faces = { { name = "Normal", weight = v548, style = v549, assetId = getcustomasset(
			v550.Id
		) } } }
		writefile(v547 .. ".font", v5:JSONEncode(v551))
		return getcustomasset(v547 .. ".font")
	end
	local v124 = Register_Font(
		"Medium",
		200,
		"Normal",
		{
			Id = "Medium.ttf",
			Font = game:HttpGet("https://github.com/Code4Zaaa/roni/raw/refs/heads/main/assets/Inter_28pt-Medium.ttf"),
		}
	)
	local v125 = Register_Font(
		"SemiBold",
		200,
		"Normal",
		{
			Id = "SemiBold.ttf",
			Font = game:HttpGet(
				"https://github.com/Code4Zaaa/roni/raw/refs/heads/main/assets/Inter_28pt-SemiBold.ttf"
			),
		}
	)
	v61 = {
		small = Font.new(v124, Enum.FontWeight.Regular, Enum.FontStyle.Normal),
		font = Font.new(v125, Enum.FontWeight.Regular, Enum.FontStyle.Normal),
	}
end
library.Lucide = {
	["lucide-mouse-2"] = "rbxassetid://10088146939",
	["lucide-internet"] = "rbxassetid://12785195438",
	["lucide-earth"] = "rbxassetid://115986292591138",
	["lucide-settings-3"] = "rbxassetid://14007344336",
	["lucide-accessibility"] = "rbxassetid://10709751939",
	["lucide-activity"] = "rbxassetid://10709752035",
	["lucide-air-vent"] = "rbxassetid://10709752131",
	["lucide-airplay"] = "rbxassetid://10709752254",
	["lucide-alarm-check"] = "rbxassetid://10709752405",
	["lucide-alarm-clock"] = "rbxassetid://10709752630",
	["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
	["lucide-alarm-minus"] = "rbxassetid://10709752732",
	["lucide-alarm-plus"] = "rbxassetid://10709752825",
	["lucide-album"] = "rbxassetid://10709752906",
	["lucide-alert-circle"] = "rbxassetid://10709752996",
	["lucide-alert-octagon"] = "rbxassetid://10709753064",
	["lucide-alert-triangle"] = "rbxassetid://10709753149",
	["lucide-align-center"] = "rbxassetid://10709753570",
	["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
	["lucide-align-center-vertical"] = "rbxassetid://10709753421",
	["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
	["lucide-align-end-vertical"] = "rbxassetid://10709753808",
	["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
	["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
	["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
	["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
	["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
	["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
	["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
	["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
	["lucide-align-justify"] = "rbxassetid://10709759610",
	["lucide-align-left"] = "rbxassetid://10709759764",
	["lucide-align-right"] = "rbxassetid://10709759895",
	["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
	["lucide-align-start-vertical"] = "rbxassetid://10709760244",
	["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
	["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
	["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
	["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
	["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
	["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
	["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
	["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
	["lucide-anchor"] = "rbxassetid://10709761530",
	["lucide-angry"] = "rbxassetid://10709761629",
	["lucide-annoyed"] = "rbxassetid://10709761722",
	["lucide-aperture"] = "rbxassetid://10709761813",
	["lucide-apple"] = "rbxassetid://10709761889",
	["lucide-archive"] = "rbxassetid://10709762233",
	["lucide-archive-restore"] = "rbxassetid://10709762058",
	["lucide-armchair"] = "rbxassetid://10709762327",
	["lucide-arrow-big-down"] = "rbxassetid://10747796644",
	["lucide-arrow-big-left"] = "rbxassetid://10709762574",
	["lucide-arrow-big-right"] = "rbxassetid://10709762727",
	["lucide-arrow-big-up"] = "rbxassetid://10709762879",
	["lucide-arrow-down"] = "rbxassetid://10709767827",
	["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
	["lucide-arrow-down-left"] = "rbxassetid://10709767656",
	["lucide-arrow-down-right"] = "rbxassetid://10709767750",
	["lucide-arrow-left"] = "rbxassetid://10709768114",
	["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
	["lucide-arrow-left-right"] = "rbxassetid://10709768019",
	["lucide-arrow-right"] = "rbxassetid://10709768347",
	["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
	["lucide-arrow-up"] = "rbxassetid://10709768939",
	["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
	["lucide-arrow-up-down"] = "rbxassetid://10709768538",
	["lucide-arrow-up-left"] = "rbxassetid://10709768661",
	["lucide-arrow-up-right"] = "rbxassetid://10709768787",
	["lucide-asterisk"] = "rbxassetid://10709769095",
	["lucide-at-sign"] = "rbxassetid://10709769286",
	["lucide-award"] = "rbxassetid://10709769406",
	["lucide-axe"] = "rbxassetid://10709769508",
	["lucide-axis-3d"] = "rbxassetid://10709769598",
	["lucide-baby"] = "rbxassetid://10709769732",
	["lucide-backpack"] = "rbxassetid://10709769841",
	["lucide-baggage-claim"] = "rbxassetid://10709769935",
	["lucide-banana"] = "rbxassetid://10709770005",
	["lucide-banknote"] = "rbxassetid://10709770178",
	["lucide-bar-chart"] = "rbxassetid://10709773755",
	["lucide-bar-chart-2"] = "rbxassetid://10709770317",
	["lucide-bar-chart-3"] = "rbxassetid://10709770431",
	["lucide-bar-chart-4"] = "rbxassetid://10709770560",
	["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
	["lucide-barcode"] = "rbxassetid://10747360675",
	["lucide-baseline"] = "rbxassetid://10709773863",
	["lucide-bath"] = "rbxassetid://10709773963",
	["lucide-battery"] = "rbxassetid://10709774640",
	["lucide-battery-charging"] = "rbxassetid://10709774068",
	["lucide-battery-full"] = "rbxassetid://10709774206",
	["lucide-battery-low"] = "rbxassetid://10709774370",
	["lucide-battery-medium"] = "rbxassetid://10709774513",
	["lucide-beaker"] = "rbxassetid://10709774756",
	["lucide-bed"] = "rbxassetid://10709775036",
	["lucide-bed-double"] = "rbxassetid://10709774864",
	["lucide-bed-single"] = "rbxassetid://10709774968",
	["lucide-beer"] = "rbxassetid://10709775167",
	["lucide-bell"] = "rbxassetid://10709775704",
	["lucide-bell-minus"] = "rbxassetid://10709775241",
	["lucide-bell-off"] = "rbxassetid://10709775320",
	["lucide-bell-plus"] = "rbxassetid://10709775448",
	["lucide-bell-ring"] = "rbxassetid://10709775560",
	["lucide-bike"] = "rbxassetid://10709775894",
	["lucide-binary"] = "rbxassetid://10709776050",
	["lucide-bitcoin"] = "rbxassetid://10709776126",
	["lucide-bluetooth"] = "rbxassetid://10709776655",
	["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
	["lucide-bluetooth-off"] = "rbxassetid://10709776344",
	["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
	["lucide-bold"] = "rbxassetid://10747813908",
	["lucide-bomb"] = "rbxassetid://10709781460",
	["lucide-bone"] = "rbxassetid://10709781605",
	["lucide-book"] = "rbxassetid://10709781824",
	["lucide-book-open"] = "rbxassetid://10709781717",
	["lucide-bookmark"] = "rbxassetid://10709782154",
	["lucide-bookmark-minus"] = "rbxassetid://10709781919",
	["lucide-bookmark-plus"] = "rbxassetid://10709782044",
	["lucide-bot"] = "rbxassetid://10709782230",
	["lucide-box"] = "rbxassetid://10709782497",
	["lucide-box-select"] = "rbxassetid://10709782342",
	["lucide-boxes"] = "rbxassetid://10709782582",
	["lucide-briefcase"] = "rbxassetid://10709782662",
	["lucide-brush"] = "rbxassetid://10709782758",
	["lucide-bug"] = "rbxassetid://10709782845",
	["lucide-building"] = "rbxassetid://10709783051",
	["lucide-building-2"] = "rbxassetid://10709782939",
	["lucide-bus"] = "rbxassetid://10709783137",
	["lucide-cake"] = "rbxassetid://10709783217",
	["lucide-calculator"] = "rbxassetid://10709783311",
	["lucide-calendar"] = "rbxassetid://10709789505",
	["lucide-calendar-check"] = "rbxassetid://10709783474",
	["lucide-calendar-check-2"] = "rbxassetid://10709783392",
	["lucide-calendar-clock"] = "rbxassetid://10709783577",
	["lucide-calendar-days"] = "rbxassetid://10709783673",
	["lucide-calendar-heart"] = "rbxassetid://10709783835",
	["lucide-calendar-minus"] = "rbxassetid://10709783959",
	["lucide-calendar-off"] = "rbxassetid://10709788784",
	["lucide-calendar-plus"] = "rbxassetid://10709788937",
	["lucide-calendar-range"] = "rbxassetid://10709789053",
	["lucide-calendar-search"] = "rbxassetid://10709789200",
	["lucide-calendar-x"] = "rbxassetid://10709789407",
	["lucide-calendar-x-2"] = "rbxassetid://10709789329",
	["lucide-camera"] = "rbxassetid://10709789686",
	["lucide-camera-off"] = "rbxassetid://10747822677",
	["lucide-car"] = "rbxassetid://10709789810",
	["lucide-carrot"] = "rbxassetid://10709789960",
	["lucide-cast"] = "rbxassetid://10709790097",
	["lucide-charge"] = "rbxassetid://10709790202",
	["lucide-check"] = "rbxassetid://10709790644",
	["lucide-check-circle"] = "rbxassetid://10709790387",
	["lucide-check-circle-2"] = "rbxassetid://10709790298",
	["lucide-check-square"] = "rbxassetid://10709790537",
	["lucide-chef-hat"] = "rbxassetid://10709790757",
	["lucide-cherry"] = "rbxassetid://10709790875",
	["lucide-chevron-down"] = "rbxassetid://10709790948",
	["lucide-chevron-first"] = "rbxassetid://10709791015",
	["lucide-chevron-last"] = "rbxassetid://10709791130",
	["lucide-chevron-left"] = "rbxassetid://10709791281",
	["lucide-chevron-right"] = "rbxassetid://10709791437",
	["lucide-chevron-up"] = "rbxassetid://10709791523",
	["lucide-chevrons-down"] = "rbxassetid://10709796864",
	["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
	["lucide-chevrons-left"] = "rbxassetid://10709797151",
	["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
	["lucide-chevrons-right"] = "rbxassetid://10709797382",
	["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
	["lucide-chevrons-up"] = "rbxassetid://10709797622",
	["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
	["lucide-chrome"] = "rbxassetid://10709797725",
	["lucide-circle"] = "rbxassetid://10709798174",
	["lucide-circle-dot"] = "rbxassetid://10709797837",
	["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
	["lucide-circle-slashed"] = "rbxassetid://10709798100",
	["lucide-citrus"] = "rbxassetid://10709798276",
	["lucide-clapperboard"] = "rbxassetid://10709798350",
	["lucide-clipboard"] = "rbxassetid://10709799288",
	["lucide-clipboard-check"] = "rbxassetid://10709798443",
	["lucide-clipboard-copy"] = "rbxassetid://10709798574",
	["lucide-clipboard-edit"] = "rbxassetid://10709798682",
	["lucide-clipboard-list"] = "rbxassetid://10709798792",
	["lucide-clipboard-signature"] = "rbxassetid://10709798890",
	["lucide-clipboard-type"] = "rbxassetid://10709798999",
	["lucide-clipboard-x"] = "rbxassetid://10709799124",
	["lucide-clock"] = "rbxassetid://10709805144",
	["lucide-clock-1"] = "rbxassetid://10709799535",
	["lucide-clock-10"] = "rbxassetid://10709799718",
	["lucide-clock-11"] = "rbxassetid://10709799818",
	["lucide-clock-12"] = "rbxassetid://10709799962",
	["lucide-clock-2"] = "rbxassetid://10709803876",
	["lucide-clock-3"] = "rbxassetid://10709803989",
	["lucide-clock-4"] = "rbxassetid://10709804164",
	["lucide-clock-5"] = "rbxassetid://10709804291",
	["lucide-clock-6"] = "rbxassetid://10709804435",
	["lucide-clock-7"] = "rbxassetid://10709804599",
	["lucide-clock-8"] = "rbxassetid://10709804784",
	["lucide-clock-9"] = "rbxassetid://10709804996",
	["lucide-cloud"] = "rbxassetid://10709806740",
	["lucide-cloud-cog"] = "rbxassetid://10709805262",
	["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
	["lucide-cloud-fog"] = "rbxassetid://10709805477",
	["lucide-cloud-hail"] = "rbxassetid://10709805596",
	["lucide-cloud-lightning"] = "rbxassetid://10709805727",
	["lucide-cloud-moon"] = "rbxassetid://10709805942",
	["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
	["lucide-cloud-off"] = "rbxassetid://10709806060",
	["lucide-cloud-rain"] = "rbxassetid://10709806277",
	["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
	["lucide-cloud-snow"] = "rbxassetid://10709806374",
	["lucide-cloud-sun"] = "rbxassetid://10709806631",
	["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
	["lucide-cloudy"] = "rbxassetid://10709806859",
	["lucide-clover"] = "rbxassetid://10709806995",
	["lucide-code"] = "rbxassetid://10709810463",
	["lucide-code-2"] = "rbxassetid://10709807111",
	["lucide-codepen"] = "rbxassetid://10709810534",
	["lucide-codesandbox"] = "rbxassetid://10709810676",
	["lucide-coffee"] = "rbxassetid://10709810814",
	["lucide-cog"] = "rbxassetid://10709810948",
	["lucide-coins"] = "rbxassetid://10709811110",
	["lucide-columns"] = "rbxassetid://10709811261",
	["lucide-command"] = "rbxassetid://10709811365",
	["lucide-compass"] = "rbxassetid://10709811445",
	["lucide-component"] = "rbxassetid://10709811595",
	["lucide-concierge-bell"] = "rbxassetid://10709811706",
	["lucide-connection"] = "rbxassetid://10747361219",
	["lucide-contact"] = "rbxassetid://10709811834",
	["lucide-contrast"] = "rbxassetid://10709811939",
	["lucide-cookie"] = "rbxassetid://10709812067",
	["lucide-copy"] = "rbxassetid://10709812159",
	["lucide-copyleft"] = "rbxassetid://10709812251",
	["lucide-copyright"] = "rbxassetid://10709812311",
	["lucide-corner-down-left"] = "rbxassetid://10709812396",
	["lucide-corner-down-right"] = "rbxassetid://10709812485",
	["lucide-corner-left-down"] = "rbxassetid://10709812632",
	["lucide-corner-left-up"] = "rbxassetid://10709812784",
	["lucide-corner-right-down"] = "rbxassetid://10709812939",
	["lucide-corner-right-up"] = "rbxassetid://10709813094",
	["lucide-corner-up-left"] = "rbxassetid://10709813185",
	["lucide-corner-up-right"] = "rbxassetid://10709813281",
	["lucide-cpu"] = "rbxassetid://10709813383",
	["lucide-croissant"] = "rbxassetid://10709818125",
	["lucide-crop"] = "rbxassetid://10709818245",
	["lucide-cross"] = "rbxassetid://10709818399",
	["lucide-crosshair"] = "rbxassetid://10709818534",
	["lucide-crown"] = "rbxassetid://10709818626",
	["lucide-cup-soda"] = "rbxassetid://10709818763",
	["lucide-curly-braces"] = "rbxassetid://10709818847",
	["lucide-currency"] = "rbxassetid://10709818931",
	["lucide-database"] = "rbxassetid://10709818996",
	["lucide-delete"] = "rbxassetid://10709819059",
	["lucide-diamond"] = "rbxassetid://10709819149",
	["lucide-dice-1"] = "rbxassetid://10709819266",
	["lucide-dice-2"] = "rbxassetid://10709819361",
	["lucide-dice-3"] = "rbxassetid://10709819508",
	["lucide-dice-4"] = "rbxassetid://10709819670",
	["lucide-dice-5"] = "rbxassetid://10709819801",
	["lucide-dice-6"] = "rbxassetid://10709819896",
	["lucide-dices"] = "rbxassetid://10723343321",
	["lucide-diff"] = "rbxassetid://10723343416",
	["lucide-disc"] = "rbxassetid://10723343537",
	["lucide-divide"] = "rbxassetid://10723343805",
	["lucide-divide-circle"] = "rbxassetid://10723343636",
	["lucide-divide-square"] = "rbxassetid://10723343737",
	["lucide-dollar-sign"] = "rbxassetid://10723343958",
	["lucide-download"] = "rbxassetid://10723344270",
	["lucide-download-cloud"] = "rbxassetid://10723344088",
	["lucide-droplet"] = "rbxassetid://10723344432",
	["lucide-droplets"] = "rbxassetid://10734883356",
	["lucide-drumstick"] = "rbxassetid://10723344737",
	["lucide-edit"] = "rbxassetid://10734883598",
	["lucide-edit-2"] = "rbxassetid://10723344885",
	["lucide-edit-3"] = "rbxassetid://10723345088",
	["lucide-egg"] = "rbxassetid://10723345518",
	["lucide-egg-fried"] = "rbxassetid://10723345347",
	["lucide-electricity"] = "rbxassetid://10723345749",
	["lucide-electricity-off"] = "rbxassetid://10723345643",
	["lucide-equal"] = "rbxassetid://10723345990",
	["lucide-equal-not"] = "rbxassetid://10723345866",
	["lucide-eraser"] = "rbxassetid://10723346158",
	["lucide-euro"] = "rbxassetid://10723346372",
	["lucide-expand"] = "rbxassetid://10723346553",
	["lucide-external-link"] = "rbxassetid://10723346684",
	["lucide-eye"] = "rbxassetid://10723346959",
	["lucide-eye-off"] = "rbxassetid://10723346871",
	["lucide-factory"] = "rbxassetid://10723347051",
	["lucide-fan"] = "rbxassetid://10723354359",
	["lucide-fast-forward"] = "rbxassetid://10723354521",
	["lucide-feather"] = "rbxassetid://10723354671",
	["lucide-figma"] = "rbxassetid://10723354801",
	["lucide-file"] = "rbxassetid://10723374641",
	["lucide-file-archive"] = "rbxassetid://10723354921",
	["lucide-file-audio"] = "rbxassetid://10723355148",
	["lucide-file-audio-2"] = "rbxassetid://10723355026",
	["lucide-file-axis-3d"] = "rbxassetid://10723355272",
	["lucide-file-badge"] = "rbxassetid://10723355622",
	["lucide-file-badge-2"] = "rbxassetid://10723355451",
	["lucide-file-bar-chart"] = "rbxassetid://10723355887",
	["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
	["lucide-file-box"] = "rbxassetid://10723355989",
	["lucide-file-check"] = "rbxassetid://10723356210",
	["lucide-file-check-2"] = "rbxassetid://10723356100",
	["lucide-file-clock"] = "rbxassetid://10723356329",
	["lucide-file-code"] = "rbxassetid://10723356507",
	["lucide-file-cog"] = "rbxassetid://10723356830",
	["lucide-file-cog-2"] = "rbxassetid://10723356676",
	["lucide-file-diff"] = "rbxassetid://10723357039",
	["lucide-file-digit"] = "rbxassetid://10723357151",
	["lucide-file-down"] = "rbxassetid://10723357322",
	["lucide-file-edit"] = "rbxassetid://10723357495",
	["lucide-file-heart"] = "rbxassetid://10723357637",
	["lucide-file-image"] = "rbxassetid://10723357790",
	["lucide-file-input"] = "rbxassetid://10723357933",
	["lucide-file-json"] = "rbxassetid://10723364435",
	["lucide-file-json-2"] = "rbxassetid://10723364361",
	["lucide-file-key"] = "rbxassetid://10723364605",
	["lucide-file-key-2"] = "rbxassetid://10723364515",
	["lucide-file-line-chart"] = "rbxassetid://10723364725",
	["lucide-file-lock"] = "rbxassetid://10723364957",
	["lucide-file-lock-2"] = "rbxassetid://10723364861",
	["lucide-file-minus"] = "rbxassetid://10723365254",
	["lucide-file-minus-2"] = "rbxassetid://10723365086",
	["lucide-file-output"] = "rbxassetid://10723365457",
	["lucide-file-pie-chart"] = "rbxassetid://10723365598",
	["lucide-file-plus"] = "rbxassetid://10723365877",
	["lucide-file-plus-2"] = "rbxassetid://10723365766",
	["lucide-file-question"] = "rbxassetid://10723365987",
	["lucide-file-scan"] = "rbxassetid://10723366167",
	["lucide-file-search"] = "rbxassetid://10723366550",
	["lucide-file-search-2"] = "rbxassetid://10723366340",
	["lucide-file-signature"] = "rbxassetid://10723366741",
	["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
	["lucide-file-symlink"] = "rbxassetid://10723367098",
	["lucide-file-terminal"] = "rbxassetid://10723367244",
	["lucide-file-text"] = "rbxassetid://10723367380",
	["lucide-file-type"] = "rbxassetid://10723367606",
	["lucide-file-type-2"] = "rbxassetid://10723367509",
	["lucide-file-up"] = "rbxassetid://10723367734",
	["lucide-file-video"] = "rbxassetid://10723373884",
	["lucide-file-video-2"] = "rbxassetid://10723367834",
	["lucide-file-volume"] = "rbxassetid://10723374172",
	["lucide-file-volume-2"] = "rbxassetid://10723374030",
	["lucide-file-warning"] = "rbxassetid://10723374276",
	["lucide-file-x"] = "rbxassetid://10723374544",
	["lucide-file-x-2"] = "rbxassetid://10723374378",
	["lucide-files"] = "rbxassetid://10723374759",
	["lucide-film"] = "rbxassetid://10723374981",
	["lucide-filter"] = "rbxassetid://10723375128",
	["lucide-fingerprint"] = "rbxassetid://10723375250",
	["lucide-flag"] = "rbxassetid://10723375890",
	["lucide-flag-off"] = "rbxassetid://10723375443",
	["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
	["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
	["lucide-flame"] = "rbxassetid://10723376114",
	["lucide-flashlight"] = "rbxassetid://10723376471",
	["lucide-flashlight-off"] = "rbxassetid://10723376365",
	["lucide-flask-conical"] = "rbxassetid://10734883986",
	["lucide-flask-round"] = "rbxassetid://10723376614",
	["lucide-flip-horizontal"] = "rbxassetid://10723376884",
	["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
	["lucide-flip-vertical"] = "rbxassetid://10723377138",
	["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
	["lucide-flower"] = "rbxassetid://10747830374",
	["lucide-flower-2"] = "rbxassetid://10723377305",
	["lucide-focus"] = "rbxassetid://10723377537",
	["lucide-folder"] = "rbxassetid://10723387563",
	["lucide-folder-archive"] = "rbxassetid://10723384478",
	["lucide-folder-check"] = "rbxassetid://10723384605",
	["lucide-folder-clock"] = "rbxassetid://10723384731",
	["lucide-folder-closed"] = "rbxassetid://10723384893",
	["lucide-folder-cog"] = "rbxassetid://10723385213",
	["lucide-folder-cog-2"] = "rbxassetid://10723385036",
	["lucide-folder-down"] = "rbxassetid://10723385338",
	["lucide-folder-edit"] = "rbxassetid://10723385445",
	["lucide-folder-heart"] = "rbxassetid://10723385545",
	["lucide-folder-input"] = "rbxassetid://10723385721",
	["lucide-folder-key"] = "rbxassetid://10723385848",
	["lucide-folder-lock"] = "rbxassetid://10723386005",
	["lucide-folder-minus"] = "rbxassetid://10723386127",
	["lucide-folder-open"] = "rbxassetid://10723386277",
	["lucide-folder-output"] = "rbxassetid://10723386386",
	["lucide-folder-plus"] = "rbxassetid://10723386531",
	["lucide-folder-search"] = "rbxassetid://10723386787",
	["lucide-folder-search-2"] = "rbxassetid://10723386674",
	["lucide-folder-symlink"] = "rbxassetid://10723386930",
	["lucide-folder-tree"] = "rbxassetid://10723387085",
	["lucide-folder-up"] = "rbxassetid://10723387265",
	["lucide-folder-x"] = "rbxassetid://10723387448",
	["lucide-folders"] = "rbxassetid://10723387721",
	["lucide-form-input"] = "rbxassetid://10723387841",
	["lucide-forward"] = "rbxassetid://10723388016",
	["lucide-frame"] = "rbxassetid://10723394389",
	["lucide-framer"] = "rbxassetid://10723394565",
	["lucide-frown"] = "rbxassetid://10723394681",
	["lucide-fuel"] = "rbxassetid://10723394846",
	["lucide-function-square"] = "rbxassetid://10723395041",
	["lucide-gamepad"] = "rbxassetid://10723395457",
	["lucide-gamepad-2"] = "rbxassetid://10723395215",
	["lucide-gauge"] = "rbxassetid://10723395708",
	["lucide-gavel"] = "rbxassetid://10723395896",
	["lucide-gem"] = "rbxassetid://10723396000",
	["lucide-ghost"] = "rbxassetid://10723396107",
	["lucide-gift"] = "rbxassetid://10723396402",
	["lucide-gift-card"] = "rbxassetid://10723396225",
	["lucide-git-branch"] = "rbxassetid://10723396676",
	["lucide-git-branch-plus"] = "rbxassetid://10723396542",
	["lucide-git-commit"] = "rbxassetid://10723396812",
	["lucide-git-compare"] = "rbxassetid://10723396954",
	["lucide-git-fork"] = "rbxassetid://10723397049",
	["lucide-git-merge"] = "rbxassetid://10723397165",
	["lucide-git-pull-request"] = "rbxassetid://10723397431",
	["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
	["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
	["lucide-glass"] = "rbxassetid://10723397788",
	["lucide-glass-2"] = "rbxassetid://10723397529",
	["lucide-glass-water"] = "rbxassetid://10723397678",
	["lucide-glasses"] = "rbxassetid://10723397895",
	["lucide-globe"] = "rbxassetid://10723404337",
	["lucide-globe-2"] = "rbxassetid://10723398002",
	["lucide-grab"] = "rbxassetid://10723404472",
	["lucide-graduation-cap"] = "rbxassetid://10723404691",
	["lucide-grape"] = "rbxassetid://10723404822",
	["lucide-grid"] = "rbxassetid://10723404936",
	["lucide-grip-horizontal"] = "rbxassetid://10723405089",
	["lucide-grip-vertical"] = "rbxassetid://10723405236",
	["lucide-hammer"] = "rbxassetid://10723405360",
	["lucide-hand"] = "rbxassetid://10723405649",
	["lucide-hand-metal"] = "rbxassetid://10723405508",
	["lucide-hard-drive"] = "rbxassetid://10723405749",
	["lucide-hard-hat"] = "rbxassetid://10723405859",
	["lucide-hash"] = "rbxassetid://10723405975",
	["lucide-haze"] = "rbxassetid://10723406078",
	["lucide-headphones"] = "rbxassetid://10723406165",
	["lucide-heart"] = "rbxassetid://10723406885",
	["lucide-heart-crack"] = "rbxassetid://10723406299",
	["lucide-heart-handshake"] = "rbxassetid://10723406480",
	["lucide-heart-off"] = "rbxassetid://10723406662",
	["lucide-heart-pulse"] = "rbxassetid://10723406795",
	["lucide-help-circle"] = "rbxassetid://10723406988",
	["lucide-hexagon"] = "rbxassetid://10723407092",
	["lucide-highlighter"] = "rbxassetid://10723407192",
	["lucide-history"] = "rbxassetid://10723407335",
	["lucide-home"] = "rbxassetid://10723407389",
	["lucide-hourglass"] = "rbxassetid://10723407498",
	["lucide-ice-cream"] = "rbxassetid://10723414308",
	["lucide-image"] = "rbxassetid://10723415040",
	["lucide-image-minus"] = "rbxassetid://10723414487",
	["lucide-image-off"] = "rbxassetid://10723414677",
	["lucide-image-plus"] = "rbxassetid://10723414827",
	["lucide-import"] = "rbxassetid://10723415205",
	["lucide-inbox"] = "rbxassetid://10723415335",
	["lucide-indent"] = "rbxassetid://10723415494",
	["lucide-indian-rupee"] = "rbxassetid://10723415642",
	["lucide-infinity"] = "rbxassetid://10723415766",
	["lucide-info"] = "rbxassetid://10723415903",
	["lucide-inspect"] = "rbxassetid://10723416057",
	["lucide-italic"] = "rbxassetid://10723416195",
	["lucide-japanese-yen"] = "rbxassetid://10723416363",
	["lucide-joystick"] = "rbxassetid://10723416527",
	["lucide-key"] = "rbxassetid://10723416652",
	["lucide-keyboard"] = "rbxassetid://10723416765",
	["lucide-lamp"] = "rbxassetid://10723417513",
	["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
	["lucide-lamp-desk"] = "rbxassetid://10723417016",
	["lucide-lamp-floor"] = "rbxassetid://10723417131",
	["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
	["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
	["lucide-landmark"] = "rbxassetid://10723417608",
	["lucide-languages"] = "rbxassetid://10723417703",
	["lucide-laptop"] = "rbxassetid://10723423881",
	["lucide-laptop-2"] = "rbxassetid://10723417797",
	["lucide-lasso"] = "rbxassetid://10723424235",
	["lucide-lasso-select"] = "rbxassetid://10723424058",
	["lucide-laugh"] = "rbxassetid://10723424372",
	["lucide-layers"] = "rbxassetid://10723424505",
	["lucide-layout"] = "rbxassetid://10723425376",
	["lucide-layout-dashboard"] = "rbxassetid://10723424646",
	["lucide-layout-grid"] = "rbxassetid://10723424838",
	["lucide-layout-list"] = "rbxassetid://10723424963",
	["lucide-layout-template"] = "rbxassetid://10723425187",
	["lucide-leaf"] = "rbxassetid://10723425539",
	["lucide-library"] = "rbxassetid://10723425615",
	["lucide-life-buoy"] = "rbxassetid://10723425685",
	["lucide-lightbulb"] = "rbxassetid://10723425852",
	["lucide-lightbulb-off"] = "rbxassetid://10723425762",
	["lucide-line-chart"] = "rbxassetid://10723426393",
	["lucide-link"] = "rbxassetid://10723426722",
	["lucide-link-2"] = "rbxassetid://10723426595",
	["lucide-link-2-off"] = "rbxassetid://10723426513",
	["lucide-list"] = "rbxassetid://10723433811",
	["lucide-list-checks"] = "rbxassetid://10734884548",
	["lucide-list-end"] = "rbxassetid://10723426886",
	["lucide-list-minus"] = "rbxassetid://10723426986",
	["lucide-list-music"] = "rbxassetid://10723427081",
	["lucide-list-ordered"] = "rbxassetid://10723427199",
	["lucide-list-plus"] = "rbxassetid://10723427334",
	["lucide-list-start"] = "rbxassetid://10723427494",
	["lucide-list-video"] = "rbxassetid://10723427619",
	["lucide-list-x"] = "rbxassetid://10723433655",
	["lucide-loader"] = "rbxassetid://10723434070",
	["lucide-loader-2"] = "rbxassetid://10723433935",
	["lucide-locate"] = "rbxassetid://10723434557",
	["lucide-locate-fixed"] = "rbxassetid://10723434236",
	["lucide-locate-off"] = "rbxassetid://10723434379",
	["lucide-lock"] = "rbxassetid://10723434711",
	["lucide-log-in"] = "rbxassetid://10723434830",
	["lucide-log-out"] = "rbxassetid://10723434906",
	["lucide-luggage"] = "rbxassetid://10723434993",
	["lucide-magnet"] = "rbxassetid://10723435069",
	["lucide-mail"] = "rbxassetid://10734885430",
	["lucide-mail-check"] = "rbxassetid://10723435182",
	["lucide-mail-minus"] = "rbxassetid://10723435261",
	["lucide-mail-open"] = "rbxassetid://10723435342",
	["lucide-mail-plus"] = "rbxassetid://10723435443",
	["lucide-mail-question"] = "rbxassetid://10723435515",
	["lucide-mail-search"] = "rbxassetid://10734884739",
	["lucide-mail-warning"] = "rbxassetid://10734885015",
	["lucide-mail-x"] = "rbxassetid://10734885247",
	["lucide-mails"] = "rbxassetid://10734885614",
	["lucide-map"] = "rbxassetid://10734886202",
	["lucide-map-pin"] = "rbxassetid://10734886004",
	["lucide-map-pin-off"] = "rbxassetid://10734885803",
	["lucide-maximize"] = "rbxassetid://10734886735",
	["lucide-maximize-2"] = "rbxassetid://10734886496",
	["lucide-medal"] = "rbxassetid://10734887072",
	["lucide-megaphone"] = "rbxassetid://10734887454",
	["lucide-megaphone-off"] = "rbxassetid://10734887311",
	["lucide-meh"] = "rbxassetid://10734887603",
	["lucide-menu"] = "rbxassetid://10734887784",
	["lucide-message-circle"] = "rbxassetid://10734888000",
	["lucide-message-square"] = "rbxassetid://10734888228",
	["lucide-mic"] = "rbxassetid://10734888864",
	["lucide-mic-2"] = "rbxassetid://10734888430",
	["lucide-mic-off"] = "rbxassetid://10734888646",
	["lucide-microscope"] = "rbxassetid://10734889106",
	["lucide-microwave"] = "rbxassetid://10734895076",
	["lucide-milestone"] = "rbxassetid://10734895310",
	["lucide-minimize"] = "rbxassetid://10734895698",
	["lucide-minimize-2"] = "rbxassetid://10734895530",
	["lucide-minus"] = "rbxassetid://10734896206",
	["lucide-minus-circle"] = "rbxassetid://10734895856",
	["lucide-minus-square"] = "rbxassetid://10734896029",
	["lucide-monitor"] = "rbxassetid://10734896881",
	["lucide-monitor-off"] = "rbxassetid://10734896360",
	["lucide-monitor-speaker"] = "rbxassetid://10734896512",
	["lucide-moon"] = "rbxassetid://10734897102",
	["lucide-more-horizontal"] = "rbxassetid://10734897250",
	["lucide-more-vertical"] = "rbxassetid://10734897387",
	["lucide-mountain"] = "rbxassetid://10734897956",
	["lucide-mountain-snow"] = "rbxassetid://10734897665",
	["lucide-mouse"] = "rbxassetid://10734898592",
	["lucide-mouse-pointer"] = "rbxassetid://10734898476",
	["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
	["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
	["lucide-move"] = "rbxassetid://10734900011",
	["lucide-move-3d"] = "rbxassetid://10734898756",
	["lucide-move-diagonal"] = "rbxassetid://10734899164",
	["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
	["lucide-move-horizontal"] = "rbxassetid://10734899414",
	["lucide-move-vertical"] = "rbxassetid://10734899821",
	["lucide-music"] = "rbxassetid://10734905958",
	["lucide-music-2"] = "rbxassetid://10734900215",
	["lucide-music-3"] = "rbxassetid://10734905665",
	["lucide-music-4"] = "rbxassetid://10734905823",
	["lucide-navigation"] = "rbxassetid://10734906744",
	["lucide-navigation-2"] = "rbxassetid://10734906332",
	["lucide-navigation-2-off"] = "rbxassetid://10734906144",
	["lucide-navigation-off"] = "rbxassetid://10734906580",
	["lucide-network"] = "rbxassetid://10734906975",
	["lucide-newspaper"] = "rbxassetid://10734907168",
	["lucide-octagon"] = "rbxassetid://10734907361",
	["lucide-option"] = "rbxassetid://10734907649",
	["lucide-outdent"] = "rbxassetid://10734907933",
	["lucide-package"] = "rbxassetid://10734909540",
	["lucide-package-2"] = "rbxassetid://10734908151",
	["lucide-package-check"] = "rbxassetid://10734908384",
	["lucide-package-minus"] = "rbxassetid://10734908626",
	["lucide-package-open"] = "rbxassetid://10734908793",
	["lucide-package-plus"] = "rbxassetid://10734909016",
	["lucide-package-search"] = "rbxassetid://10734909196",
	["lucide-package-x"] = "rbxassetid://10734909375",
	["lucide-paint-bucket"] = "rbxassetid://10734909847",
	["lucide-paintbrush"] = "rbxassetid://10734910187",
	["lucide-paintbrush-2"] = "rbxassetid://10734910030",
	["lucide-palette"] = "rbxassetid://10734910430",
	["lucide-palmtree"] = "rbxassetid://10734910680",
	["lucide-paperclip"] = "rbxassetid://10734910927",
	["lucide-party-popper"] = "rbxassetid://10734918735",
	["lucide-pause"] = "rbxassetid://10734919336",
	["lucide-pause-circle"] = "rbxassetid://10735024209",
	["lucide-pause-octagon"] = "rbxassetid://10734919143",
	["lucide-pen-tool"] = "rbxassetid://10734919503",
	["lucide-pencil"] = "rbxassetid://10734919691",
	["lucide-percent"] = "rbxassetid://10734919919",
	["lucide-person-standing"] = "rbxassetid://10734920149",
	["lucide-phone"] = "rbxassetid://10734921524",
	["lucide-phone-call"] = "rbxassetid://10734920305",
	["lucide-phone-forwarded"] = "rbxassetid://10734920508",
	["lucide-phone-incoming"] = "rbxassetid://10734920694",
	["lucide-phone-missed"] = "rbxassetid://10734920845",
	["lucide-phone-off"] = "rbxassetid://10734921077",
	["lucide-phone-outgoing"] = "rbxassetid://10734921288",
	["lucide-pie-chart"] = "rbxassetid://10734921727",
	["lucide-piggy-bank"] = "rbxassetid://10734921935",
	["lucide-pin"] = "rbxassetid://10734922324",
	["lucide-pin-off"] = "rbxassetid://10734922180",
	["lucide-pipette"] = "rbxassetid://10734922497",
	["lucide-pizza"] = "rbxassetid://10734922774",
	["lucide-plane"] = "rbxassetid://10734922971",
	["lucide-play"] = "rbxassetid://10734923549",
	["lucide-play-circle"] = "rbxassetid://10734923214",
	["lucide-plus"] = "rbxassetid://10734924532",
	["lucide-plus-circle"] = "rbxassetid://10734923868",
	["lucide-plus-square"] = "rbxassetid://10734924219",
	["lucide-podcast"] = "rbxassetid://10734929553",
	["lucide-pointer"] = "rbxassetid://10734929723",
	["lucide-pound-sterling"] = "rbxassetid://10734929981",
	["lucide-power"] = "rbxassetid://10734930466",
	["lucide-power-off"] = "rbxassetid://10734930257",
	["lucide-printer"] = "rbxassetid://10734930632",
	["lucide-puzzle"] = "rbxassetid://10734930886",
	["lucide-quote"] = "rbxassetid://10734931234",
	["lucide-radio"] = "rbxassetid://10734931596",
	["lucide-radio-receiver"] = "rbxassetid://10734931402",
	["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
	["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
	["lucide-recycle"] = "rbxassetid://10734932295",
	["lucide-redo"] = "rbxassetid://10734932822",
	["lucide-redo-2"] = "rbxassetid://10734932586",
	["lucide-refresh-ccw"] = "rbxassetid://10734933056",
	["lucide-refresh-cw"] = "rbxassetid://10734933222",
	["lucide-refrigerator"] = "rbxassetid://10734933465",
	["lucide-regex"] = "rbxassetid://10734933655",
	["lucide-repeat"] = "rbxassetid://10734933966",
	["lucide-repeat-1"] = "rbxassetid://10734933826",
	["lucide-reply"] = "rbxassetid://10734934252",
	["lucide-reply-all"] = "rbxassetid://10734934132",
	["lucide-rewind"] = "rbxassetid://10734934347",
	["lucide-rocket"] = "rbxassetid://10734934585",
	["lucide-rocking-chair"] = "rbxassetid://10734939942",
	["lucide-rotate-3d"] = "rbxassetid://10734940107",
	["lucide-rotate-ccw"] = "rbxassetid://10734940376",
	["lucide-rotate-cw"] = "rbxassetid://10734940654",
	["lucide-rss"] = "rbxassetid://10734940825",
	["lucide-ruler"] = "rbxassetid://10734941018",
	["lucide-russian-ruble"] = "rbxassetid://10734941199",
	["lucide-sailboat"] = "rbxassetid://10734941354",
	["lucide-save"] = "rbxassetid://10734941499",
	["lucide-scale"] = "rbxassetid://10734941912",
	["lucide-scale-3d"] = "rbxassetid://10734941739",
	["lucide-scaling"] = "rbxassetid://10734942072",
	["lucide-scan"] = "rbxassetid://10734942565",
	["lucide-scan-face"] = "rbxassetid://10734942198",
	["lucide-scan-line"] = "rbxassetid://10734942351",
	["lucide-scissors"] = "rbxassetid://10734942778",
	["lucide-screen-share"] = "rbxassetid://10734943193",
	["lucide-screen-share-off"] = "rbxassetid://10734942967",
	["lucide-scroll"] = "rbxassetid://10734943448",
	["lucide-search"] = "rbxassetid://10734943674",
	["lucide-send"] = "rbxassetid://10734943902",
	["lucide-separator-horizontal"] = "rbxassetid://10734944115",
	["lucide-separator-vertical"] = "rbxassetid://10734944326",
	["lucide-server"] = "rbxassetid://10734949856",
	["lucide-server-cog"] = "rbxassetid://10734944444",
	["lucide-server-crash"] = "rbxassetid://10734944554",
	["lucide-server-off"] = "rbxassetid://10734944668",
	["lucide-settings"] = "rbxassetid://10734950309",
	["lucide-settings-2"] = "rbxassetid://10734950020",
	["lucide-share"] = "rbxassetid://10734950813",
	["lucide-share-2"] = "rbxassetid://10734950553",
	["lucide-sheet"] = "rbxassetid://10734951038",
	["lucide-shield"] = "rbxassetid://10734951847",
	["lucide-shield-alert"] = "rbxassetid://10734951173",
	["lucide-shield-check"] = "rbxassetid://10734951367",
	["lucide-shield-close"] = "rbxassetid://10734951535",
	["lucide-shield-off"] = "rbxassetid://10734951684",
	["lucide-shirt"] = "rbxassetid://10734952036",
	["lucide-shopping-bag"] = "rbxassetid://10734952273",
	["lucide-shopping-cart"] = "rbxassetid://10734952479",
	["lucide-shovel"] = "rbxassetid://10734952773",
	["lucide-shower-head"] = "rbxassetid://10734952942",
	["lucide-shrink"] = "rbxassetid://10734953073",
	["lucide-shrub"] = "rbxassetid://10734953241",
	["lucide-shuffle"] = "rbxassetid://10734953451",
	["lucide-sidebar"] = "rbxassetid://10734954301",
	["lucide-sidebar-close"] = "rbxassetid://10734953715",
	["lucide-sidebar-open"] = "rbxassetid://10734954000",
	["lucide-sigma"] = "rbxassetid://10734954538",
	["lucide-signal"] = "rbxassetid://10734961133",
	["lucide-signal-high"] = "rbxassetid://10734954807",
	["lucide-signal-low"] = "rbxassetid://10734955080",
	["lucide-signal-medium"] = "rbxassetid://10734955336",
	["lucide-signal-zero"] = "rbxassetid://10734960878",
	["lucide-siren"] = "rbxassetid://10734961284",
	["lucide-skip-back"] = "rbxassetid://10734961526",
	["lucide-skip-forward"] = "rbxassetid://10734961809",
	["lucide-skull"] = "rbxassetid://10734962068",
	["lucide-slack"] = "rbxassetid://10734962339",
	["lucide-slash"] = "rbxassetid://10734962600",
	["lucide-slice"] = "rbxassetid://10734963024",
	["lucide-sliders"] = "rbxassetid://10734963400",
	["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
	["lucide-smartphone"] = "rbxassetid://10734963940",
	["lucide-smartphone-charging"] = "rbxassetid://10734963671",
	["lucide-smile"] = "rbxassetid://10734964441",
	["lucide-smile-plus"] = "rbxassetid://10734964188",
	["lucide-snowflake"] = "rbxassetid://10734964600",
	["lucide-sofa"] = "rbxassetid://10734964852",
	["lucide-sort-asc"] = "rbxassetid://10734965115",
	["lucide-sort-desc"] = "rbxassetid://10734965287",
	["lucide-speaker"] = "rbxassetid://10734965419",
	["lucide-sprout"] = "rbxassetid://10734965572",
	["lucide-square"] = "rbxassetid://10734965702",
	["lucide-star"] = "rbxassetid://10734966248",
	["lucide-star-half"] = "rbxassetid://10734965897",
	["lucide-star-off"] = "rbxassetid://10734966097",
	["lucide-stethoscope"] = "rbxassetid://10734966384",
	["lucide-sticker"] = "rbxassetid://10734972234",
	["lucide-sticky-note"] = "rbxassetid://10734972463",
	["lucide-stop-circle"] = "rbxassetid://10734972621",
	["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
	["lucide-stretch-vertical"] = "rbxassetid://10734973130",
	["lucide-strikethrough"] = "rbxassetid://10734973290",
	["lucide-subscript"] = "rbxassetid://10734973457",
	["lucide-sun"] = "rbxassetid://10734974297",
	["lucide-sun-dim"] = "rbxassetid://10734973645",
	["lucide-sun-medium"] = "rbxassetid://10734973778",
	["lucide-sun-moon"] = "rbxassetid://10734973999",
	["lucide-sun-snow"] = "rbxassetid://10734974130",
	["lucide-sunrise"] = "rbxassetid://10734974522",
	["lucide-sunset"] = "rbxassetid://10734974689",
	["lucide-superscript"] = "rbxassetid://10734974850",
	["lucide-swiss-franc"] = "rbxassetid://10734975024",
	["lucide-switch-camera"] = "rbxassetid://10734975214",
	["lucide-sword"] = "rbxassetid://10734975486",
	["lucide-swords"] = "rbxassetid://10734975692",
	["lucide-syringe"] = "rbxassetid://10734975932",
	["lucide-table"] = "rbxassetid://10734976230",
	["lucide-table-2"] = "rbxassetid://10734976097",
	["lucide-tablet"] = "rbxassetid://10734976394",
	["lucide-tag"] = "rbxassetid://10734976528",
	["lucide-tags"] = "rbxassetid://10734976739",
	["lucide-target"] = "rbxassetid://10734977012",
	["lucide-tent"] = "rbxassetid://10734981750",
	["lucide-terminal"] = "rbxassetid://10734982144",
	["lucide-terminal-square"] = "rbxassetid://10734981995",
	["lucide-text-cursor"] = "rbxassetid://10734982395",
	["lucide-text-cursor-input"] = "rbxassetid://10734982297",
	["lucide-thermometer"] = "rbxassetid://10734983134",
	["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
	["lucide-thermometer-sun"] = "rbxassetid://10734982771",
	["lucide-thumbs-down"] = "rbxassetid://10734983359",
	["lucide-thumbs-up"] = "rbxassetid://10734983629",
	["lucide-ticket"] = "rbxassetid://10734983868",
	["lucide-timer"] = "rbxassetid://10734984606",
	["lucide-timer-off"] = "rbxassetid://10734984138",
	["lucide-timer-reset"] = "rbxassetid://10734984355",
	["lucide-toggle-left"] = "rbxassetid://10734984834",
	["lucide-toggle-right"] = "rbxassetid://10734985040",
	["lucide-tornado"] = "rbxassetid://10734985247",
	["lucide-toy-brick"] = "rbxassetid://10747361919",
	["lucide-train"] = "rbxassetid://10747362105",
	["lucide-trash"] = "rbxassetid://10747362393",
	["lucide-trash-2"] = "rbxassetid://10747362241",
	["lucide-tree-deciduous"] = "rbxassetid://10747362534",
	["lucide-tree-pine"] = "rbxassetid://10747362748",
	["lucide-trees"] = "rbxassetid://10747363016",
	["lucide-trending-down"] = "rbxassetid://10747363205",
	["lucide-trending-up"] = "rbxassetid://10747363465",
	["lucide-triangle"] = "rbxassetid://10747363621",
	["lucide-trophy"] = "rbxassetid://10747363809",
	["lucide-truck"] = "rbxassetid://10747364031",
	["lucide-tv"] = "rbxassetid://10747364593",
	["lucide-tv-2"] = "rbxassetid://10747364302",
	["lucide-type"] = "rbxassetid://10747364761",
	["lucide-umbrella"] = "rbxassetid://10747364971",
	["lucide-underline"] = "rbxassetid://10747365191",
	["lucide-undo"] = "rbxassetid://10747365484",
	["lucide-undo-2"] = "rbxassetid://10747365359",
	["lucide-unlink"] = "rbxassetid://10747365771",
	["lucide-unlink-2"] = "rbxassetid://10747397871",
	["lucide-unlock"] = "rbxassetid://10747366027",
	["lucide-upload"] = "rbxassetid://10747366434",
	["lucide-upload-cloud"] = "rbxassetid://10747366266",
	["lucide-usb"] = "rbxassetid://10747366606",
	["lucide-user"] = "rbxassetid://10747373176",
	["lucide-user-check"] = "rbxassetid://10747371901",
	["lucide-user-cog"] = "rbxassetid://10747372167",
	["lucide-user-minus"] = "rbxassetid://10747372346",
	["lucide-user-plus"] = "rbxassetid://10747372702",
	["lucide-user-x"] = "rbxassetid://10747372992",
	["lucide-users"] = "rbxassetid://10747373426",
	["lucide-utensils"] = "rbxassetid://10747373821",
	["lucide-utensils-crossed"] = "rbxassetid://10747373629",
	["lucide-venetian-mask"] = "rbxassetid://10747374003",
	["lucide-verified"] = "rbxassetid://10747374131",
	["lucide-vibrate"] = "rbxassetid://10747374489",
	["lucide-vibrate-off"] = "rbxassetid://10747374269",
	["lucide-video"] = "rbxassetid://10747374938",
	["lucide-video-off"] = "rbxassetid://10747374721",
	["lucide-view"] = "rbxassetid://10747375132",
	["lucide-voicemail"] = "rbxassetid://10747375281",
	["lucide-volume"] = "rbxassetid://10747376008",
	["lucide-volume-1"] = "rbxassetid://10747375450",
	["lucide-volume-2"] = "rbxassetid://10747375679",
	["lucide-volume-x"] = "rbxassetid://10747375880",
	["lucide-wallet"] = "rbxassetid://10747376205",
	["lucide-wand"] = "rbxassetid://10747376565",
	["lucide-wand-2"] = "rbxassetid://10747376349",
	["lucide-watch"] = "rbxassetid://10747376722",
	["lucide-waves"] = "rbxassetid://10747376931",
	["lucide-webcam"] = "rbxassetid://10747381992",
	["lucide-wifi"] = "rbxassetid://10747382504",
	["lucide-wifi-off"] = "rbxassetid://10747382268",
	["lucide-wind"] = "rbxassetid://10747382750",
	["lucide-wrap-text"] = "rbxassetid://10747383065",
	["lucide-wrench"] = "rbxassetid://10747383470",
	["lucide-x"] = "rbxassetid://10747384394",
	["lucide-x-circle"] = "rbxassetid://10747383819",
	["lucide-x-octagon"] = "rbxassetid://10747384037",
	["lucide-x-square"] = "rbxassetid://10747384217",
	["lucide-zoom-in"] = "rbxassetid://10747384552",
	["lucide-zoom-out"] = "rbxassetid://10747384679",
}
library.FontAwesome = {
	a = "rbxassetid://74244459944328",
	["accessible-icon"] = "rbxassetid://135242143909610",
	accusoft = "rbxassetid://94057545767519",
	["address-book"] = "rbxassetid://129578640498728",
	["address-card"] = "rbxassetid://102106715141928",
	["align-center"] = "rbxassetid://84408132800466",
	["align-justify"] = "rbxassetid://125569339749500",
	["align-left"] = "rbxassetid://110008004178539",
	["align-right"] = "rbxassetid://79774893981710",
	alipay = "rbxassetid://134274199490629",
	anchor = "rbxassetid://94979524088900",
	["anchor-circle-check"] = "rbxassetid://91871463373335",
	["anchor-circle-exclamation"] = "rbxassetid://72303311082053",
	["anchor-circle-xmark"] = "rbxassetid://106917001300524",
	["anchor-lock"] = "rbxassetid://109198662645391",
	android = "rbxassetid://93605821179752",
	["angle-down"] = "rbxassetid://122395101934469",
	["angle-left"] = "rbxassetid://132632410309959",
	["angle-right"] = "rbxassetid://105971664068240",
	["angles-down"] = "rbxassetid://96703500127872",
	["angles-left"] = "rbxassetid://70595546989447",
	["angles-right"] = "rbxassetid://131176182882747",
	["angles-up"] = "rbxassetid://96847020381396",
	["angle-up"] = "rbxassetid://136517226470297",
	["arrow-down"] = "rbxassetid://100174052036797",
	["arrow-left"] = "rbxassetid://133922718486450",
	["arrow-pointer"] = "rbxassetid://128639550333559",
	["arrow-right"] = "rbxassetid://105166519175969",
	["arrow-right-arrow-left"] = "rbxassetid://87405428139040",
	["arrow-right-from-bracket"] = "rbxassetid://111722018253482",
	["arrow-right-to-bracket"] = "rbxassetid://79400903745367",
	["arrow-rotate-left"] = "rbxassetid://127876635051023",
	["arrow-rotate-right"] = "rbxassetid://82773599534347",
	["arrows-left-right"] = "rbxassetid://85625938291926",
	["arrows-rotate"] = "rbxassetid://109882153776270",
	["arrows-up-down"] = "rbxassetid://88240470530518",
	["arrows-up-down-left-right"] = "rbxassetid://136830364721572",
	["arrow-trend-down"] = "rbxassetid://138593805214121",
	["arrow-trend-up"] = "rbxassetid://121301107868410",
	["arrow-up"] = "rbxassetid://116473498857626",
	["arrow-up-from-bracket"] = "rbxassetid://77716847027695",
	["arrow-up-right-from-square"] = "rbxassetid://101883941536459",
	at = "rbxassetid://116468402170315",
	atom = "rbxassetid://136905279132440",
	["audio-description"] = "rbxassetid://137490376195308",
	award = "rbxassetid://134322732056464",
	backward = "rbxassetid://115437448962693",
	["backward-fast"] = "rbxassetid://133478473989228",
	["backward-step"] = "rbxassetid://118301206125870",
	ban = "rbxassetid://89004310664420",
	bandage = "rbxassetid://109104902535966",
	bars = "rbxassetid://127661324755454",
	["bars-progress"] = "rbxassetid://77774174241071",
	["bars-staggered"] = "rbxassetid://97337529919486",
	baseball = "rbxassetid://87677782809968",
	basketball = "rbxassetid://71403045563776",
	["basket-shopping"] = "rbxassetid://129578273645224",
	["battery-empty"] = "rbxassetid://99777750808099",
	["battery-full"] = "rbxassetid://93999278270214",
	["battery-half"] = "rbxassetid://87762099115036",
	["battery-quarter"] = "rbxassetid://96680551535938",
	["battery-three-quarters"] = "rbxassetid://130840615974067",
	bell = "rbxassetid://109971903438934",
	["bell-slash"] = "rbxassetid://101758939103378",
	bilibili = "rbxassetid://85834752961243",
	biohazard = "rbxassetid://102610067899783",
	bitcoin = "rbxassetid://131632152157382",
	["bitcoin-sign"] = "rbxassetid://127809070259506",
	["bluetooth-b"] = "rbxassetid://96522278309021",
	bluetooth = "rbxassetid://113081372628241",
	bolt = "rbxassetid://89858717966393",
	bomb = "rbxassetid://113184250292244",
	book = "rbxassetid://134006112957521",
	["book-open"] = "rbxassetid://109774137257967",
	bug = "rbxassetid://105314179657552",
	["bug-slash"] = "rbxassetid://133973969610093",
	broom = "rbxassetid://95267009545395",
	bullhorn = "rbxassetid://87251830910561",
	bullseye = "rbxassetid://83080500555400",
	bus = "rbxassetid://126579638968493",
	calculator = "rbxassetid://119527046782470",
	camera = "rbxassetid://133029797251962",
	["cc-amazon-pay"] = "rbxassetid://108859760370504",
	["cc-amex"] = "rbxassetid://138233598058785",
	["cc-apple-pay"] = "rbxassetid://133747941882534",
	["cc-diners-club"] = "rbxassetid://99626539664553",
	["cc-mastercard"] = "rbxassetid://118541621561504",
	["cc-visa"] = "rbxassetid://120055576031063",
	["cc-paypal"] = "rbxassetid://87250418163030",
	check = "rbxassetid://129443092324752",
	["chevron-down"] = "rbxassetid://109535175596957",
	["chevron-left"] = "rbxassetid://129113930144228",
	["chevron-right"] = "rbxassetid://105723602996553",
	["chevron-up"] = "rbxassetid://117264500851637",
	chromecast = "rbxassetid://71543589030583",
	circle = "rbxassetid://131274957777266",
	["circle-check"] = "rbxassetid://98678528147000",
	["circle-info"] = "rbxassetid://97519285421665",
	clipboard = "rbxassetid://111512950362265",
	["clipboard-check"] = "rbxassetid://118535733506457",
	clock = "rbxassetid://98767608471295",
	code = "rbxassetid://91882036126433",
	["computer-mouse"] = "rbxassetid://114752565381440",
	cookie = "rbxassetid://101854685117513",
	copy = "rbxassetid://76996819137437",
	copyright = "rbxassetid://131736117717053",
	["credit-card"] = "rbxassetid://85213342061383",
	crosshairs = "rbxassetid://133441774847498",
	database = "rbxassetid://109882554524389",
	discord = "rbxassetid://75871011309830",
	display = "rbxassetid://101851152220134",
	download = "rbxassetid://122321311031549",
	["earth-africa"] = "rbxassetid://107029199584204",
	["earth-americas"] = "rbxassetid://105574352653407",
	["earth-asia"] = "rbxassetid://138155660327900",
	["earth-europe"] = "rbxassetid://134638370907021",
	["earth-oceania"] = "rbxassetid://121780690380624",
	envelope = "rbxassetid://136184483524922",
	["envelope-open"] = "rbxassetid://132492127839357",
	envira = "rbxassetid://75781570526788",
	equals = "rbxassetid://134271902308970",
	eraser = "rbxassetid://128970640154301",
	ethereum = "rbxassetid://103421769879532",
	exclamation = "rbxassetid://125718656366676",
	eye = "rbxassetid://95235861336970",
	feather = "rbxassetid://135995843954302",
	fingerprint = "rbxassetid://125379360015007",
	fire = "rbxassetid://122498238725085",
	["floppy-disk"] = "rbxassetid://101374426361499",
	folder = "rbxassetid://131374292202389",
	["folder-open"] = "rbxassetid://78238714442180",
	forward = "rbxassetid://107937467448020",
	["forward-fast"] = "rbxassetid://83735840669276",
	["forward-step"] = "rbxassetid://104040171143566",
	gear = "rbxassetid://137945854328407",
	gift = "rbxassetid://129718366414314",
	git = "rbxassetid://117711060446092",
	github = "rbxassetid://123783733365919",
	globe = "rbxassetid://102861769355196",
	["hand-holding-hand"] = "rbxassetid://120797412134954",
	headphones = "rbxassetid://86076153665072",
	headset = "rbxassetid://108070801288944",
	["headphones-simple"] = "rbxassetid://97516570978183",
	house = "rbxassetid://86540166012974",
	["house-chimney"] = "rbxassetid://90066192203346",
	image = "rbxassetid://107205506080751",
	infinity = "rbxassetid://129024756905166",
	info = "rbxassetid://113157514619684",
	keyboard = "rbxassetid://97417417526948",
	list = "rbxassetid://87155993544457",
	["location-arrow"] = "rbxassetid://72621673664457",
	["location-crosshairs"] = "rbxassetid://93887450723164",
	lock = "rbxassetid://80031239225283",
	palette = "rbxassetid://81372281623830",
	paste = "rbxassetid://88846256867074",
	paw = "rbxassetid://80005916079930",
	pen = "rbxassetid://97404859124912",
	pencil = "rbxassetid://76590960968733",
	["pen-nib"] = "rbxassetid://91232219924341",
	["pen-ruler"] = "rbxassetid://138407458813207",
	phone = "rbxassetid://72814141651992",
	plane = "rbxassetid://136248807279679",
	plus = "rbxassetid://133137619535544",
	["right-left"] = "rbxassetid://91273051324368",
	["right-to-bracket"] = "rbxassetid://137132451900886",
	rotate = "rbxassetid://95883878890200",
	["rotate-right"] = "rbxassetid://93357988077552",
	["rotate-left"] = "rbxassetid://96753646113822",
	shield = "rbxassetid://73441026473893",
	["shield-halved"] = "rbxassetid://114554606211174",
	user = "rbxassetid://98376828270066",
	unlock = "rbxassetid://99060354229117",
	trash = "rbxassetid://82859108629080",
	["trash-can"] = "rbxassetid://81463703129214",
	skull = "rbxassetid://99276754296574",
	robot = "rbxassetid://134497060038109",
	tag = "rbxassetid://129024358125754",
	thumbtack = "rbxassetid://119847869089109",
	["thumbs-up"] = "rbxassetid://74340984021785",
	["thumbs-down"] = "rbxassetid://86090492737223",
	["user-gear"] = "rbxassetid://137604201056497",
	video = "rbxassetid://112274059143251",
	virus = "rbxassetid://91843339206686",
	volleyball = "rbxassetid://73870192536894",
	["magnifying-glass"] = "rbxassetid://74387839235930",
}
library.tween = function(v126, v127, v128, v129, v130)
	local v131 = v12:Create(
		v127,
		TweenInfo.new(v130 or 0.25, v129 or Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0),
		v128
	):Play()
	return v131
end
library.resizify = function(v132, v133)
	local v134 = Instance.new("ImageButton")
	v134.Position = v16(1, -24, 1, -24)
	v134.Size = v16(0, 24, 0, 24)
	v134.BackgroundTransparency = 1
	v134.Rotation = -45
	v134.ImageTransparency = 0.5
	v134.Image = library.Lucide["lucide-chevrons-up-down"]
	v134.ImageColor3 = Color3.fromRGB(163, 162, 165)
	v134.Name = "resizify"
	v134.Parent = v133
	local v145 = false
	local v146
	local v147
	local v148
	v134.InputBegan:Connect(function(v552)
		if
			(v552.UserInputType == Enum.UserInputType.MouseButton1) or (v552.UserInputType == Enum.UserInputType.Touch)
		then
			v145 = true
			v147 = v552.Position
			v146 = v133.Size
			if not v148 then
				v148 = v1.InputChanged:Connect(function(v1452, v1453)
					if
						v145
						and (
							(v1452.UserInputType == Enum.UserInputType.MouseMovement)
							or (v1452.UserInputType == Enum.UserInputType.Touch)
						)
					then
						local v1484 = v32.ViewportSize.X
						local v1485 = v32.ViewportSize.Y
						local v1486 = v16(
							v146.X.Scale,
							math.clamp(v146.X.Offset + (v1452.Position.X - v147.X), 400, v1484),
							v146.Y.Scale,
							math.clamp(v146.Y.Offset + (v1452.Position.Y - v147.Y), 250, v1485)
						)
						library:tween(v133, { Size = v1486 }, Enum.EasingStyle.Linear, 0.05)
					end
				end)
			end
		end
	end)
	v134.InputEnded:Connect(function(v553)
		if
			(v553.UserInputType == Enum.UserInputType.MouseButton1) or (v553.UserInputType == Enum.UserInputType.Touch)
		then
			v145 = false
			if v148 then
				v148:Disconnect()
				v148 = nil
			end
		end
	end)
end
function fag(v149)
	local v150 = 0
	for v554 in v149 do
		v150 = v150 + 1
	end
	return v150
end
library.next_flag = function(v151)
	local v152 = fag(library.flags) + 1
	local v153 = string.format("flagnumber%s", v152)
	return v153
end
library.mouse_in_frame = function(v154, v155)
	if not v155 then
		return
	end
	if library.Global3DRenderMode then
		if (v155.GuiState == Enum.GuiState.Hover) or (v155.GuiState == Enum.GuiState.Press) then
			return true
		end
		return false
	end
	local v156 = v155.AbsolutePosition
	local v157 = v155.AbsoluteSize
	if (v34.X >= v156.X) and (v34.X <= (v156.X + v157.X)) and (v34.Y >= v156.Y) and (v34.Y <= (v156.Y + v157.Y)) then
		return true
	end
end
library.draggify = function(v158, v159)
	local v160 = false
	local v161 = nil
	local v162 = nil
	local v163 = TweenInfo.new(0.15)
	local v164 = function(v555)
		local v556 = v555.Position - v161
		if library.Global3DRenderMode then
			library:_Animation(v159, v163, { Position = UDim2.fromScale(0.5, 0.5) })
		else
			local v1179 = UDim2.new(v162.X.Scale, v162.X.Offset + v556.X, v162.Y.Scale, v162.Y.Offset + v556.Y)
			library:_Animation(v159, v163, { Position = v1179 })
		end
		library:close_element()
	end
	v159.InputBegan:Connect(function(v557)
		if
			(v557.UserInputType == Enum.UserInputType.MouseButton1) or (v557.UserInputType == Enum.UserInputType.Touch)
		then
			if library.IsMouseOverElement then
				return
			end
			v160 = true
			v161 = v557.Position
			v162 = v159.Position
			v557.Changed:Connect(function()
				if v557.UserInputState == Enum.UserInputState.End then
					v160 = false
				end
			end)
		end
	end)
	v1.InputChanged:Connect(function(v558)
		if
			(v558.UserInputType == Enum.UserInputType.MouseMovement) or (v558.UserInputType == Enum.UserInputType.Touch)
		then
			if v160 then
				v164(v558)
			end
		end
	end)
end
library.convert = function(v165, v166)
	local v167 = {}
	for v559 in string.gmatch(v166, "[^,]+") do
		v49(v167, tonumber(v559))
	end
	if #v167 == 4 then
		return unpack(v167)
	else
		return
	end
end
library.convert_enum = function(v168, v169)
	local v170 = {}
	for v560 in string.gmatch(v169, "[%w_]+") do
		v49(v170, v560)
	end
	local v171 = Enum
	for v561 = 2, #v170 do
		local v562 = v171[v170[v561]]
		v171 = v562
	end
	return v171
end
local v71
library.update_config_list = function(v172)
	if not v71 then
		return
	end
	local v173 = {}
	for v563, v564 in listfiles(library.directory .. "/configs") do
		local v565 = v564:gsub(library.directory .. "/configs\\", "")
			:gsub(".cfg", "")
			:gsub(library.directory .. "\\configs\\", "")
		v173[#v173 + 1] = v565
	end
	v71.refresh_options(v173)
end
library.get_config = function(v174)
	local v175 = {}
	for v567, v568 in next, v58 do
		if (type(v568) == "table") and v568.key then
			v175[v567] = { active = v568.active, mode = v568.mode, key = tostring(v568.key) }
		elseif (type(v568) == "table") and v568["Transparency"] and v568["Color"] then
			v175[v567] = { Transparency = v568["Transparency"], Color = v568["Color"]:ToHex() }
		else
			v175[v567] = v568
		end
	end
	return v5:JSONEncode(v175)
end
library.load_config = function(v176, v177)
	local v178 = v5:JSONDecode(v177)
	for v569, v570 in v178 do
		local v571 = library.config_flags[v569]
		if v569 == "config_name_list" then
			continue
		end
		if v571 then
			if (type(v570) == "table") and v570["Transparency"] and v570["Color"] then
				v571(v26(v570["Color"]), v570["Transparency"])
			elseif (type(v570) == "table") and v570["active"] then
				v571(v570)
			else
				v571(v570)
			end
		end
	end
end
library.round = function(v179, v180, v181)
	local v182 = 1 / (v181 or 1)
	return v37((v180 * v182) + 0.5) / v182
end
library.apply_theme = function(v183, v184, v185, v186)
	v49(v55.utility[v185][v186], v184)
end
library.update_theme = function(v187, v188, v189)
	for v572, v573 in v55.utility[v188] do
		for v985, v986 in v573 do
			if v986[v572] == v55.preset[v188] then
				v986[v572] = v189
			end
		end
	end
	v55.preset[v188] = v189
end
library.AddSignal = function(v191, v192)
	if library.UnloadEnabled then
		table.insert(library.connections, v192)
	end
	return v192
end
library.CreateSignal = function(v193, v194)
	local v195 = Instance.new("BindableEvent")
	local v196 = { Value = v194, __event = v195 }
	v196.GetValue = function(v574)
		return v196.Value
	end
	v196.SetValue = function(v575, v576)
		v196.Value = v576
		return v195:Fire(v576)
	end
	v196.Connect = function(v578, v579)
		local v580 = v195.Event:Connect(v579)
		library:AddSignal(v580)
		return v580
	end
	return v196
end
library.connection = function(v200, v201, v202)
	local v203 = v201:Connect(v202)
	v49(library.connections, v203)
	return v203
end
library.close_element = function(v204, v205)
	local v206 = library.current_open
	if v206 and (v205 ~= v206) then
		if type(v206) == "table" then
			pcall(function()
				v206.set_visible(false)
				v206.open = false
			end)
		end
		library.current_open = nil
	end
	if v205 ~= v206 then
		library.current_open = v205 or nil
	end
end
library.create = function(v207, v208, v209)
	local v210 = Instance.new(v208)
	for v581, v582 in v209 do
		v210[v581] = v582
	end
	return v210
end
library.GetCalculatePosition = function(v211, v212, v213, v214, v215)
	local v216 = v213
	local v217 = v215
	local v218 = v214 - v212
	local v219 = (v216.x * v218.x) + (v216.y * v218.y) + (v216.z * v218.z)
	local v220 = (v216.x * v217.x) + (v216.y * v217.y) + (v216.z * v217.z)
	local v221 = -v219 / v220
	return v214 + (v221 * v215)
end
library._Animation = function(v222, v223, v224, v225)
	local v226 = v12:Create(v223, v224 or TweenInfo.new(0.25), v225)
	v226:Play()
	return v226
end
library.unload_menu = function(v227)
	if library["items"] then
		library["items"]:Destroy()
	end
	if library["other"] then
		library["other"]:Destroy()
	end
	if library._3DPart then
		library._3DPart:Destroy()
	end
	if library.GlobalSurfaceGui then
		library.GlobalSurfaceGui:Destroy()
	end
	for v584, v585 in library.connections do
		v585:Disconnect()
		v585 = nil
	end
	library = nil
end
library._RandomString = function(v228)
	return "vyn="
		.. string.char(
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102),
			math.random(64, 102)
		)
end
library._Blur = function(v229, v230, v231)
	if not library.EnabledBlur then
		return library:AddSignal(Instance.new("BindableEvent").Event:Connect(function()
			return "nl"
		end))
	end
	local v232 = Instance.new("Part", library.ArcylicParent)
	local v233 = Instance.new("DepthOfFieldEffect", v0(game:GetService("Lighting")))
	local v234 = Instance.new("BlockMesh")
	v234.Parent = v232
	v232.Material = Enum.Material.Glass
	v232.Transparency = 1
	v232.Reflectance = 1
	v232.CastShadow = false
	v232.Anchored = true
	v232.CanCollide = false
	v232.CanQuery = false
	v232.CollisionGroup = library:_RandomString()
	v232.Size = Vector3.new(1, 1, 1) * 0.01
	v232.Color = Color3.fromRGB(0, 0, 0)
	v233.Enabled = true
	v233.FarIntensity = 0
	v233.FocusDistance = 0
	v233.InFocusRadius = 1000
	v233.NearIntensity = 1
	v233.Name = library:_RandomString()
	v232.Name = library:_RandomString()
	local v254
	local v255 = function()
		local v586 = v231:GetValue()
		if v586 and not library.Global3DRenderMode then
			library:_Animation(v233, TweenInfo.new(0.1), { NearIntensity = 1 })
			library:_Animation(v232, TweenInfo.new(0.1), { Transparency = 0.97, Size = Vector3.new(1, 1, 1) * 0.01 })
			v232.Parent = library.ArcylicParent
		else
			library:_Animation(v233, TweenInfo.new(0.1), { NearIntensity = 0 })
			library:_Animation(v232, TweenInfo.new(0.1), { Size = Vector3.zero, Transparency = 1.5 })
			v232.Parent = nil
			return false
		end
		if v586 then
			local v1186 = v230.AbsolutePosition
			local v1187 = v1186 + v230.AbsoluteSize
			local v1188 = v32.ScreenPointToRay(v32, v1186.X, v1186.Y, 1)
			local v1189 = v32.ScreenPointToRay(v32, v1187.X, v1187.Y, 1)
			local v1190 = v32.CFrame.Position + (v32.CFrame.LookVector * (0.05 - v32.NearPlaneZ))
			local v1191 = v32.CFrame.LookVector
			local v1192 = library:GetCalculatePosition(v1190, v1191, v1188.Origin, v1188.Direction)
			local v1193 = library:GetCalculatePosition(v1190, v1191, v1189.Origin, v1189.Direction)
			v1192 = v32.CFrame:PointToObjectSpace(v1192)
			v1193 = v32.CFrame:PointToObjectSpace(v1193)
			local v1194 = v1193 - v1192
			local v1195 = (v1192 + v1193) / 2
			v234.Offset = v1195
			v234.Scale = v1194 / 0.0101
			v232.CFrame = v32.CFrame
		end
	end
	local v256 = v32:GetPropertyChangedSignal("CFrame"):Connect(v255)
	local v257 = game:GetService("UserInputService").InputChanged:Connect(function(v587)
		if
			(v587.UserInputType == Enum.UserInputType.MouseButton1)
			or (v587.UserInputType == Enum.UserInputType.MouseMovement)
			or (v587.UserInputType == Enum.UserInputType.Touch)
		then
			pcall(v255)
		end
	end)
	local v258 = task.spawn(function()
		while true do
			task.wait(0.1)
			pcall(v255)
		end
	end)
	function v254()
		v256:Disconnect()
		v257:Disconnect()
		task.cancel(v258)
		v232:Destroy()
		v233:Destroy()
	end
	v230.Destroying:Connect(v254)
	return v256
end
library._CreateShadow = function(v259, v260)
	local v261 = {}
	local v262 = Instance.new("UIStroke")
	local v263 = Instance.new("UIStroke")
	local v264 = Instance.new("UIStroke")
	local v265 = Instance.new("UIStroke")
	v262.Thickness = 6
	v262.Transparency = 1
	v262.Color = Color3.fromRGB(0, 0, 0)
	v262.Parent = v260
	v263.Thickness = 5
	v263.Transparency = 1
	v263.Color = Color3.fromRGB(0, 0, 0)
	v263.Parent = v260
	v264.Thickness = 4
	v264.Transparency = 1
	v264.Color = Color3.fromRGB(0, 0, 0)
	v264.Parent = v260
	v265.Thickness = 3
	v265.Transparency = 1
	v265.Color = Color3.fromRGB(0, 0, 0)
	v265.Parent = v260
	v261.Render = function(v588, v589)
		if v589 then
			library:tween(v262, { Transparency = 0.9 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v263, { Transparency = 0.9 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v264, { Transparency = 0.9 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v265, { Transparency = 0.9 }, Enum.EasingStyle.Quint, 0.175)
		else
			library:tween(v262, { Transparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v263, { Transparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v264, { Transparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v265, { Transparency = 1 }, Enum.EasingStyle.Quint, 0.175)
		end
	end
	return v261
end
library._geticon = function(v283, v284, v285)
	if v285 then
		return library.FontAwesome[v284] or v284
	end
	return library.Lucide["lucide-" .. tostring(v284)]
		or library.Lucide[v284]
		or library.Lucide[tostring(v284)]
		or library.FontAwesome[v284]
		or v284
end
library.SetIconMode = function(v286, v287, v288)
	local v289 = string.lower(string.sub(v288, -5)) == "-bold"
	if v289 then
		v287.Text = v288:sub(1, -6)
		v287.FontFace = library.BuiltInBold
	else
		v287.Text = v288
		v287.FontFace = library.BuiltInRegular
	end
end
library.GetIconFont = function(v290, v291)
	local v292 = string.lower(string.sub(v291, -5)) == "-bold"
	if v292 then
		return library.BuiltInBold
	end
	return library.BuiltInRegular
end
library._isMobile = function(v293)
	return game:GetService("UserInputService").TouchEnabled
end
library._Init3DRender = function(v294, v295, v296)
	local v297 = Instance.new("Part")
	v297.Name = library:_RandomString()
	v297.Anchored = true
	v297.Transparency = 1
	v297.CanCollide = false
	v297.CanTouch = false
	v297.AudioCanCollide = false
	v297.CollisionGroup = library:_RandomString()
	v297.CFrame = CFrame.new(0, 0, 0)
	v297.Size = Vector3.zero
	local v308 = Instance.new("SurfaceGui")
	v308.Parent = v10
	v308.ZIndexBehavior = Enum.ZIndexBehavior.Global
	v308.AlwaysOnTop = true
	v308.LightInfluence = 1
	v308.SizingMode = Enum.SurfaceGuiSizingMode.FixedSize
	v308.PixelsPerStud = 40
	v308.Adornee = v297
	library.GlobalSurfaceGui = v308
	library._3DPart = v297
	library._3DSurfaceGui = v308
	local v321 = Vector2.new(1920, 1080 + 300)
	library._Load3DBlock = function()
		if not v296:GetValue() then
			local v1200, v1201 = v32:WorldToViewportPoint(v297.Position)
			if v1201 then
				library:_Animation(
					v297,
					TweenInfo.new(0.5, Enum.EasingStyle.Quint),
					{ CFrame = v32.CFrame * CFrame.new(0, 0, -15) * CFrame.Angles(0, math.rad(180), 0) }
				)
			end
			return
		end
		local v590 = 50
		local v591 = Vector2.new(v321.X + 5, v321.Y * 1.35) / (v590 / 2)
		local v592 = v591.Magnitude
		local v593 = v592 / 1.35
		v297.Parent = library.ArcylicParent or workspace
		library:_Animation(
			v297,
			TweenInfo.new(0.5, Enum.EasingStyle.Quint),
			{ CFrame = v32.CFrame * CFrame.new(0, 0, -25) * CFrame.Angles(0, math.rad(180), 0) }
		)
		v297.Size = Vector3.new(v321.X / v593, v321.Y / v593, 0)
	end
	local function v323()
		if library.Global3DRenderMode then
			if v295.BackgroundTransparency > 0.9 then
				v295.Visible = false
				v295.Parent = nil
			else
				v295.Visible = true
				library:_Animation(
					v295,
					TweenInfo.new(0.5, Enum.EasingStyle.Quint),
					{ Position = UDim2.fromScale(0.5, 0.5) }
				)
				v295.Parent = v308
			end
		elseif v295.BackgroundTransparency > 0.9 then
			v295.Visible = false
			v295.Parent = nil
		else
			v295.Visible = true
			v295.Parent = library["items"]
		end
	end
	v295:GetPropertyChangedSignal("BackgroundTransparency"):Connect(v323)
	library._Set3DRender = function(v596)
		library.Global3DRenderMode = v596
		if v596 then
			v297.Parent = library.ArcylicParent or workspace
			library._Load3DBlock()
		else
			v297.Parent = nil
		end
		v323()
	end
end
library.option_window = function(v325, v326)
	local v327 = { items = {}, Signal = library:CreateSignal(false), open = false, _registry = {} }
	local v328 = library:create(
		"Frame",
		{
			Parent = library["items"],
			Name = "\0",
			AnchorPoint = v14(0, 1),
			BackgroundColor3 = v25(20, 22, 27),
			BackgroundTransparency = 0.035,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			Position = v16(255, 255, 255, 255),
			Size = v16(0, 220, 0, 0),
			ZIndex = 50,
			Visible = false,
		}
	)
	library:create("UICorner", { Parent = v328, CornerRadius = v17(0, 10) })
	local v329 = library:create(
		"UIListLayout",
		{ Parent = v328, HorizontalAlignment = Enum.HorizontalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder }
	)
	library:create("UIStroke", { Parent = v328, Transparency = 0.65, Color = v25(45, 48, 58) })
	local v330 = library:_CreateShadow(v328)
	library:connection(v329:GetPropertyChangedSignal("AbsoluteContentSize"), function()
		library:tween(v328, { Size = v16(0, 220, 0, v329.AbsoluteContentSize.Y - 1) }, Enum.EasingStyle.Quint, 0.175)
	end)
	local v331
	local function v332()
		local v598 = v326.AbsolutePosition
		local v599 = v326.AbsoluteSize
		if library.Global3DRenderMode and library.GlobalSurfaceGui then
			local v1204 = library.GlobalSurfaceGui
			local v1205 = workspace.CurrentCamera.ViewportSize
			local v1206 = v1204.CanvasSize
			local v1207 = v1206.X / v1205.X
			local v1208 = v1206.Y / v1205.Y
			v328.AnchorPoint = v14(0, 1)
			v328.Position = v23((v598.X + 18) * v1207, ((v598.Y + v599.Y) - 10) * v1208)
		else
			v328.AnchorPoint = v14(0, 1)
			v328.Position = v23(v598.X + 18, (v598.Y + v599.Y) - 10)
		end
	end
	v327.SetRender = function(v600)
		if v331 then
			task.cancel(v331)
			v331 = nil
		end
		if v600 then
			local v1213 = (library.Global3DRenderMode and library.GlobalSurfaceGui) or library["items"]
			if not v1213 or not v1213.Parent then
				v327.open = false
				return
			end
			if library.Global3DRenderMode and library.GlobalSurfaceGui then
				v328.Parent = library.GlobalSurfaceGui
			else
				v328.Parent = library["items"]
			end
			v328.Visible = true
			v332()
			v328.BackgroundTransparency = 1
			library:tween(v328, { BackgroundTransparency = 0.035 }, Enum.EasingStyle.Quint, 0.175)
			v330:Render(true)
			v331 = task.spawn(function()
				while task.wait() do
					if not v327.open then
						break
					end
					if library.Global3DRenderMode and (v328.Parent ~= library.GlobalSurfaceGui) then
						v328.Parent = library.GlobalSurfaceGui
					elseif not library.Global3DRenderMode and (v328.Parent ~= library["items"]) then
						v328.Parent = library["items"]
					end
					v332()
				end
			end)
		else
			library:tween(v328, { BackgroundTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			v330:Render(false)
			task.delay(0.175, function()
				if not v327.open then
					v328.Visible = false
				end
			end)
		end
	end
	v327.ApplyFlags = function(v601)
		for v995, v996 in ipairs(v327._registry) do
			if v996.flag and (library.flags[v996.flag] ~= nil) then
				pcall(v996.apply, library.flags[v996.flag])
			end
		end
	end
	v327.Signal:Connect(v327.SetRender)
	v327.SetRender(false)
	local v335 = v328.ZIndex
	v327.label = function(v602, v603)
		v603 = v603 or {}
		local v604 = v603.name or v603.Name or "Label"
		local v605 = { items = {} }
		local v606 = library:create(
			"Frame",
			{
				Parent = v328,
				Name = "\0",
				BackgroundColor3 = v25(25, 27, 33),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = v16(1, 0, 0, 30),
				ZIndex = v335 + 8,
			}
		)
		library:create("UICorner", { Parent = v606, CornerRadius = v17(0, 10) })
		local v607 = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				Parent = v606,
				Name = "\0",
				Position = v16(0, 11, 0, 6),
				Size = v16(0, 1, 0, 15),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = v25(255, 255, 255),
				TextTransparency = 0.35,
				TextSize = 13,
				BorderSizePixel = 0,
				Text = v604,
				AutomaticSize = Enum.AutomaticSize.X,
				ZIndex = v335 + 9,
			}
		)
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0.5, 1),
				Parent = v606,
				Name = "\0",
				Position = v16(0.5, 0, 1, 0),
				Size = v16(1, -20, 0, 1),
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
				BorderSizePixel = 0,
				ZIndex = v335 + 11,
			}
		)
		local v608 = library:create(
			"Frame",
			{
				AnchorPoint = v14(1, 0),
				Parent = v606,
				Name = "\0",
				Position = v16(1, -11, 0, 2),
				Size = v16(1, -20, 0, 25),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = v335 + 12,
			}
		)
		library:create(
			"UIListLayout",
			{
				Parent = v608,
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = v17(0, 5),
			}
		)
		v606.MouseEnter:Connect(function()
			library:tween(v606, { BackgroundTransparency = 0.35 })
			library:tween(v607, { TextTransparency = 0.25 })
		end)
		v606.MouseLeave:Connect(function()
			library:tween(v606, { BackgroundTransparency = 1 })
			library:tween(v607, { TextTransparency = 0.35 })
		end)
		v605.Root = v606
		v605.items = { elements = v606, right_components = v608 }
		v605.toggle = function(v997, v998)
			v998 = v998 or {}
			local v999 = {
				default = v998.default or v998.Default or false,
				callback = v998.callback or v998.Callback or function() end,
				enabled = v998.default or v998.Default or false,
				flag = v998.flag or v998.Flag or library:next_flag(),
			}
			v58[v999.flag] = v999.enabled
			local v1002 = library:create(
				"TextButton",
				{
					FontFace = v61.font,
					Parent = v608,
					Name = "\0",
					Size = v16(0, 36, 0, 18),
					AutoButtonColor = false,
					BackgroundColor3 = v25(10, 13, 21),
					BorderSizePixel = 0,
					Text = "",
					ZIndex = v335 + 13,
				}
			)
			library:create("UICorner", { Parent = v1002, CornerRadius = v17(0, 999) })
			local v1003 = library:create(
				"Frame",
				{
					Parent = v1002,
					Size = v16(1, -2, 1, -2),
					Position = v16(0, 1, 0, 1),
					BackgroundColor3 = v25(10, 13, 21),
					BorderSizePixel = 0,
					ZIndex = v335 + 13,
				}
			)
			library:create("UICorner", { Parent = v1003, CornerRadius = v17(0, 999) })
			library:create(
				"UIGradient",
				{ Color = v28({ v29(0, v25(211, 211, 211)), v29(1, v25(211, 211, 211)) }), Parent = v1003 }
			)
			local v1004 = library:create(
				"Frame",
				{
					Parent = v1003,
					Name = "\0",
					Position = v16(0, 2, 0, 2),
					Size = v16(0, 12, 0, 12),
					BackgroundColor3 = v25(86, 86, 88),
					BackgroundTransparency = 0.5,
					BorderSizePixel = 0,
					ZIndex = v335 + 14,
				}
			)
			library:create("UICorner", { Parent = v1004, CornerRadius = v17(0, 999) })
			local function v1005(v1216)
				library:tween(
					v1002,
					{ BackgroundColor3 = (v1216 and v55.preset.accent) or v25(10, 13, 21) },
					Enum.EasingStyle.Quad
				)
				library:tween(
					v1003,
					{ BackgroundColor3 = (v1216 and v55.preset.accent) or v25(10, 13, 21) },
					Enum.EasingStyle.Quad
				)
				library:tween(
					v1004,
					{
						BackgroundColor3 = v25(255, 255, 255),
						BackgroundTransparency = (v1216 and 0) or 0.5,
						Position = (v1216 and v16(1, -14, 0, 2)) or v16(0, 2, 0, 2),
					},
					Enum.EasingStyle.Quad
				)
			end
			v1005(v999.enabled)
			v1002.MouseButton1Click:Connect(function()
				v999.enabled = not v999.enabled
				v1005(v999.enabled)
				v58[v999.flag] = v999.enabled
				v999.callback(v999.enabled)
			end)
			v605.set = function(v1219, v1220)
				v999.enabled = v1220
				v1005(v1220)
				v58[v999.flag] = v1220
				v999.callback(v1220)
			end
			v605.get = function(v1223)
				return v999.enabled
			end
			v59[v999.flag] = function(v1224)
				v605:set(v1224)
			end
			table.insert(v327._registry, {
				flag = v999.flag,
				apply = function(v1225)
					v605:set(v1225)
				end,
			})
			return v605
		end
		v605.slider = function(v1009, v1010)
			v1010 = v1010 or {}
			local v1011 = v1010.min or v1010.Min or 0
			local v1012 = v1010.max or v1010.Max or 100
			local v1013 = v1010.default or v1010.Default or v1011
			local v1014 = v1010.suffix or v1010.Type or ""
			local v1015 = v1010.rounding or v1010.Rounding or 0
			local v1016 = v1010.callback or v1010.Callback or function() end
			local v1017 = v1010.flag or v1010.Flag or library:next_flag()
			local v1018 = v1013
			v58[v1017] = v1018
			local v1020 = library:create(
				"Frame",
				{
					Parent = v608,
					Name = "\0",
					Size = v16(0, v1010.size or v1010.Size or 125, 0, 18),
					BackgroundColor3 = v25(26, 28, 36),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					ZIndex = v335 + 13,
				}
			)
			library:create("UICorner", { Parent = v1020, CornerRadius = v17(0, 4) })
			local v1021 = library:create(
				"Frame",
				{
					AnchorPoint = v14(1, 0),
					Parent = v1020,
					Position = v16(1, 0, 0, 0),
					Size = v16(0, 45, 0, 18),
					BackgroundColor3 = v25(26, 28, 36),
					BorderSizePixel = 0,
					ClipsDescendants = true,
					ZIndex = v335 + 13,
				}
			)
			library:create("UICorner", { Parent = v1021, CornerRadius = v17(0, 4) })
			library:create("UIStroke", { Parent = v1021, Transparency = 0.65, Color = v25(45, 48, 58) })
			local v1022 = library:create(
				"TextLabel",
				{
					FontFace = v61.small,
					Parent = v1021,
					AnchorPoint = v14(0.5, 0.5),
					Position = v16(0.5, 0, 0.5, 0),
					Size = v16(1, 0, 1, 0),
					BackgroundTransparency = 1,
					TextColor3 = v25(255, 255, 255),
					TextTransparency = 0.35,
					TextSize = 10,
					Text = tostring(v1013) .. v1014,
					ZIndex = v335 + 14,
				}
			)
			local v1023 = library:create(
				"Frame",
				{
					AnchorPoint = v14(0, 0.5),
					Parent = v1020,
					Position = v16(0, 0, 0.5, 0),
					Size = v16(1, -56, 0, 18),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ZIndex = v335 + 13,
				}
			)
			local v1024 = library:create(
				"Frame",
				{
					AnchorPoint = v14(0, 0.5),
					Parent = v1023,
					Position = v16(0, 0, 0.5, 0),
					Size = v16(1, 0, 0, 5),
					BackgroundColor3 = v25(30, 29, 36),
					BorderSizePixel = 0,
					ZIndex = v335 + 13,
				}
			)
			library:create("UICorner", { Parent = v1024, CornerRadius = v17(0, 999) })
			local v1025 = library:create(
				"Frame",
				{
					Parent = v1024,
					Size = v16((v1013 - v1011) / (v1012 - v1011), 0, 1, 0),
					BackgroundColor3 = v55.preset.accent,
					BorderSizePixel = 0,
					ZIndex = v335 + 14,
				}
			)
			library:create("UICorner", { Parent = v1025, CornerRadius = v17(0, 999) })
			local v1026 = library:create(
				"Frame",
				{
					AnchorPoint = v14(1, 0.5),
					Parent = v1025,
					Position = v16(1, 5, 0.5, 0),
					Size = v16(0, 10, 0, 10),
					BackgroundColor3 = v25(255, 255, 255),
					BorderSizePixel = 0,
					ZIndex = v335 + 15,
				}
			)
			library:create("UICorner", { Parent = v1026, CornerRadius = v17(0, 999) })
			local v1027 = false
			local function v1028(v1226)
				local v1227 = v48((v1226.Position.X - v1023.AbsolutePosition.X) / v1023.AbsoluteSize.X, 0, 1)
				local v1228 = ((v1012 - v1011) * v1227) + v1011
				local v1229 = 10 ^ v1015
				v1018 = v37((v1228 * v1229) + 0.5) / v1229
				v1018 = v48(v1018, v1011, v1012)
				library:tween(
					v1025,
					{ Size = v16((v1018 - v1011) / (v1012 - v1011), 0, 1, 0) },
					Enum.EasingStyle.Linear,
					0.05
				)
				v1022.Text = tostring(v1018) .. v1014
				v58[v1017] = v1018
				v1016(v1018)
			end
			v605.set = function(v1232, v1233)
				v1018 = v48(v1233, v1011, v1012)
				library:tween(
					v1025,
					{ Size = v16((v1018 - v1011) / (v1012 - v1011), 0, 1, 0) },
					Enum.EasingStyle.Linear,
					0.05
				)
				v1022.Text = tostring(v1018) .. v1014
				v58[v1017] = v1018
				v1016(v1018)
			end
			v605.get = function(v1236)
				return v1018
			end
			v1023.InputBegan:Connect(function(v1237)
				if v1237.UserInputType == Enum.UserInputType.MouseButton1 then
					v1027 = true
					v1028(v1237)
				end
			end)
			v1023.InputEnded:Connect(function(v1238)
				if v1238.UserInputType == Enum.UserInputType.MouseButton1 then
					v1027 = false
				end
			end)
			v1.InputChanged:Connect(function(v1239)
				if v1027 and (v1239.UserInputType == Enum.UserInputType.MouseMovement) then
					v1028(v1239)
				end
			end)
			v59[v1017] = function(v1240)
				v605:set(v1240)
			end
			table.insert(v327._registry, {
				flag = v1017,
				apply = function(v1241)
					v605:set(v1241)
				end,
			})
			return v605
		end
		v605.dropdown = function(v1032, v1033)
			v1033 = v1033 or {}
			local v1034 = v1033.values or v1033.items or v1033.Values or {}
			local v1035 = v1033.default or v1033.Default or nil
			local v1036 = v1033.callback or v1033.Callback or function() end
			local v1037 = v1033.flag or v1033.Flag or library:next_flag()
			local v1038 = v1035
			v58[v1037] = v1038
			local v1040 = library:create(
				"Frame",
				{
					Parent = v608,
					Name = "\0",
					Size = v16(0, v1033.size or v1033.Size or 100, 0, 18),
					BackgroundColor3 = v25(26, 28, 36),
					BorderSizePixel = 0,
					ClipsDescendants = true,
					ZIndex = v335 + 13,
				}
			)
			library:create("UICorner", { Parent = v1040, CornerRadius = v17(0, 4) })
			library:create("UIStroke", { Parent = v1040, Transparency = 0.65, Color = v25(45, 48, 58) })
			local v1041 = library:create(
				"TextLabel",
				{
					FontFace = library.BuiltInBold,
					AnchorPoint = v14(1, 0.5),
					Parent = v1040,
					Position = v16(1, -2, 0.5, 0),
					Size = v16(0, 18, 0, 18),
					BackgroundTransparency = 1,
					TextColor3 = v25(223, 223, 223),
					TextTransparency = 0.25,
					TextSize = 16,
					Text = "chevron-small-down",
					TextWrapped = true,
					BorderSizePixel = 0,
					ZIndex = v335 + 14,
				}
			)
			local v1042 = library:create(
				"TextLabel",
				{
					FontFace = v61.small,
					AnchorPoint = v14(0, 0.5),
					Parent = v1040,
					Position = v16(0, 5, 0.5, 0),
					Size = v16(1, -25, 0, 15),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor3 = v25(255, 255, 255),
					TextTransparency = 0.5,
					TextSize = 12,
					Text = tostring(v1035 or "Select"),
					BorderSizePixel = 0,
					ClipsDescendants = true,
					ZIndex = v335 + 14,
				}
			)
			local v1043 = false
			local v1044 = nil
			local v1045 = nil
			local function v1046()
				v1043 = false
				library:tween(v1041, { Rotation = 0 }, Enum.EasingStyle.Quint, 0.175)
				if v1044 then
					library:tween(v1044, { BackgroundTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
					task.delay(0.2, function()
						if v1044 then
							v1044:Destroy()
							v1044 = nil
						end
					end)
				end
				if v1045 then
					v1045:Disconnect()
					v1045 = nil
				end
			end
			local function v1047()
				v1043 = true
				library:tween(v1041, { Rotation = 180 }, Enum.EasingStyle.Quint, 0.175)
				v1044 = library:create(
					"Frame",
					{
						Parent = library["items"],
						Name = "\0",
						BackgroundColor3 = v25(20, 22, 27),
						BackgroundTransparency = 0.035,
						BorderSizePixel = 0,
						ClipsDescendants = true,
						Size = v16(0, v1040.AbsoluteSize.X + 5, 0, 0),
						ZIndex = 200,
					}
				)
				library:create("UICorner", { Parent = v1044, CornerRadius = v17(0, 10) })
				library:create("UIStroke", { Parent = v1044, Transparency = 0.65, Color = v25(45, 48, 58) })
				local v1242 = library:create(
					"UIListLayout",
					{
						Parent = v1044,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}
				)
				local v1243 = library:_CreateShadow(v1044)
				for v1370, v1371 in v1034 do
					local v1372 = library:create(
						"Frame",
						{
							Parent = v1044,
							Name = "\0",
							BackgroundColor3 = v25(29, 31, 38),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Size = v16(1, 0, 0, 25),
							ZIndex = 201,
						}
					)
					library:create("UICorner", { Parent = v1372, CornerRadius = v17(0, 10) })
					local v1373 = library:create(
						"TextLabel",
						{
							FontFace = v61.small,
							Parent = v1372,
							Position = v16(0, 15, 0, 4),
							Size = v16(1, -20, 0, 15),
							BackgroundTransparency = 1,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = ((v1371 == v1038) and v55.preset.accent) or v25(255, 255, 255),
							TextTransparency = ((v1371 == v1038) and 0.2) or 0.5,
							TextSize = 13,
							Text = tostring(v1371),
							BorderSizePixel = 0,
							ZIndex = 202,
						}
					)
					local v1374 = library:create(
						"ImageButton",
						{ Parent = v1372, Size = v16(1, 0, 1, 0), BackgroundTransparency = 1, ImageTransparency = 1, ZIndex = 203 }
					)
					v1374.MouseEnter:Connect(function()
						library:tween(v1372, { BackgroundTransparency = 0.1 })
					end)
					v1374.MouseLeave:Connect(function()
						library:tween(v1372, { BackgroundTransparency = 1 })
					end)
					v1374.MouseButton1Click:Connect(function()
						v1038 = v1371
						v1042.Text = tostring(v1371)
						v58[v1037] = v1371
						for v1455, v1456 in v1044:GetChildren() do
							if v1456:IsA("Frame") then
								local v1487 = v1456:FindFirstChildOfClass("TextLabel")
								if v1487 then
									if v1487.Text == tostring(v1371) then
										library:tween(v1487, { TextColor3 = v55.preset.accent, TextTransparency = 0.2 })
									else
										library:tween(
											v1487,
											{ TextColor3 = v25(255, 255, 255), TextTransparency = 0.5 }
										)
									end
								end
							end
						end
						v1036(v1371)
						v1046()
					end)
				end
				library:connection(v1242:GetPropertyChangedSignal("AbsoluteContentSize"), function()
					v1044.Size = v16(0, v1040.AbsoluteSize.X + 5, 0, v1242.AbsoluteContentSize.Y)
				end)
				local function v1244()
					if not v1044 then
						return
					end
					local v1376 = v1040.AbsolutePosition
					local v1377 = v1040.AbsoluteSize
					local v1378 = v1242.AbsoluteContentSize.Y
					local v1379 = library["items"].AbsolutePosition
					v1044.Position = v23(v1376.X - v1379.X, ((v1376.Y - v1379.Y) - v1378) - 4)
				end
				task.defer(function()
					v1244()
					v1243:Render(true)
				end)
				v1045 = v1.InputBegan:Connect(function(v1381)
					if v1381.UserInputType ~= Enum.UserInputType.MouseButton1 then
						return
					end
					if not v1043 then
						return
					end
					task.defer(function()
						if library:mouse_in_frame(v1044) then
							return
						end
						if library:mouse_in_frame(v1040) then
							return
						end
						v1046()
					end)
				end)
			end
			local v1048 = library:create(
				"ImageButton",
				{ Parent = v1040, Size = v16(1, 0, 1, 0), BackgroundTransparency = 1, ImageTransparency = 1, ZIndex = v335
					+ 15 }
			)
			v1048.MouseButton1Click:Connect(function()
				if v1043 then
					v1046()
				else
					v1047()
				end
			end)
			v605.set = function(v1245, v1246)
				v1038 = v1246
				v1042.Text = tostring(v1246)
				v58[v1037] = v1246
				v1036(v1246)
			end
			v605.get = function(v1249)
				return v1038
			end
			v59[v1037] = function(v1250)
				v605:set(v1250)
			end
			table.insert(v327._registry, {
				flag = v1037,
				apply = function(v1251)
					v605:set(v1251)
				end,
			})
			return v605
		end
		v605.keybind = function(v1052, v1053)
			v1053 = v1053 or {}
			local v1054 = v1053.default or v1053.Default or v1053.key or v1053.Key or nil
			local v1055 = v1053.callback or v1053.Callback or function() end
			local v1056 = v1053.flag or v1053.Flag or library:next_flag()
			local v1057 = false
			local function v1058(v1252)
				if not v1252 then
					return nil
				end
				if typeof(v1252) == "EnumItem" then
					return v1252
				end
				if typeof(v1252) == "string" then
					local v1424, v1425 = pcall(function()
						return Enum.KeyCode[v1252]
					end)
					if v1424 and v1425 then
						return v1425
					end
					return v1252
				end
				return nil
			end
			local v1059 = v1058(v1054)
			v58[v1056] = v1059
			local function v1061(v1253)
				if not v1253 then
					return "NONE"
				end
				if typeof(v1253) == "EnumItem" then
					return v1253.Name
				end
				if typeof(v1253) == "string" then
					return v1253
				end
				return "NONE"
			end
			local v1062 = library:create(
				"Frame",
				{
					Parent = v608,
					Name = "\0",
					Size = v16(0, 45, 0, 18),
					BackgroundColor3 = v25(26, 28, 36),
					BorderSizePixel = 0,
					ClipsDescendants = true,
					ZIndex = v335 + 13,
				}
			)
			library:create("UICorner", { Parent = v1062, CornerRadius = v17(0, 4) })
			library:create("UIStroke", { Parent = v1062, Transparency = 0.65, Color = v25(45, 48, 58) })
			local v1063 = library:create(
				"TextLabel",
				{
					FontFace = v61.small,
					AnchorPoint = v14(0.5, 0.5),
					Parent = v1062,
					Position = v16(0.5, 0, 0.5, 0),
					Size = v16(1, 0, 1, 0),
					BackgroundTransparency = 1,
					TextColor3 = v25(255, 255, 255),
					TextTransparency = 0.5,
					TextSize = 10,
					BorderSizePixel = 0,
					ZIndex = v335 + 14,
				}
			)
			local function v1064()
				local v1254 = game:GetService("TextService")
				local v1255 =
					v1254:GetTextSize(v1063.Text, v1063.TextSize, Enum.Font.GothamMedium, v14(math.huge, math.huge))
				library:tween(
					v1062,
					{ Size = v16(0, math.max(v1255.X + 14, 35), 0, 18) },
					Enum.EasingStyle.Quint,
					0.175
				)
			end
			v1063.Text = v1061(v1059)
			v1064()
			local v1066
			local function v1067()
				v1057 = false
				if v1066 then
					v1066:Disconnect()
					v1066 = nil
				end
			end
			v1062.InputBegan:Connect(function(v1256)
				if v1256.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end
				if v1057 then
					v1067()
					v1063.Text = v1061(v1059)
					v1064()
					return
				end
				v1057 = true
				v1063.Text = "..."
				v1064()
				task.delay(0.1, function()
					if not v1057 then
						return
					end
					v1066 = v1.InputBegan:Connect(function(v1427, v1428)
						if not v1057 then
							return
						end
						if v1428 then
							return
						end
						local v1429
						if v1427.UserInputType == Enum.UserInputType.Keyboard then
							if v1427.KeyCode == Enum.KeyCode.Escape then
								v1067()
								v1063.Text = v1061(v1059)
								v1064()
								return
							end
							if v1427.KeyCode ~= Enum.KeyCode.Unknown then
								v1429 = v1427.KeyCode
							end
						elseif v1427.UserInputType == Enum.UserInputType.MouseButton1 then
							v1429 = "MB1"
						elseif v1427.UserInputType == Enum.UserInputType.MouseButton2 then
							v1429 = "MB2"
						end
						if not v1429 then
							return
						end
						v1067()
						v1059 = v1429
						v58[v1056] = v1429
						v1063.Text = v1061(v1429)
						v1064()
						v1055(v1429)
					end)
				end)
			end)
			v605.set = function(v1258, v1259)
				v1067()
				v1059 = v1259
				v58[v1056] = v1259
				v1063.Text = v1061(v1259)
				v1064()
				v1055(v1259)
			end
			v605.get = function(v1262)
				return v1059
			end
			v59[v1056] = function(v1263)
				v605:set(v1263)
				v1055(v1263)
			end
			table.insert(v327._registry, {
				flag = v1056,
				apply = function(v1264)
					v605:set(v1264)
					v1055(v1264)
				end,
			})
			return v605
		end
		return v605
	end
	v327.button = function(v615, v616)
		v616 = v616 or {}
		local v617 = v616.name or v616.Name or "Button"
		local v618 = v616.icon or v616.Icon or "chevron-large-left"
		local v619 = v616.callback or v616.Callback or function() end
		local v620 = library:create(
			"Frame",
			{
				Parent = v328,
				Name = "\0",
				BackgroundColor3 = v25(25, 27, 33),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = v16(1, 0, 0, 30),
				ZIndex = v335 + 8,
			}
		)
		library:create("UICorner", { Parent = v620, CornerRadius = v17(0, 10) })
		library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				Parent = v620,
				Name = "\0",
				Position = v16(0, 35, 0, 6),
				Size = v16(0, 1, 0, 15),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = v25(255, 255, 255),
				TextTransparency = 0.2,
				TextSize = 13,
				BorderSizePixel = 0,
				Text = v617,
				AutomaticSize = Enum.AutomaticSize.X,
				ZIndex = v335 + 9,
			}
		)
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0.5, 1),
				Parent = v620,
				Name = "\0",
				Position = v16(0.5, 0, 1, 0),
				Size = v16(1, -20, 0, 1),
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
				BorderSizePixel = 0,
				ZIndex = v335 + 11,
			}
		)
		library:create(
			"TextLabel",
			{
				FontFace = library.BuiltInBold,
				Parent = v620,
				Name = "\0",
				Position = v16(0, 11, 0, 5),
				Size = v16(0, 18, 0, 18),
				BackgroundTransparency = 1,
				TextColor3 = v25(223, 223, 223),
				TextTransparency = 0.25,
				TextSize = 16,
				Text = v618,
				TextWrapped = true,
				BorderSizePixel = 0,
				ZIndex = v335 + 9,
			}
		)
		local v621 = library:create(
			"ImageButton",
			{ Parent = v620, Size = v16(1, 0, 1, 0), BackgroundTransparency = 1, ImageTransparency = 1, ZIndex = v335
				+ 10 }
		)
		v621.MouseEnter:Connect(function()
			library:tween(v620, { BackgroundTransparency = 0.35 })
		end)
		v621.MouseLeave:Connect(function()
			library:tween(v620, { BackgroundTransparency = 1 })
		end)
		v621.MouseButton1Click:Connect(v619)
		return v327
	end
	v327.user_frame = function(v622, v623, v624, v625)
		local v626 = library:create(
			"Frame",
			{
				Parent = v328,
				Name = "\0",
				BackgroundColor3 = v25(25, 27, 33),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = v16(1, 0, 0, 60),
				ZIndex = v335 + 8,
			}
		)
		library:create("UICorner", { Parent = v626, CornerRadius = v17(0, 10) })
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0.5, 1),
				Parent = v626,
				Name = "\0",
				Position = v16(0.5, 0, 1, 0),
				Size = v16(1, -20, 0, 1),
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
				BorderSizePixel = 0,
				ZIndex = v335 + 11,
			}
		)
		local v627 = library:create(
			"ImageLabel",
			{
				AnchorPoint = v14(0, 0.5),
				Parent = v626,
				Name = "\0",
				Position = v16(0, 10, 0.5, 0),
				Size = v16(0, 45, 0, 45),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				Image = v624 or "",
				ZIndex = v335 + 9,
			}
		)
		library:create("UICorner", { Parent = v627, CornerRadius = v17(0, 999) })
		local v628 = library:create(
			"TextLabel",
			{
				FontFace = Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Bold,
					Enum.FontStyle.Normal
				),
				Parent = v626,
				Name = "\0",
				Position = v16(0, 65, 0, 10),
				Size = v16(1, -35, 0, 15),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = v25(255, 255, 255),
				TextTransparency = 0.2,
				TextSize = 13,
				Text = v623 or v33.DisplayName,
				TextTruncate = Enum.TextTruncate.SplitWord,
				ZIndex = v335 + 9,
			}
		)
		local v629 = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				Parent = v626,
				Name = "\0",
				Position = v16(0, 65, 0, 28),
				Size = v16(1, -35, 0, 15),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = v25(255, 255, 255),
				TextTransparency = 0.65,
				TextSize = 11,
				Text = v625 or "never",
				ZIndex = v335 + 9,
			}
		)
		local v630 = {}
		v630.set_username = function(v1071, v1072)
			v628.Text = v1072 or v33.DisplayName
		end
		v630.set_profile = function(v1074, v1075)
			v627.Image = v1075 or ""
		end
		v630.set_expires = function(v1077, v1078)
			v629.Text = v1078 or "never"
		end
		v630.SetUsername = v630.set_username
		v630.SetProfile = v630.set_profile
		v630.SetExpires = v630.set_expires
		v327.UserFrame = v630
		return v630
	end
	v327.toggle = function(v638)
		v327.open = not v327.open
		v327.SetRender(v327.open)
	end
	v327.Root = v328
	return v327
end
library.new = function(v341)
	if not v341.size then
		if library:_isMobile() then
			v341.size = library.Scales.Mobile
		else
			v341.size = library.Scales.Default
		end
	end
	local v342 = {
		suffix = v341.suffix or v341.Suffix or "roni",
		name = v341.name or v341.Name or "hub",
		game_name = v341.gameInfo or v341.game_info or v341.GameInfo or "Milenium for Counter-Strike: Global Offensive",
		size = v341.size or v341.Size or v16(0, 640, 0, 480),
		other_info = v341.other_info or v341.OtherInfo or v341.otherinfo,
		selected_tab,
		items = {},
		Signal = library:CreateSignal(true),
		tween,
	}
	local v343
	library["items"] = library:create(
		"ScreenGui",
		{ Parent = v10, Name = "\0", Enabled = true, ZIndexBehavior = Enum.ZIndexBehavior.Global, IgnoreGuiInset = true }
	)
	library["other"] = library:create(
		"ScreenGui",
		{ Parent = v10, Name = "\0", Enabled = false, ZIndexBehavior = Enum.ZIndexBehavior.Global, IgnoreGuiInset = true }
	)
	local v346 = v342.items
	do
		v346["main"] = library:create(
			"Frame",
			{
				Parent = library["items"],
				Size = v342.size,
				Name = "\0",
				Position = v16(0.5, 0, 0.5, 0),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(8, 8, 13),
				AnchorPoint = v14(0.5, 0.5),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Active = true,
			}
		)
		v346["main"]:GetPropertyChangedSignal("BackgroundTransparency"):Connect(function()
			if v346["main"].BackgroundTransparency >= 1 then
				v346["main"].Visible = false
				v346["main"].Parent = nil
			else
				v346["main"].Visible = true
				v346["main"].Parent = library["items"]
			end
		end)
		v346["ui_scale"] = library:create("UIScale", { Parent = v346["main"], Scale = 1 })
		library:create("UICorner", { Parent = v346["main"], CornerRadius = v17(0, 10) })
		v346["side_frame"] = library:create(
			"Frame",
			{
				Parent = v346["main"],
				BackgroundTransparency = 1,
				Name = "\0",
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 175, 1, -25),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(14, 14, 16),
			}
		)
		library:create(
			"Frame",
			{
				AnchorPoint = v14(1, 0),
				Parent = v346["side_frame"],
				Position = v16(1, 0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 1, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
			}
		)
		v346["button_holder"] = library:create(
			"ScrollingFrame",
			{
				Parent = v346["side_frame"],
				Name = "\0",
				BackgroundTransparency = 1,
				Position = v16(0, 0, 0, 60),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 1, -110),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
				ScrollBarThickness = 2,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				CanvasSize = v16(0, 0, 0, 0),
				ScrollBarImageColor3 = v25(45, 48, 58),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
			}
		)
		local v644 = library:create(
			"UIListLayout",
			{ Parent = v346["button_holder"], Padding = v17(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }
		)
		library:create(
			"UIPadding",
			{
				PaddingTop = v17(0, 16),
				PaddingBottom = v17(0, 8),
				Parent = v346["button_holder"],
				PaddingRight = v17(0, 5),
				PaddingLeft = v17(0, 5),
			}
		)
		v346["button_holder"]:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
			local v1080 = v644.AbsoluteContentSize.Y + 24
			v346["button_holder"].ScrollingEnabled = v1080 > v346["button_holder"].AbsoluteSize.Y
		end)
		v644:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
			local v1082 = v644.AbsoluteContentSize.Y + 24
			v346["button_holder"].ScrollingEnabled = v1082 > v346["button_holder"].AbsoluteSize.Y
		end)
		local v645 = v55.preset.accent
		v346["title_container"] = library:create(
			"Frame",
			{ Parent = v346["side_frame"], Name = "\0", BackgroundTransparency = 1, Size = v16(1, 0, 0, 56), Position = v16(
				0,
				0,
				0,
				0
			) }
		)
		local v647 = library:_geticon(v341.logo or v341.Logo or "triangle")
		v346["logo"] = library:create(
			"ImageLabel",
			{
				Parent = v346["title_container"],
				Name = "\0",
				AnchorPoint = v14(0, 0.5),
				Position = v16(0, 10, 0.5, 0),
				Size = v16(0, 35, 0, 35),
				BackgroundTransparency = 1,
				Image = v341.logo or v341.Logo or v647 or "rbxassetid://95938257908268",
				ImageColor3 = v55.preset.accent,
			}
		)
		library:apply_theme(v346["logo"], "accent", "ImageColor3")
		v346["text_container"] = library:create(
			"Frame",
			{
				Parent = v346["title_container"],
				Name = "\0",
				BackgroundTransparency = 1,
				AnchorPoint = v14(0, 0.5),
				Position = v16(0, 55, 0.5, 0),
				Size = v16(1, -66, 0, 36),
			}
		)
		library:create(
			"UIListLayout",
			{
				Parent = v346["text_container"],
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = v17(0, 2),
			}
		)
		v346["title"] = library:create(
			"TextLabel",
			{
				Parent = v346["text_container"],
				Name = "\0",
				FontFace = Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Bold,
					Enum.FontStyle.Normal
				),
				Text = string.format("%s %s", string.upper(v342.name), string.upper(v342.suffix)),
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextColor3 = v25(255, 255, 255),
				BorderSizePixel = 0,
				TextSize = 18,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 1,
				RichText = true,
			}
		)
		v346["subtitle"] = library:create(
			"TextLabel",
			{
				Parent = v346["text_container"],
				Name = "\0",
				FontFace = v61.small,
				Text = v342.game_name or "",
				BackgroundTransparency = 1,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextColor3 = v25(120, 120, 120),
				BorderSizePixel = 0,
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				LayoutOrder = 2,
			}
		)
		v346["title_separator"] = library:create(
			"Frame",
			{
				Parent = v346["title_container"],
				AnchorPoint = v14(0, 1),
				Position = v16(0, 0, 1, 0),
				Size = v16(1, 0, 0, 1),
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.64,
				BorderSizePixel = 0,
				BorderColor3 = v25(0, 0, 0),
				Name = "\0",
			}
		)
		v346["bottom_frame"] = library:create(
			"TextButton",
			{
				AnchorPoint = v14(0, 1),
				Parent = v346["side_frame"],
				Name = "\0",
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 0, 50),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
				BackgroundTransparency = 1,
				ZIndex = 7,
				Text = "",
				AutoButtonColor = false,
			}
		)
		v343 = library:option_window(v346["bottom_frame"])
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0.5, 0),
				Parent = v346["bottom_frame"],
				Name = "\0",
				Position = v16(0.5, 0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -10, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
				ZIndex = 5,
			}
		)
		v346["account_profile"] = library:create(
			"ImageLabel",
			{
				AnchorPoint = v14(0, 0.5),
				Parent = v346["bottom_frame"],
				Name = "\0",
				Position = v16(0, 10, 0.5, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 35, 0, 35),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				BackgroundColor3 = v25(255, 255, 255),
				ZIndex = 7,
				Image = "",
			}
		)
		library:create("UICorner", { Parent = v346["account_profile"], CornerRadius = v17(0, 999) })
		v346["account_name"] = library:create(
			"TextLabel",
			{
				FontFace = Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Bold,
					Enum.FontStyle.Normal
				),
				Parent = v346["bottom_frame"],
				Name = "\0",
				Position = v16(0, 55, 0, 5),
				Size = v16(0, 100, 0, 25),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				BackgroundColor3 = v25(255, 255, 255),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = v25(255, 255, 255),
				TextSize = 14,
				Text = v33.DisplayName,
				TextTruncate = Enum.TextTruncate.SplitWord,
				ZIndex = 7,
			}
		)
		v346["account_expire"] = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				Parent = v346["bottom_frame"],
				Name = "\0",
				Position = v16(0, 55, 0, 25),
				Size = v16(0, 200, 0, 15),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				BackgroundColor3 = v25(255, 255, 255),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextColor3 = v25(255, 255, 255),
				TextTransparency = 0.65,
				TextSize = 10,
				Text = "never",
				ZIndex = 7,
			}
		)
		v346["account_chevron"] = library:create(
			"TextLabel",
			{
				FontFace = library.BuiltInBold,
				AnchorPoint = v14(1, 0.5),
				Parent = v346["bottom_frame"],
				Name = "\0",
				Position = v16(1, -7, 0.5, 0),
				Size = v16(0, 25, 0, 25),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				BackgroundColor3 = v25(255, 255, 255),
				TextColor3 = v25(255, 255, 255),
				TextTransparency = 0.5,
				TextSize = 13,
				Text = "chevron-large-right",
				TextWrapped = true,
				ZIndex = 7,
			}
		)
		v346["bottom_frame"].MouseButton1Click:Connect(function()
			v343:toggle()
		end)
		v346["bottom_frame"].MouseEnter:Connect(function()
			library:tween(v346["account_chevron"], { TextTransparency = 0.25 }, Enum.EasingStyle.Quint, 0.175)
		end)
		v346["bottom_frame"].MouseLeave:Connect(function()
			library:tween(v346["account_chevron"], { TextTransparency = 0.5 }, Enum.EasingStyle.Quint, 0.175)
		end)
		v1.InputBegan:Connect(function(v1084)
			if not v343.open then
				return
			end
			if v1084.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end
			if library:mouse_in_frame(v346["bottom_frame"]) then
				return
			end
			if library:mouse_in_frame(v343.Root) then
				return
			end
			v343.open = false
			v343.Signal:SetValue(false)
		end)
		v342.UserSettings = v343
		v346["multi_holder"] = library:create(
			"Frame",
			{
				Parent = v346["main"],
				Name = "\0",
				BackgroundTransparency = 1,
				Position = v16(0, 175, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -175, 0, 56),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v342.multi_holder = v346["multi_holder"]
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v346["multi_holder"],
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
			}
		)
		v346["global_fade"] = library:create(
			"Frame",
			{
				Parent = v346["main"],
				Name = "\0",
				BackgroundTransparency = 1,
				Position = v16(0, 175, 0, 56),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -175, 1, -81),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(14, 14, 16),
				ZIndex = 2,
			}
		)
		v346["info"] = library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v346["main"],
				Name = "\0",
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 0, 25),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(23, 23, 25),
			}
		)
		library:create("UICorner", { Parent = v346["info"], CornerRadius = v17(0, 10) })
		v346["grey_fill"] = library:create(
			"Frame",
			{
				Name = "\0",
				Parent = v346["info"],
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 0, 6),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(23, 23, 25),
			}
		)
		v346["game"] = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				Parent = v346["info"],
				TextColor3 = v25(72, 72, 73),
				BorderColor3 = v25(0, 0, 0),
				Text = v342.game_name,
				Name = "\0",
				Size = v16(1, 0, 0, 0),
				AnchorPoint = v14(0, 0.5),
				Position = v16(0, 10, 0.5, -1),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		if v342.other_info then
			v346["other_info"] = library:create(
				"TextLabel",
				{
					Parent = v346["info"],
					RichText = true,
					Name = "\0",
					TextColor3 = v55.preset.accent,
					BorderColor3 = v25(0, 0, 0),
					Text = v342.other_info,
					Size = v16(1, 0, 0, 0),
					Position = v16(0, -30, 0.5, -1),
					AnchorPoint = v14(0, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Right,
					AutomaticSize = Enum.AutomaticSize.XY,
					FontFace = v61.font,
					TextSize = 14,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
			library:apply_theme(v346["other_info"], "accent", "TextColor3")
		end
	end
	do
		library:draggify(v346["main"])
		library:resizify(v346["main"])
		library:_Init3DRender(v346["main"], v342.Signal)
		v342.Shadow = library:_CreateShadow(v346["main"])
	end
	local function v347(v666)
		if v666 then
			library:tween(
				v346["main"],
				{ BackgroundTransparency = (library.EnabledBlur and 0.055) or 0.0255, Size = v342.size },
				Enum.EasingStyle.Quint,
				0.175
			)
			library:tween(v346["logo"], { ImageTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["title"], { TextTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["subtitle"], { TextTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["title_separator"], { BackgroundTransparency = 0.64 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["info"], { BackgroundTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["grey_fill"], { BackgroundTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["game"], { TextTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_profile"], { ImageTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_name"], { TextTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_expire"], { TextTransparency = 0.65 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_chevron"], { TextTransparency = 0.5 }, Enum.EasingStyle.Quint, 0.175)
			if v346["other_info"] then
				library:tween(v346["other_info"], { TextTransparency = 0 }, Enum.EasingStyle.Quint, 0.175)
			end
			v342.Shadow:Render(true)
			v342.Signal:SetValue(true)
		else
			library:tween(
				v346["main"],
				{ BackgroundTransparency = 1, Size = v342.size + UDim2.fromOffset(-15, -15) },
				Enum.EasingStyle.Quint,
				0.175
			)
			library:tween(v346["logo"], { ImageTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["title"], { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["subtitle"], { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["title_separator"], { BackgroundTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["info"], { BackgroundTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["grey_fill"], { BackgroundTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["game"], { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_profile"], { ImageTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_name"], { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_expire"], { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			library:tween(v346["account_chevron"], { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			if v346["other_info"] then
				library:tween(v346["other_info"], { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			end
			v342.Shadow:Render(false)
			v342.Signal:SetValue(false)
		end
	end
	local v348 = false
	v342.toggle_menu = function(v667)
		if library.Global3DRenderMode and not v667 then
			return
		end
		if v667 then
			v348 = false
			v346["main"].Size = v342.size + UDim2.fromOffset(-15, -15)
			v346["main"].Parent = library["items"]
			v346["main"].Visible = true
			v347(true)
		else
			v348 = true
			if v343 and v343.open then
				v343.open = false
				v343.SetRender(false)
			end
			v347(false)
			library:close_element()
			task.delay(0.2, function()
				if v348 then
					v346["main"].Visible = false
					v346["main"].Parent = nil
				end
			end)
		end
	end
	v342.Keybind = v341.keybind or Enum.KeyCode.Insert
	v342.SetSize = function(v668, v669)
		if not v669 then
			return
		end
		v342.size = v669
		if v342.Signal:GetValue() then
			library:tween(v346["main"], { Size = v669 }, Enum.EasingStyle.Quint, 0.5)
		end
	end
	library:connection(v1.InputBegan, function(v671, v672)
		if v672 then
			return
		end
		if library.Global3DRenderMode then
			return
		end
		if
			(v671.KeyCode == v342.Keybind) or (
				(typeof(v342.Keybind) == "string") and (v671.KeyCode.Name == v342.Keybind)
			)
		then
			v342.toggle_menu(v348)
		end
	end)
	v342.Signal:Connect(function(v673)
		if not v673 then
			task.defer(function()
				if library.current_open then
					pcall(function()
						library.current_open.set_visible(false)
						library.current_open.open = false
					end)
					library.current_open = nil
				end
				if v343 and v343.open then
					v343.open = false
					v343.SetRender(false)
				end
				library.IsDropdownOpen = false
			end)
		end
	end)
	do
		local v674 = library:create(
			"ImageButton",
			{
				Name = "\0",
				Parent = library["items"],
				BackgroundTransparency = 0,
				Position = UDim2.new(0, 60, 0, 60),
				Size = UDim2.new(0, 50, 0, 50),
				Image = v341.logo or v341.Logo or v647 or "rbxassetid://97112445498288",
				ZIndex = 999,
			}
		)
		library:create("UICorner", { Parent = v674, CornerRadius = UDim.new(0, 10) })
		local v675
		local v676
		local v677
		local v678
		local function v679(v1086)
			local v1087 = v1086.Position - v677
			v674.Position = UDim2.new(v678.X.Scale, v678.X.Offset + v1087.X, v678.Y.Scale, v678.Y.Offset + v1087.Y)
		end
		v674.InputBegan:Connect(function(v1089)
			if
				(v1089.UserInputType == Enum.UserInputType.MouseButton1)
				or (v1089.UserInputType == Enum.UserInputType.Touch)
			then
				v675 = true
				v677 = v1089.Position
				v678 = v674.Position
				v1089.Changed:Connect(function()
					if v1089.UserInputState == Enum.UserInputState.End then
						v675 = false
					end
				end)
			end
		end)
		v674.InputChanged:Connect(function(v1090)
			if
				(v1090.UserInputType == Enum.UserInputType.MouseMovement)
				or (v1090.UserInputType == Enum.UserInputType.Touch)
			then
				v676 = v1090
			end
		end)
		v1.InputChanged:Connect(function(v1091)
			if (v1091 == v676) and v675 then
				v679(v1091)
			end
		end)
		local v680 = 0
		v674.MouseButton1Click:Connect(function()
			if (tick() - v680) < 0.2 then
				return
			end
			v680 = tick()
			v342.toggle_menu(v348)
		end)
	end
	v342.LoadFlags = function(v681)
		local v682 = library.flags
		if not v682 then
			return
		end
		if v682["_menu_bind"] then
			local v1270 = v682["_menu_bind"]
			if typeof(v1270) == "string" then
				local v1433, v1434 = pcall(function()
					return Enum.KeyCode[v1270]
				end)
				if v1433 and v1434 then
					v1270 = v1434
				end
			end
			v342.Keybind = v1270
		end
	end
	v346["main"].BackgroundTransparency = 1
	v346["main"].Size = v342.size + UDim2.fromOffset(-15, -15)
	v346["logo"].ImageTransparency = 1
	v346["title"].TextTransparency = 1
	v346["subtitle"].TextTransparency = 1
	v346["title_separator"].BackgroundTransparency = 1
	v346["info"].BackgroundTransparency = 1
	v346["grey_fill"].BackgroundTransparency = 1
	v346["game"].TextTransparency = 1
	v346["account_profile"].ImageTransparency = 1
	v346["account_name"].TextTransparency = 1
	v346["account_expire"].TextTransparency = 1
	v346["account_chevron"].TextTransparency = 1
	if v346["other_info"] then
		v346["other_info"].TextTransparency = 1
	end
	task.delay(0.25, function()
		v346["main"].Position = UDim2.new(0.5, 0, 0.5, 0)
		v346["main"].Parent = library["items"]
		v346["main"].Visible = true
		v347(true)
	end)
	task.spawn(function()
		local v687, v688 = pcall(function()
			return v2:GetUserThumbnailAsync(v33.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
		end)
		local v689 = (v687 and v688) or ""
		v346["account_profile"].Image = v689
	end)
	return setmetatable(v342, library)
end
library.tab = function(v366, v367)
	local v368 = {
		name = v367.name or v367.Name or "visuals",
		icon = v367.icon or v367.Icon or "http://www.roblox.com/asset/?id=6034767608",
		tabs = v367.tabs or v367.Tabs or { "Main", "Misc.", "Settings" },
		pages = {},
		current_multi,
		items = {},
	}
	local v369 = v368.items
	do
		v369["tab_holder"] = library:create(
			"Frame",
			{
				Parent = library.cache,
				Name = "\0",
				Visible = false,
				BackgroundTransparency = 1,
				Position = v16(0, 175, 0, 56),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -176, 1, -101),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v369["button"] = library:create(
			"TextButton",
			{
				FontFace = v61.font,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				Parent = v366.items["button_holder"],
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				Name = "\0",
				Size = v16(1, 0, 0, 30),
				BorderSizePixel = 0,
				TextSize = 16,
				BackgroundColor3 = v25(41, 45, 49),
			}
		)
		v369["icon"] = library:create(
			"ImageLabel",
			{
				ImageColor3 = v25(252, 252, 252),
				ImageTransparency = 0.5,
				BorderColor3 = v25(0, 0, 0),
				Parent = v369["button"],
				AnchorPoint = v14(0, 0.5),
				Image = library:_geticon(v368.icon) or "rbxassetid://101025591575185",
				BackgroundTransparency = 1,
				Position = v16(0, 10, 0.5, 0),
				Name = "\0",
				Size = v16(0, 20, 0, 20),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:apply_theme(v369["icon"], "accent", "ImageColor3")
		v369["name"] = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v368.name,
				Parent = v369["button"],
				Name = "\0",
				Size = v16(0, 0, 1, 0),
				Position = v16(0, 35, 0, 0),
				TextTransparency = 0.5,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 12,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create("UIPadding", { Parent = v369["name"], PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) })
		library:create("UICorner", { Parent = v369["button"], CornerRadius = v17(0, 7) })
		library:create(
			"UIStroke",
			{ Color = v25(23, 23, 29), Parent = v369["button"], Enabled = false, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		)
		v369["multi_section_button_holder"] = library:create(
			"ScrollingFrame",
			{
				Parent = library.cache,
				BackgroundTransparency = 1,
				Name = "\0",
				Visible = false,
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
				ScrollingDirection = Enum.ScrollingDirection.X,
				ScrollBarThickness = 0,
				CanvasSize = v16(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.X,
			}
		)
		library:create(
			"UIListLayout",
			{
				Parent = v369["multi_section_button_holder"],
				Padding = v17(0, 7),
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
			}
		)
		library:create(
			"UIPadding",
			{
				PaddingTop = v17(0, 8),
				PaddingBottom = v17(0, 7),
				Parent = v369["multi_section_button_holder"],
				PaddingRight = v17(0, 7),
				PaddingLeft = v17(0, 7),
			}
		)
		for v1093, v1094 in v368.tabs do
			local v1095 = { items = {} }
			local v1096 = v1095.items
			do
				v1096["button"] = library:create(
					"TextButton",
					{
						FontFace = v61.font,
						TextColor3 = v25(255, 255, 255),
						BorderColor3 = v25(0, 0, 0),
						AutoButtonColor = false,
						Text = "",
						Parent = v369["multi_section_button_holder"],
						Name = "\0",
						Size = v16(0, 0, 0, 39),
						BackgroundTransparency = 1,
						ClipsDescendants = true,
						BorderSizePixel = 0,
						AutomaticSize = Enum.AutomaticSize.X,
						TextSize = 16,
						BackgroundColor3 = v25(41, 45, 49),
					}
				)
				v1096["name"] = library:create(
					"TextLabel",
					{
						FontFace = v61.font,
						TextColor3 = v25(255, 255, 255),
						BorderColor3 = v25(0, 0, 0),
						Text = v1094,
						Parent = v1096["button"],
						Name = "\0",
						Size = v16(0, 0, 1, 0),
						BackgroundTransparency = 1,
						TextXAlignment = Enum.TextXAlignment.Left,
						BorderSizePixel = 0,
						AutomaticSize = Enum.AutomaticSize.XY,
						TextSize = 12,
						TextTransparency = 0.5,
						BackgroundColor3 = v25(255, 255, 255),
					}
				)
				library:create(
					"UIPadding",
					{ Parent = v1096["name"], PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) }
				)
				v1096["accent"] = library:create(
					"Frame",
					{
						BorderColor3 = v25(0, 0, 0),
						AnchorPoint = v14(0, 1),
						Parent = v1096["button"],
						BackgroundTransparency = 1,
						Position = v16(0, 10, 1, 4),
						Name = "\0",
						Size = v16(1, -20, 0, 6),
						BorderSizePixel = 0,
						BackgroundColor3 = v55.preset.accent,
					}
				)
				library:apply_theme(v1096["accent"], "accent", "BackgroundColor3")
				library:create("UICorner", { Parent = v1096["accent"], CornerRadius = v17(0, 999) })
				library:create(
					"UIPadding",
					{ Parent = v1096["button"], PaddingRight = v17(0, 10), PaddingLeft = v17(0, 10) }
				)
				library:create("UICorner", { Parent = v1096["button"], CornerRadius = v17(0, 7) })
				v1096["tab"] = library:create(
					"Frame",
					{
						Parent = library.cache,
						BackgroundTransparency = 1,
						Name = "\0",
						BorderColor3 = v25(0, 0, 0),
						Size = v16(1, -20, 1, -20),
						BorderSizePixel = 0,
						Visible = false,
						BackgroundColor3 = v25(255, 255, 255),
					}
				)
				library:create(
					"UIListLayout",
					{
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalFlex = Enum.UIFlexAlignment.Fill,
						Parent = v1096["tab"],
						Padding = v17(0, 7),
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalFlex = Enum.UIFlexAlignment.Fill,
					}
				)
				library:create(
					"UIPadding",
					{
						PaddingTop = v17(0, 7),
						PaddingBottom = v17(0, 7),
						Parent = v1096["tab"],
						PaddingRight = v17(0, 7),
						PaddingLeft = v17(0, 7),
					}
				)
			end
			v1095.text = v1096["name"]
			v1095.accent = v1096["accent"]
			v1095.button = v1096["button"]
			v1095.page = v1096["tab"]
			v1095.parent = setmetatable(v1095, library):sub_tab({}).items["tab_parent"]
			v1095.open_page = function()
				local v1276 = v368.current_multi
				if v1276 and (v1276.text ~= v1095.text) then
					v366.items["global_fade"].BackgroundTransparency = 0
					library:tween(v366.items["global_fade"], { BackgroundTransparency = 1 }, Enum.EasingStyle.Quad, 0.4)
					local v1436 = v1276.page.Size
					v1276.page.Size = v16(1, -20, 1, -20)
				end
				if v1276 then
					library:tween(v1276.text, { TextTransparency = 0.5 })
					library:tween(v1276.accent, { BackgroundTransparency = 1 })
					library:tween(v1276.button, { BackgroundTransparency = 1 })
					v1276.page.Visible = false
					v1276.page.Parent = library["cache"]
				end
				library:tween(v1095.text, { TextTransparency = 0 })
				library:tween(v1095.accent, { BackgroundTransparency = 0 })
				library:tween(v1095.button, { BackgroundTransparency = 0.5 })
				library:tween(v1095.page, { Size = v16(1, 0, 1, 0) }, Enum.EasingStyle.Quad, 0.4)
				v1095.page.Visible = true
				v1095.page.Parent = v369["tab_holder"]
				v368.current_multi = v1095
				library:close_element()
			end
			v1096["button"].MouseButton1Down:Connect(function()
				v1095.open_page()
			end)
			v368.pages[#v368.pages + 1] = setmetatable(v1095, library)
		end
		v368.pages[1].open_page()
	end
	v368.open_tab = function()
		local v696 = v366.selected_tab
		if v696 then
			if v696[4] ~= v369["tab_holder"] then
				v366.items["global_fade"].BackgroundTransparency = 0
				library:tween(v366.items["global_fade"], { BackgroundTransparency = 1 }, Enum.EasingStyle.Quad, 0.4)
				v696[4].Size = v16(1, -216, 1, -101)
			end
			library:tween(v696[1], { BackgroundTransparency = 1 })
			library:tween(v696[2], { ImageColor3 = v25(252, 252, 252), ImageTransparency = 0.5 })
			library:tween(v696[3], { TextTransparency = 0.5 })
			v696[4].Visible = false
			v696[4].Parent = library["cache"]
			v696[5].Visible = false
			v696[5].Parent = library["cache"]
		end
		library:tween(v369["button"], { BackgroundTransparency = 0.5 })
		library:tween(v369["icon"], { ImageColor3 = v55.preset.accent, ImageTransparency = 0 })
		library:tween(v369["name"], { TextTransparency = 0 })
		library:tween(v369["tab_holder"], { Size = v16(1, -175, 1, -81) }, Enum.EasingStyle.Quad, 0.4)
		v369["tab_holder"].Visible = true
		v369["tab_holder"].Parent = v366.items["main"]
		v369["multi_section_button_holder"].Visible = true
		v369["multi_section_button_holder"].Parent = v366.items["multi_holder"]
		v366.selected_tab =
			{ v369["button"], v369["icon"], v369["name"], v369["tab_holder"], v369["multi_section_button_holder"] }
		library:close_element()
	end
	v369["button"].MouseButton1Down:Connect(function()
		v368.open_tab()
	end)
	if not v366.selected_tab then
		v368.open_tab(true)
	end
	return unpack(v368.pages)
end
library.seperator = function(v371, v372)
	local v373 = { items = {}, name = v372.Name or v372.name or "General" }
	local v374 = v373.items
	do
		v374["name"] = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v373.name:upper(),
				Parent = v371.items["button_holder"],
				Name = "\0",
				Size = v16(1, 0, 0, 0),
				Position = v16(0, 40, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 11,
				BackgroundColor3 = v25(255, 255, 255),
				TextTransparency = 0.5,
			}
		)
		library:create("UIPadding", { Parent = v374["name"], PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) })
	end
	return setmetatable(v373, library)
end
library.column = function(v375, v376)
	local v377 = { items = {}, size = v376.size or 1 }
	local v378 = v377.items
	do
		v378["column"] = library:create(
			"ScrollingFrame",
			{
				Parent = v375["parent"] or v375.items["tab_parent"],
				BackgroundTransparency = 1,
				Name = "\0",
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 0, v377.size, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
				ScrollBarThickness = 0,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				CanvasSize = v16(0, 0, 0, 0),
			}
		)
		library:create("UIPadding", { PaddingBottom = v17(0, 10), Parent = v378["column"] })
		library:create(
			"UIListLayout",
			{
				Parent = v378["column"],
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				Padding = v17(0, 7),
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}
		)
	end
	return setmetatable(v377, library)
end
library.sub_tab = function(v379, v380)
	local v381 = { items = {}, order = v380.order or 0, size = v380.size or 1 }
	local v382 = v381.items
	do
		v382["tab_parent"] = library:create(
			"Frame",
			{
				Parent = v379.items["tab"],
				BackgroundTransparency = 1,
				Name = "\0",
				Size = v16(0, 0, v381.size, 0),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				Visible = true,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				VerticalFlex = Enum.UIFlexAlignment.Fill,
				Parent = v382["tab_parent"],
				Padding = v17(0, 7),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}
		)
	end
	return setmetatable(v381, library)
end
library.section = function(v383, v384)
	local v385 = {
		name = v384.name or v384.Name or "section",
		side = v384.side or v384.Side or "left",
		default = v384.default or v384.Default or false,
		size = v384.size or v384.Size or v383.size or 0.5,
		icon = v384.icon or v384.Icon or "http://www.roblox.com/asset/?id=6022668898",
		fading_toggle = v384.fading or v384.Fading or false,
		auto_size = v384.auto_size or false,
		items = {},
	}
	local v386 = v385.items
	do
		v386["outline"] = library:create(
			"Frame",
			{
				Name = "\0",
				Parent = v383.items["column"],
				BorderColor3 = v25(0, 0, 0),
				Size = (v385.auto_size and v16(1, 0, 0, 0)) or v16(1, 0, v385.size, 0),
				AutomaticSize = (v385.auto_size and Enum.AutomaticSize.Y) or Enum.AutomaticSize.None,
				BorderSizePixel = 0,
				BackgroundColor3 = v25(20, 22, 27),
				BackgroundTransparency = 0.5,
			}
		)
		library:create("UICorner", { Parent = v386["outline"], CornerRadius = v17(0, 7) })
		v386["inline"] = library:create(
			"Frame",
			{
				Parent = v386["outline"],
				Name = "\0",
				Position = v16(0, 1, 0, 1),
				BorderColor3 = v25(0, 0, 0),
				Size = (v385.auto_size and v16(1, -2, 0, -2)) or v16(1, -2, 1, -2),
				AutomaticSize = (v385.auto_size and Enum.AutomaticSize.Y) or Enum.AutomaticSize.None,
				BorderSizePixel = 0,
				BackgroundColor3 = v25(20, 22, 27),
				BackgroundTransparency = 0.5,
			}
		)
		library:create("UICorner", { Parent = v386["inline"], CornerRadius = v17(0, 7) })
		v386["scrolling"] = library:create(
			"ScrollingFrame",
			{
				ScrollBarImageColor3 = v25(44, 44, 46),
				Active = true,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ScrollBarThickness = (v385.auto_size and 0) or 2,
				Parent = v386["inline"],
				Name = "\0",
				Size = (v385.auto_size and v16(1, 0, 0, 0)) or v16(1, 0, 1, -40),
				AutomaticSize = (v385.auto_size and Enum.AutomaticSize.Y) or Enum.AutomaticSize.None,
				BackgroundTransparency = 1,
				Position = v16(0, 0, 0, 35),
				BackgroundColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				CanvasSize = v16(0, 0, 0, 0),
			}
		)
		v386["elements"] = library:create(
			"Frame",
			{
				BorderColor3 = v25(0, 0, 0),
				Parent = v386["scrolling"],
				Name = "\0",
				BackgroundTransparency = 1,
				Position = v16(0, 10, 0, 10),
				Size = v16(1, -20, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{ Parent = v386["elements"], Padding = v17(0, 10), SortOrder = Enum.SortOrder.LayoutOrder }
		)
		library:create("UIPadding", { PaddingBottom = v17(0, 8), Parent = v386["elements"] })
		v386["button"] = library:create(
			"TextButton",
			{
				FontFace = v61.font,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				AutoButtonColor = false,
				Parent = v386["outline"],
				Name = "\0",
				Position = v16(0, 1, 0, 1),
				Size = v16(1, -2, 0, 35),
				BorderSizePixel = 0,
				TextSize = 16,
				BackgroundColor3 = v25(20, 22, 27),
			}
		)
		library:create(
			"UIStroke",
			{ Color = v25(23, 23, 29), Parent = v386["button"], Enabled = false, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		)
		library:create("UICorner", { Parent = v386["button"], CornerRadius = v17(0, 7) })
		v386["Icon"] = library:create(
			"ImageLabel",
			{
				ImageColor3 = v55.preset.accent,
				BorderColor3 = v25(0, 0, 0),
				Parent = v386["button"],
				AnchorPoint = v14(0, 0.5),
				Image = library:_geticon(v385.icon),
				BackgroundTransparency = 1,
				Position = v16(0, 10, 0.5, 0),
				Name = "\0",
				Size = v16(0, 20, 0, 20),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:apply_theme(v386["Icon"], "accent", "ImageColor3")
		v386["section_title"] = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v385.name,
				Parent = v386["button"],
				Name = "\0",
				Size = v16(0, 0, 1, 0),
				Position = v16(0, 40, 0, -1),
				TextTransparency = 0.2,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v386["button"],
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(36, 36, 37),
			}
		)
		if v385.fading_toggle then
			v386["toggle"] = library:create(
				"TextButton",
				{
					FontFace = v61.small,
					TextColor3 = v25(0, 0, 0),
					BorderColor3 = v25(0, 0, 0),
					AutoButtonColor = false,
					Text = "",
					AnchorPoint = v14(1, 0.5),
					Parent = v386["button"],
					Name = "\0",
					Position = v16(1, -9, 0.5, 0),
					Size = v16(0, 36, 0, 18),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = v25(10, 13, 21),
				}
			)
			library:apply_theme(v386["toggle"], "accent", "BackgroundColor3")
			library:create("UICorner", { Parent = v386["toggle"], CornerRadius = v17(0, 999) })
			v386["toggle_outline"] = library:create(
				"Frame",
				{
					Parent = v386["toggle"],
					Size = v16(1, -2, 1, -2),
					Name = "\0",
					BorderMode = Enum.BorderMode.Inset,
					BorderColor3 = v25(0, 0, 0),
					Position = v16(0, 1, 0, 1),
					BorderSizePixel = 0,
					BackgroundColor3 = v25(50, 50, 50),
				}
			)
			library:apply_theme(v386["toggle_outline"], "accent", "BackgroundColor3")
			library:create("UICorner", { Parent = v386["toggle_outline"], CornerRadius = v17(0, 999) })
			library:create(
				"UIGradient",
				{ Color = v28({ v29(0, v25(211, 211, 211)), v29(1, v25(211, 211, 211)) }), Parent = v386["toggle_outline"] }
			)
			v386["toggle_circle"] = library:create(
				"Frame",
				{
					Parent = v386["toggle_outline"],
					Name = "\0",
					Position = v16(0, 2, 0, 2),
					BorderColor3 = v25(0, 0, 0),
					Size = v16(0, 12, 0, 12),
					BorderSizePixel = 0,
					BackgroundColor3 = v25(86, 86, 88),
				}
			)
			library:create("UICorner", { Parent = v386["toggle_circle"], CornerRadius = v17(0, 999) })
			library:create("UICorner", { Parent = v386["outline"], CornerRadius = v17(0, 7) })
			v386["fade"] = library:create(
				"Frame",
				{
					Parent = v386["outline"],
					BackgroundTransparency = 0.800000011920929,
					Name = "\0",
					BorderColor3 = v25(0, 0, 0),
					Size = v16(1, 0, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = v25(0, 0, 0),
				}
			)
			library:create("UICorner", { Parent = v386["fade"], CornerRadius = v17(0, 7) })
		end
	end
	if v385.fading_toggle then
		v386["button"].MouseButton1Click:Connect(function()
			v385.default = not v385.default
			v385.toggle_section(v385.default)
		end)
		v385.toggle_section = function(v1291)
			library:tween(
				v386["toggle"],
				{ BackgroundColor3 = (v1291 and v55.preset.accent) or v25(10, 13, 21) },
				Enum.EasingStyle.Quad
			)
			library:tween(
				v386["toggle_outline"],
				{ BackgroundColor3 = (v1291 and v55.preset.accent) or v25(10, 13, 21) },
				Enum.EasingStyle.Quad
			)
			library:tween(
				v386["toggle_circle"],
				{
					BackgroundColor3 = (v1291 and v25(255, 255, 255)) or v25(86, 86, 88),
					Position = (v1291 and v16(1, -14, 0, 2)) or v16(0, 2, 0, 2),
				},
				Enum.EasingStyle.Quad
			)
			library:tween(v386["fade"], { BackgroundTransparency = (v1291 and 1) or 0.8 }, Enum.EasingStyle.Quad)
		end
	end
	return setmetatable(v385, library)
end
library.toggle = function(v387, v388)
	local v389 = math.random(1, 2)
	local v390 = {
		enabled = v388.enabled or nil,
		name = v388.name or "Toggle",
		info = v388.info or nil,
		flag = v388.flag or library:next_flag(),
		type = (v388.type and string.lower(v388.type)) or ((v389 == 1) and "toggle") or "checkbox",
		default = v388.default or false,
		folding = v388.folding or false,
		callback = v388.callback or function() end,
		items = {},
		seperator = v388.seperator or v388.Seperator or false,
	}
	v390.seperator = v388.seperator
	if v390.seperator == nil then
		v390.seperator = v388.Seperator
	end
	v58[v390.flag] = v390.default
	local v395 = v390.items
	do
		v395["toggle"] = library:create(
			"TextButton",
			{
				FontFace = v61.small,
				TextColor3 = v25(0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				Parent = v387.items["elements"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v395["name"] = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v390.name,
				Parent = v395["toggle"],
				Name = "\0",
				Size = v16(1, 0, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				TextTransparency = 0.2,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 13,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		if v390.info then
			v395["info"] = library:create(
				"TextLabel",
				{
					FontFace = v61.small,
					TextColor3 = v25(130, 130, 130),
					BorderColor3 = v25(0, 0, 0),
					TextWrapped = true,
					Text = v390.info,
					Parent = v395["toggle"],
					Name = "\0",
					Position = v16(0, 5, 0, 17),
					Size = v16(1, -10, 0, 0),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 12,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
		end
		library:create("UIPadding", { Parent = v395["name"], PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) })
		v395["right_components"] = library:create(
			"Frame",
			{
				Parent = v395["toggle"],
				Name = "\0",
				Position = v16(1, 0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Parent = v395["right_components"],
				Padding = v17(0, 9),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}
		)
		if v390.type == "checkbox" then
			v395["toggle_button"] = library:create(
				"TextButton",
				{
					FontFace = v61.small,
					TextColor3 = v25(0, 0, 0),
					BorderColor3 = v25(0, 0, 0),
					Text = "",
					LayoutOrder = 2,
					AutoButtonColor = false,
					AnchorPoint = v14(1, 0),
					Parent = v395["right_components"],
					Name = "\0",
					Position = v16(1, 0, 0, 0),
					Size = v16(0, 16, 0, 16),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = v25(67, 67, 68),
				}
			)
			library:apply_theme(v395["toggle_button"], "accent", "BackgroundColor3")
			library:create("UICorner", { Parent = v395["toggle_button"], CornerRadius = v17(0, 4) })
			v395["outline"] = library:create(
				"Frame",
				{
					Parent = v395["toggle_button"],
					Size = v16(1, -2, 1, -2),
					Name = "\0",
					BorderMode = Enum.BorderMode.Inset,
					BorderColor3 = v25(0, 0, 0),
					Position = v16(0, 1, 0, 1),
					BorderSizePixel = 0,
					BackgroundColor3 = v25(22, 22, 24),
				}
			)
			library:apply_theme(v395["outline"], "accent", "BackgroundColor3")
			v395["tick"] = library:create(
				"ImageLabel",
				{
					ImageTransparency = 1,
					BorderColor3 = v25(0, 0, 0),
					Image = "rbxassetid://111862698467575",
					BackgroundTransparency = 1,
					Position = v16(0, -1, 0, 0),
					Parent = v395["outline"],
					Size = v16(1, 2, 1, 2),
					BorderSizePixel = 0,
					BackgroundColor3 = v25(255, 255, 255),
					ZIndex = 1,
				}
			)
			library:create("UICorner", { Parent = v395["outline"], CornerRadius = v17(0, 4) })
			library:create(
				"UIGradient",
				{ Enabled = false, Parent = v395["outline"], Color = v28({
					v29(0, v25(211, 211, 211)),
					v29(1, v25(211, 211, 211)),
				}) }
			)
			v395["toggle"].MouseButton1Click:Connect(function()
				v390.set(not v390.enabled)
			end)
		else
			v395["toggle_button"] = library:create(
				"TextButton",
				{
					FontFace = v61.font,
					TextColor3 = v25(0, 0, 0),
					BorderColor3 = v25(0, 0, 0),
					Text = "",
					LayoutOrder = 2,
					AnchorPoint = v14(1, 0.5),
					Parent = v395["right_components"],
					Name = "\0",
					Position = v16(1, -9, 0.5, 0),
					Size = v16(0, 36, 0, 18),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = v55.preset.accent,
				}
			)
			library:apply_theme(v395["toggle_button"], "accent", "BackgroundColor3")
			library:create("UICorner", { Parent = v395["toggle_button"], CornerRadius = v17(0, 999) })
			v395["inline"] = library:create(
				"Frame",
				{
					Parent = v395["toggle_button"],
					Size = v16(1, -2, 1, -2),
					Name = "\0",
					BorderMode = Enum.BorderMode.Inset,
					BorderColor3 = v25(0, 0, 0),
					Position = v16(0, 1, 0, 1),
					BorderSizePixel = 0,
					BackgroundColor3 = v55.preset.accent,
				}
			)
			library:apply_theme(v395["inline"], "accent", "BackgroundColor3")
			library:create("UICorner", { Parent = v395["inline"], CornerRadius = v17(0, 999) })
			library:create(
				"UIGradient",
				{ Color = v28({ v29(0, v25(211, 211, 211)), v29(1, v25(211, 211, 211)) }), Parent = v395["inline"] }
			)
			v395["circle"] = library:create(
				"Frame",
				{
					Parent = v395["inline"],
					Name = "\0",
					Position = v16(1, -14, 0, 2),
					BorderColor3 = v25(0, 0, 0),
					Size = v16(0, 12, 0, 12),
					BorderSizePixel = 0,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
			library:create("UICorner", { Parent = v395["circle"], CornerRadius = v17(0, 999) })
		end
	end
	v390.set = function(...)
		local v717 = { ... }
		local v718 = v717[1]
		if (type(v718) == "table") and (type(v717[2]) == "boolean") then
			v718 = v717[2]
		elseif (type(v718) == "table") and (v717[2] == nil) then
			v718 = false
		end
		if v718 == nil then
			v718 = false
		end
		if (v390.enabled == v718) and (select("#", ...) > 0) and (type(v717[1]) == "table") then
			return
		end
		v390.enabled = v718
		if v390.type == "checkbox" then
			library:tween(v395["tick"], { Rotation = (v718 and 0) or 45, ImageTransparency = (v718 and 0) or 1 })
			library:tween(v395["toggle_button"], { BackgroundColor3 = (v718 and v55.preset.accent) or v25(67, 67, 68) })
			library:tween(v395["outline"], { BackgroundColor3 = (v718 and v55.preset.accent) or v25(22, 22, 24) })
		else
			library:tween(
				v395["toggle_button"],
				{ BackgroundColor3 = (v718 and v55.preset.accent) or v25(10, 13, 21) },
				Enum.EasingStyle.Quad
			)
			library:tween(
				v395["inline"],
				{ BackgroundColor3 = (v718 and v55.preset.accent) or v25(10, 13, 21) },
				Enum.EasingStyle.Quad
			)
			library:tween(
				v395["circle"],
				{
					BackgroundColor3 = (v718 and v25(255, 255, 255)) or v25(86, 86, 88),
					Position = (v718 and v16(1, -14, 0, 2)) or v16(0, 2, 0, 2),
				},
				Enum.EasingStyle.Quad
			)
		end
		v58[v390.flag] = v718
		v390.callback(v718)
		if v390.folding and v387.items and v387.items["elements"] then
			v387.items["elements"].Visible = v718
		end
	end
	v395["toggle_button"].MouseButton1Click:Connect(function()
		v390.set(not v390.enabled)
	end)
	if v390.seperator then
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v387.items["elements"],
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
			}
		)
	end
	v390.set(v390.default)
	v59[v390.flag] = v390.set
	return setmetatable(v390, library)
end
library.slider = function(v398, v399)
	local v400 = {
		name = v399.name or nil,
		suffix = v399.suffix or "",
		flag = v399.flag or library:next_flag(),
		callback = v399.callback or function() end,
		info = v399.info or nil,
		min = v399.min or v399.minimum or 0,
		max = v399.max or v399.maximum or 100,
		intervals = v399.interval or v399.decimal or 1,
		default = v399.default or 10,
		value = v399.default or 10,
		typing = false,
		items = {},
	}
	v400.seperator = v399.seperator
	if v400.seperator == nil then
		v400.seperator = v399.Seperator
	end
	if v400.seperator == nil then
		v400.seperator = true
	end
	v58[v400.flag] = v400.default
	local v405 = v400.items
	do
		v405["slider_object"] = library:create(
			"Frame",
			{
				Parent = v398.items["elements"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{
				Parent = v405["slider_object"],
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = v17(0, 5),
			}
		)
		library:create(
			"UIPadding",
			{ Parent = v405["slider_object"], PaddingLeft = v17(0, 5), PaddingRight = v17(0, 5) }
		)
		v405["header_row"] = library:create(
			"Frame",
			{
				Parent = v405["slider_object"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 0, 14),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
				LayoutOrder = 1,
			}
		)
		v405["name"] = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v400.name,
				Parent = v405["header_row"],
				Name = "\0",
				AnchorPoint = v14(0, 0.5),
				Position = v16(0, 0, 0.5, 0),
				Size = v16(0.6, 0, 1, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				TextTransparency = 0.2,
				TextSize = 13,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v405["value"] = library:create(
			"TextButton",
			{
				FontFace = v61.small,
				TextColor3 = v25(72, 72, 73),
				BorderColor3 = v25(0, 0, 0),
				Text = tostring(v400.default) .. v400.suffix,
				AutoButtonColor = false,
				Parent = v405["header_row"],
				Name = "\0",
				AnchorPoint = v14(1, 0.5),
				Position = v16(1, 0, 0.5, 0),
				Size = v16(0, 48, 0, 18),
				BackgroundColor3 = v25(26, 28, 36),
				BorderSizePixel = 0,
				TextSize = 12,
			}
		)
		library:create("UICorner", { Parent = v405["value"], CornerRadius = v17(0, 4) })
		v405["value_input"] = library:create(
			"TextBox",
			{
				FontFace = v61.small,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = tostring(v400.default),
				TextTransparency = 0.3,
				PlaceholderText = "",
				ClearTextOnFocus = true,
				Parent = v405["header_row"],
				Name = "\0",
				AnchorPoint = v14(1, 0.5),
				Position = v16(1, 0, 0.5, 0),
				Size = v16(0, 48, 0, 18),
				BackgroundTransparency = 0,
				BackgroundColor3 = v25(26, 28, 36),
				TextXAlignment = Enum.TextXAlignment.Center,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.None,
				TextSize = 12,
				Visible = false,
			}
		)
		library:create("UICorner", { Parent = v405["value_input"], CornerRadius = v17(0, 4) })
		if v400.info then
			v405["info"] = library:create(
				"TextLabel",
				{
					FontFace = v61.small,
					TextColor3 = v25(130, 130, 130),
					BorderColor3 = v25(0, 0, 0),
					TextWrapped = true,
					Text = v400.info,
					Parent = v405["slider_object"],
					Name = "\0",
					Size = v16(1, 0, 0, 0),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					BackgroundColor3 = v25(255, 255, 255),
					LayoutOrder = 2,
				}
			)
		end
		v405["slider_container"] = library:create(
			"Frame",
			{
				Parent = v405["slider_object"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 0, 16),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
				LayoutOrder = 3,
			}
		)
		v405["slide_main"] = library:create(
			"Frame",
			{
				Parent = v405["slider_container"],
				Name = "\0",
				AnchorPoint = v14(0, 0.5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = v16(0, 0, 0.5, 0),
				Size = v16(1, 0, 0, 16),
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v405["slider"] = library:create(
			"Frame",
			{
				Parent = v405["slide_main"],
				Name = "\0",
				AnchorPoint = v14(0, 0.5),
				BackgroundColor3 = v25(26, 28, 36),
				BorderSizePixel = 0,
				Position = v16(0, 0, 0.5, 0),
				Size = v16(1, 0, 0, 4),
				BorderColor3 = v25(0, 0, 0),
			}
		)
		library:create("UICorner", { Parent = v405["slider"], CornerRadius = v17(0, 999) })
		v405["fill"] = library:create(
			"Frame",
			{
				Name = "\0",
				Parent = v405["slider"],
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0.5, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v55.preset.accent,
			}
		)
		library:apply_theme(v405["fill"], "accent", "BackgroundColor3")
		library:create("UICorner", { Parent = v405["fill"], CornerRadius = v17(0, 999) })
		v405["circle"] = library:create(
			"Frame",
			{
				AnchorPoint = v14(1, 0.5),
				Parent = v405["fill"],
				Name = "\0",
				Position = v16(1, 5, 0.5, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 10, 0, 10),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create("UICorner", { Parent = v405["circle"], CornerRadius = v17(0, 999) })
	end
	v400.set = function(v731)
		v400.value = v48(library:round(v731, v400.intervals), v400.min, v400.max)
		local v733 = (v400.value - v400.min) / (v400.max - v400.min)
		library:tween(v405["fill"], { Size = v16(v733, 0, 1, 0) }, Enum.EasingStyle.Linear, 0.05)
		v405["value"].Text = tostring(v400.value) .. v400.suffix
		v405["value_input"].Text = tostring(v400.value)
		v58[v400.flag] = v400.value
		v400.callback(v400.value)
	end
	local function v407(v737)
		local v738
		local v739 = v405["slide_main"].AbsolutePosition.X
		local v740 = v405["slide_main"].AbsoluteSize.X
		if library.Global3DRenderMode and library._3DSurfaceGui then
			local v1302 = library._3DSurfaceGui.CanvasSize
			local v1303 = v32.ViewportSize
			local v1304 = v1302.X / v1303.X
			if
				(v737.UserInputType == Enum.UserInputType.MouseMovement)
				or (v737.UserInputType == Enum.UserInputType.Touch)
			then
				v738 = v737.Position.X * v1304
			else
				v738 = v737.Position.X * v1304
			end
		else
			v738 = v737.Position.X
		end
		local v741 = v48((v738 - v739) / v740, 0, 1)
		local v742 = ((v400.max - v400.min) * v741) + v400.min
		local v743 = v48(library:round(v742, v400.intervals), v400.min, v400.max)
		v400.value = v743
		library:tween(v405["fill"], { Size = v16(v741, 0, 1, 0) }, Enum.EasingStyle.Linear, 0.05)
		v405["value"].Text = tostring(v743) .. v400.suffix
		v405["value_input"].Text = tostring(v743)
		v58[v400.flag] = v743
		v400.callback(v743)
	end
	local v408 = false
	v405["slide_main"].InputBegan:Connect(function(v748)
		if
			(v748.UserInputType == Enum.UserInputType.MouseButton1) or (v748.UserInputType == Enum.UserInputType.Touch)
		then
			if v400.typing then
				return
			end
			v408 = true
			library.IsMouseOverElement = true
			if not library.Global3DRenderMode then
				v407(v748)
			end
		end
	end)
	v405["slide_main"].InputEnded:Connect(function(v749)
		if
			(v749.UserInputType == Enum.UserInputType.MouseButton1) or (v749.UserInputType == Enum.UserInputType.Touch)
		then
			if v1.TouchEnabled then
				if not library:mouse_in_frame(v405["slide_main"]) then
					v408 = false
					library.IsMouseOverElement = false
				end
			else
				v408 = false
				library.IsMouseOverElement = false
			end
		end
	end)
	library:connection(v1.InputChanged, function(v750)
		if not v408 then
			return
		end
		if
			(v750.UserInputType == Enum.UserInputType.MouseMovement) or (v750.UserInputType == Enum.UserInputType.Touch)
		then
			if v1.TouchEnabled then
				if not library:mouse_in_frame(v405["slide_main"]) then
					v408 = false
				else
					v407(v750)
				end
			else
				v407(v750)
			end
		end
	end)
	library:connection(v1.InputEnded, function(v751)
		if v751.UserInputType == Enum.UserInputType.MouseButton1 then
			task.defer(function()
				if not v408 then
					library.IsMouseOverElement = false
				end
			end)
		end
	end)
	v405["value"].MouseButton1Click:Connect(function()
		v400.typing = true
		v408 = false
		v405["value"].Visible = false
		v405["value_input"].Text = tostring(v400.value)
		v405["value_input"].Visible = true
		v405["value_input"]:CaptureFocus()
	end)
	v405["value_input"].FocusLost:Connect(function()
		v400.typing = false
		local v757 = tonumber(v405["value_input"].Text)
		if v757 then
			v400.set(v757)
		else
			v405["value_input"].Text = tostring(v400.value)
		end
		v405["value_input"].Visible = false
		v405["value"].Visible = true
	end)
	v405["value_input"].Focused:Connect(function()
		v400.typing = true
		v408 = false
	end)
	if v400.seperator then
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v398.items["elements"],
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
			}
		)
	end
	v400.set(v400.default)
	v59[v400.flag] = v400.set
	return setmetatable(v400, library)
end
library.dropdown = function(v410, v411)
	local v412 = {
		name = v411.name or nil,
		info = v411.info or nil,
		flag = v411.flag or library:next_flag(),
		options = v411.items or { "" },
		callback = v411.callback or function() end,
		multi = v411.multi or false,
		scrolling = v411.scrolling or false,
		width = v411.width or 130,
		open = false,
		option_instances = {},
		multi_items = {},
		ignore = v411.ignore or false,
		items = {},
		y_size = 0,
	}
	v412.seperator = v411.seperator
	if v412.seperator == nil then
		v412.seperator = v411.Seperator
	end
	if v412.seperator == nil then
		v412.seperator = true
	end
	v412.default = v411.default or (v412.multi and {})
	v58[v412.flag] = v412.default
	local v417 = v412.items
	do
		v417["dropdown_object"] = library:create(
			"TextButton",
			{
				FontFace = v61.small,
				TextColor3 = v25(0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				Parent = v410.items["elements"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{
				Parent = v417["dropdown_object"],
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = v17(0, 4),
			}
		)
		library:create(
			"UIPadding",
			{ Parent = v417["dropdown_object"], PaddingTop = v17(0, 4), PaddingBottom = v17(0, 4) }
		)
		v417["row"] = library:create(
			"Frame",
			{
				Parent = v417["dropdown_object"],
				Name = "\0",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = v16(1, 0, 0, 20),
				LayoutOrder = 1,
			}
		)
		library:create("UIPadding", { Parent = v417["row"], PaddingLeft = v17(0, 5), PaddingRight = v17(0, 5) })
		v417["name"] = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v412.name,
				Parent = v417["row"],
				Name = "\0",
				Size = v16(0, 0, 1, 0),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				TextTransparency = 0.2,
				TextSize = 13,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v417["dropdown"] = library:create(
			"TextButton",
			{
				FontFace = v61.small,
				TextColor3 = v25(0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				AutoButtonColor = false,
				AnchorPoint = v14(1, 0.5),
				Parent = v417["row"],
				Name = "\0",
				Position = v16(1, 0, 0.5, 0),
				Size = v16(0, 0, 0, 20),
				BorderSizePixel = 0,
				TextSize = 14,
				BackgroundColor3 = v25(26, 28, 36),
				ClipsDescendants = true,
			}
		)
		library:create("UICorner", { Parent = v417["dropdown"], CornerRadius = v17(0, 4) })
		library:create("UISizeConstraint", { Parent = v417["dropdown"], MaxSize = v14(130, math.huge) })
		v417["sub_text"] = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				TextColor3 = v25(86, 86, 87),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				Parent = v417["dropdown"],
				Name = "\0",
				Position = v16(0, 6, 0, 0),
				Size = v16(1, -28, 1, 0),
				AutomaticSize = Enum.AutomaticSize.None,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v417["indicator"] = library:create(
			"ImageLabel",
			{
				ImageColor3 = v25(86, 86, 87),
				BorderColor3 = v25(0, 0, 0),
				Parent = v417["dropdown"],
				Image = library:_geticon("chevron-down"),
				BackgroundTransparency = 1,
				Name = "\0",
				AnchorPoint = v14(1, 0.5),
				Position = v16(1, -6, 0.5, 0),
				Size = v16(0, 12, 0, 12),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		if v412.info then
			v417["info"] = library:create(
				"TextLabel",
				{
					FontFace = v61.small,
					TextColor3 = v25(130, 130, 130),
					BorderColor3 = v25(0, 0, 0),
					TextWrapped = true,
					Text = v412.info,
					Parent = v417["dropdown_object"],
					Name = "\0",
					Size = v16(1, -10, 0, 0),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 12,
					BackgroundColor3 = v25(255, 255, 255),
					LayoutOrder = 2,
				}
			)
			library:create("UIPadding", { Parent = v417["info"], PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) })
		end
		v417["dropdown_holder"] = library:create(
			"Frame",
			{
				BorderColor3 = v25(0, 0, 0),
				Parent = library["items"],
				Name = "\0",
				Visible = false,
				Active = true,
				BackgroundTransparency = 1,
				Position = v16(0, -9999, 0, -9999),
				Size = v16(0, 0, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(0, 0, 0),
				ZIndex = 10,
			}
		)
		v417["outline"] = library:create(
			"Frame",
			{
				Parent = v417["dropdown_holder"],
				Size = v16(1, 0, 1, 0),
				ClipsDescendants = true,
				Active = true,
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(26, 28, 36),
				ZIndex = 10,
			}
		)
		library:create(
			"UIPadding",
			{
				PaddingBottom = v17(0, 5),
				PaddingTop = v17(0, 3),
				PaddingLeft = v17(0, 3),
				PaddingRight = v17(0, 3),
				Parent = v417["outline"],
			}
		)
		library:create(
			"UIListLayout",
			{ Parent = v417["outline"], Padding = v17(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }
		)
		library:create("UICorner", { Parent = v417["outline"], CornerRadius = v17(0, 4) })
		v417["search_box"] = library:create(
			"TextBox",
			{
				FontFace = v61.small,
				PlaceholderText = "Search...",
				PlaceholderColor3 = v25(100, 100, 102),
				Text = "",
				ClearTextOnFocus = false,
				TextColor3 = v25(150, 150, 150),
				BorderColor3 = v25(0, 0, 0),
				Parent = v417["outline"],
				Name = "\0",
				LayoutOrder = 0,
				Size = v16(1, 0, 0, 20),
				BackgroundColor3 = v25(26, 28, 36),
				BorderSizePixel = 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = 13,
				ZIndex = 11,
			}
		)
		library:create("UICorner", { Parent = v417["search_box"], CornerRadius = v17(0, 3) })
		library:create("UIPadding", { Parent = v417["search_box"], PaddingLeft = v17(0, 6) })
		v417["scroll_frame"] = library:create(
			"ScrollingFrame",
			{
				Parent = v417["outline"],
				Name = "\0",
				LayoutOrder = 1,
				Size = v16(1, 0, 0, 0),
				Active = true,
				Selectable = false,
				ScrollingEnabled = true,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScrollBarThickness = 2,
				ScrollBarImageColor3 = v25(80, 80, 85),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				CanvasSize = v16(0, 0, 0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				ElasticBehavior = Enum.ElasticBehavior.Never,
				ZIndex = 10,
			}
		)
		library:create(
			"UIListLayout",
			{ Parent = v417["scroll_frame"], Padding = v17(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }
		)
	end
	local v418 = 15
	v412.render_option = function(v771)
		local v772 = library:create(
			"TextButton",
			{
				FontFace = v61.small,
				TextColor3 = v25(72, 72, 73),
				BorderColor3 = v25(0, 0, 0),
				Text = v771,
				Parent = v417["scroll_frame"],
				Name = "\0",
				Size = v16(1, 0, 0, v418),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.None,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
				ZIndex = 10,
				Active = true,
				Selectable = false,
			}
		)
		library:apply_theme(v772, "accent", "TextColor3")
		library:create(
			"UIPadding",
			{ Parent = v772, PaddingTop = v17(0, 1), PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) }
		)
		return v772
	end
	library.IsDropdownOpen = true
	local function v421(v773)
		local v774 = 5
		local v775 = math.min(v773, v774)
		if v775 <= 0 then
			return 0
		end
		return (v775 * v418) + ((v775 - 1) * 5)
	end
	v412.apply_search = function(v776)
		local v777 = (v776 and v776:lower()) or ""
		local v778 = 0
		for v1118 = 1, #v412.option_instances do
			local v1119 = v412.option_instances[v1118]
			local v1120 = (v777 == "") or (v1119.Text:lower():find(v777, 1, true) ~= nil)
			v1119.Visible = v1120
			if v1120 then
				v778 += 1
			end
		end
		local v779 = v421(v778)
		v417["scroll_frame"].Size = v16(1, 4, 0, v779)
		v412.current_y_size = 22 + 5 + v779 + 6
		if v412.open then
			library:tween(
				v417["dropdown_holder"],
				{ Size = v23(v417["dropdown_holder"].AbsoluteSize.X, v412.current_y_size) }
			)
		end
	end
	local function v423(v782, v783)
		local v784 = v417["dropdown"]
		local v785 = v32.ViewportSize
		local v786 = v784.AbsolutePosition
		local v787 = v784.AbsoluteSize
		local v788, v789
		if library.Global3DRenderMode then
			v788 = (v786.X + v787.X) - v782
			v789 = v786.Y + v787.Y + 4
		else
			local v1309 = library["items"].AbsolutePosition
			v788 = ((v786.X + v787.X) - v782) - v1309.X
			v789 = (v786.Y + v787.Y + 4) - v1309.Y
		end
		local v790 = math.max(v788, 4)
		local v791 = v789
		local v792 = ((v786.Y - v783) - 4) - ((library.Global3DRenderMode and 0) or library["items"].AbsolutePosition.Y)
		local v793 = (((v791 + v783) > (v785.Y - 8)) and math.max(v792, 4)) or v791
		return v790, v793
	end
	local v424 = nil
	local v425 = nil
	v412.set_visible = function(v794)
		local v795 = game:GetService("TextService")
		local v796 = game:GetService("UserInputService")
		local v797 = Enum.Font.Gotham
		local v798 = math.max(v417["dropdown"].AbsoluteSize.X, 120)
		local v799 = 0
		for v1122, v1123 in v412.option_instances do
			local v1124 = v795:GetTextSize(v1123.Text, 14, v797, Vector2.new(9999, 9999)).X
			if v1124 > v799 then
				v799 = v1124
			end
		end
		local v800 = math.clamp(v799 + 26, v798, 300)
		local v801 = v412.current_y_size or v412.y_size or 0
		if not v794 then
			library.IsDropdownOpen = false
			v417["search_box"].Text = ""
			v412.apply_search("")
			v417["dropdown_holder"].Visible = false
			v417["dropdown_holder"].Position = v16(0, -9999, 0, -9999)
			v417["dropdown_holder"].Size = v16(0, 0, 0, 0)
			local v1315 = (library["items"] and library["items"].Parent and library["items"])
				or game:GetService("CoreGui")
			pcall(function()
				v417["dropdown_holder"].Parent = v1315
			end)
			if v424 then
				v424:Disconnect()
				v424 = nil
			end
			if v425 then
				v425:Disconnect()
				v425 = nil
			end
		else
			library.IsDropdownOpen = true
			local v1317, v1318 = v423(v800, v801)
			local v1319 = (library.Global3DRenderMode and library.GlobalSurfaceGui) or library["items"]
			if not v1319 or not v1319.Parent then
				v412.open = false
				return
			end
			v417["dropdown_holder"].Parent = v1319
			v417["dropdown_holder"].Position = v16(0, v1317, 0, v1318)
			v417["dropdown_holder"].Size = v16(0, 0, 0, 0)
			v417["dropdown_holder"].Visible = true
			library:tween(v417["dropdown_holder"], { Size = v23(v800, v801) })
			if not v424 then
				task.defer(function()
					v424 = v796.InputBegan:Connect(function(v1472)
						if not v412.open then
							return
						end
						if
							(v1472.UserInputType ~= Enum.UserInputType.MouseButton1)
							and (v1472.UserInputType ~= Enum.UserInputType.Touch)
						then
							return
						end
						local v1473 = v796:GetMouseLocation()
						local v1474 = v417["dropdown_holder"].AbsolutePosition
						local v1475 = v417["dropdown_holder"].AbsoluteSize
						local v1476 = v417["dropdown"].AbsolutePosition
						local v1477 = v417["dropdown"].AbsoluteSize
						local v1478 = 70
						local v1479 = (v1473.X >= (v1474.X - v1478))
							and (v1473.X <= (v1474.X + v1475.X + v1478))
							and (v1473.Y >= (v1474.Y - v1478))
							and (v1473.Y <= (v1474.Y + v1475.Y + v1478))
						local v1480 = (v1473.X >= v1476.X)
							and (v1473.X <= (v1476.X + v1477.X))
							and (v1473.Y >= v1476.Y)
							and (v1473.Y <= (v1476.Y + v1477.Y))
						local v1481
						if library.Global3DRenderMode then
							v1481 = not v1479 and not v1480
						else
							local v1494 = library["items"].AbsolutePosition
							local v1495 = library["items"].AbsoluteSize
							local v1496 = (v1473.X < v1494.X)
								or (v1473.X > (v1494.X + v1495.X))
								or (v1473.Y < v1494.Y)
								or (v1473.Y > (v1494.Y + v1495.Y))
							v1481 = v1496 or (not v1479 and not v1480)
						end
						if v1481 then
							v412.open = false
							v412.set_visible(false)
						end
					end)
				end)
			end
			if not v425 then
				v425 = v417["dropdown"]:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
					if not v412.open then
						return
					end
					local v1462, v1463 = v423(v800, v801)
					if library.Global3DRenderMode then
						v417["dropdown_holder"].Position = v16(0, v1462, 0, v1463)
					else
						v412.open = false
						v412.set_visible(false)
					end
				end)
			end
		end
		if not (v410.sanity and (library.current_open == v410)) then
			library:close_element(v412)
		end
	end
	local function v427()
		local v802 = v417["row"].AbsoluteSize.X
		local v803 = v417["name"].AbsoluteSize.X
		local v804 = math.max(((v802 - 10) - v803) - 8, 30)
		v417["dropdown"].Size = v16(0, v804, 0, 20)
	end
	v412.set = function(v806)
		local v807 = {}
		local v808 = type(v806) == "table"
		for v1125, v1126 in v412.option_instances do
			if (v1126.Text == v806) or (v808 and v50(v806, v1126.Text)) then
				v49(v807, v1126.Text)
				v412.multi_items = v807
				v1126.TextColor3 = v55.preset.accent
			else
				v1126.TextColor3 = v25(72, 72, 73)
			end
		end
		v417["sub_text"].Text = (v808 and (((#v807 > 0) and v52(v807, ", ")) or "None")) or v807[1] or "None"
		v58[v412.flag] = (v808 and v807) or v807[1] or "None"
		v412.callback(v58[v412.flag])
	end
	v412.refresh_options = function(v811)
		v412.y_size = 0
		for v1127, v1128 in v412.option_instances do
			v1128:Destroy()
		end
		v412.option_instances = {}
		local v814 = 0
		for v1129, v1130 in v811 do
			v814 += 1
			local v1131 = v412.render_option(v1130)
			v1131.LayoutOrder = v814
			v412.y_size += (v418 + 5)
			v49(v412.option_instances, v1131)
			v1131.InputBegan:Connect(function(v1324)
				if
					(v1324.UserInputType ~= Enum.UserInputType.MouseButton1)
					and (v1324.UserInputType ~= Enum.UserInputType.Touch)
				then
					return
				end
				local v1325 = v1324.Position
				local v1326 = false
				local v1327 = tick()
				local v1328 = game:GetService("UserInputService")
				local v1329
				v1329 = v1324:GetPropertyChangedSignal("Position"):Connect(function()
					local v1399 = v1324.Position - v1325
					if math.abs(v1399.Y) > 4 then
						v1326 = true
						if v1329 then
							v1329:Disconnect()
							v1329 = nil
						end
					end
				end)
				local v1330
				v1330 = v1328.InputEnded:Connect(function(v1400)
					if v1400 ~= v1324 then
						return
					end
					v1330:Disconnect()
					v1330 = nil
					if v1329 then
						v1329:Disconnect()
						v1329 = nil
					end
					if v1326 then
						return
					end
					if (tick() - v1327) > 0.3 then
						return
					end
					if v412.multi then
						local v1464 = v50(v412.multi_items, v1131.Text)
						if v1464 then
							v51(v412.multi_items, v1464)
						else
							v49(v412.multi_items, v1131.Text)
						end
						v412.set(v412.multi_items)
					else
						v412.open = false
						v412.set_visible(false)
						if v58[v412.flag] == v1131.Text then
							v412.set("None")
						else
							v412.set(v1131.Text)
						end
					end
				end)
			end)
		end
		local v815 = v421(#v412.option_instances)
		v417["scroll_frame"].Size = v16(1, 4, 0, v815)
		v412.y_size = 3 + 20 + 5 + v815 + 5
		v412.current_y_size = v412.y_size
	end
	v417["dropdown"].MouseButton1Click:Connect(function()
		v412.open = not v412.open
		v412.set_visible(v412.open)
	end)
	v417["search_box"].Changed:Connect(function(v819)
		if v819 == "Text" then
			v412.apply_search(v417["search_box"].Text)
		end
	end)
	v417["name"]:GetPropertyChangedSignal("AbsoluteSize"):Connect(v427)
	v417["row"]:GetPropertyChangedSignal("AbsoluteSize"):Connect(v427)
	if v412.seperator then
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v410.items["elements"],
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
			}
		)
	end
	v58[v412.flag] = {}
	v59[v412.flag] = v412.set
	v412.refresh_options(v412.options)
	v412.set(v412.default)
	return setmetatable(v412, library)
end
library.label = function(v431, v432)
	local v433 = {
		enabled = v432.enabled or nil,
		name = v432.name or "Toggle",
		seperator = v432.seperator or v432.Seperator or false,
		info = v432.info or nil,
		items = {},
	}
	local v434 = v433.items
	do
		v434["label"] = library:create(
			"TextButton",
			{
				FontFace = v61.small,
				TextColor3 = v25(0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				Parent = v431.items["elements"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v434["name"] = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v433.name,
				Parent = v434["label"],
				Name = "\0",
				Size = v16(1, 0, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				TextTransparency = 0.2,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 13,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		if v433.info then
			v434["info"] = library:create(
				"TextLabel",
				{
					FontFace = v61.small,
					TextColor3 = v25(130, 130, 130),
					BorderColor3 = v25(0, 0, 0),
					RichText = true,
					TextWrapped = true,
					Text = v433.info,
					Parent = v434["label"],
					Name = "\0",
					Position = v16(0, 5, 0, 17),
					Size = v16(1, -10, 0, 0),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 12,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
		end
		library:create("UIPadding", { Parent = v434["name"], PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) })
		v434["right_components"] = library:create(
			"Frame",
			{
				Parent = v434["label"],
				Name = "\0",
				Position = v16(1, 0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				Parent = v434["right_components"],
				Padding = v17(0, 9),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}
		)
	end
	if v433.seperator then
		library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v431.items["elements"],
				Position = v16(0, 0, 1, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(45, 48, 58),
				BackgroundTransparency = 0.65,
			}
		)
	end
	v433.set = function(...)
		local v823 = { ... }
		local v824, v825 = v823[1], v823[2]
		if (type(v823[1]) == "table") and (v823[1] == v433) then
			v824, v825 = v823[2], v823[3]
		end
		if v824 ~= nil then
			v433.name = v824
			v434["name"].Text = tostring(v824)
		end
		if v825 ~= nil then
			v433.info = v825
			if v434["info"] then
				v434["info"].Text = tostring(v825)
			end
		end
	end
	return setmetatable(v433, library)
end
library.colorpicker = function(v436, v437)
	local v438 = {
		name = v437.name or "Color",
		flag = v437.flag or library:next_flag(),
		color = v437.color or v24(1, 1, 1),
		alpha = (v437.alpha and (1 - v437.alpha)) or 0,
		open = false,
		callback = v437.callback or function() end,
		items = {},
		seperator = v437.seperator or v437.Seperator or false,
	}
	local v439 = false
	local v440 = false
	local v441 = false
	local v442, v443, v444 = v438.color:ToHSV()
	local v445 = v438.alpha
	v58[v438.flag] = { Color = v438.color, Transparency = v438.alpha }
	local v447
	if not v436.items.right_components then
		v447 = v436:label({ name = v438.name, seperator = v438.seperator })
	end
	local v448 = v438.items
	do
		v448["colorpicker"] = library:create(
			"TextButton",
			{
				FontFace = v61.small,
				TextColor3 = v25(0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				AutoButtonColor = false,
				AnchorPoint = v14(1, 0),
				Parent = (v447 and v447.items.right_components) or v436.items["right_components"],
				Name = "\0",
				Position = v16(1, 0, 0, 0),
				Size = v16(0, 16, 0, 16),
				BorderSizePixel = 0,
				TextSize = 14,
				BackgroundColor3 = v25(54, 31, 184),
			}
		)
		library:create("UICorner", { Parent = v448["colorpicker"], CornerRadius = v17(0, 4) })
		v448["colorpicker_inline"] = library:create(
			"Frame",
			{
				Parent = v448["colorpicker"],
				Size = v16(1, -2, 1, -2),
				Name = "\0",
				BorderMode = Enum.BorderMode.Inset,
				BorderColor3 = v25(0, 0, 0),
				Position = v16(0, 1, 0, 1),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(54, 31, 184),
			}
		)
		library:create("UICorner", { Parent = v448["colorpicker_inline"], CornerRadius = v17(0, 4) })
		library:create(
			"UIGradient",
			{ Color = v28({ v29(0, v25(211, 211, 211)), v29(1, v25(211, 211, 211)) }), Parent = v448["colorpicker_inline"] }
		)
		v448["colorpicker_holder"] = library:create(
			"Frame",
			{
				Parent = library["other"],
				Name = "\0",
				Position = v16(0.20000000298023224, 20, 0.296999990940094, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 166, 0, 197),
				BorderSizePixel = 0,
				Visible = true,
				BackgroundColor3 = v25(25, 25, 29),
			}
		)
		v448["colorpicker_fade"] = library:create(
			"Frame",
			{
				Parent = v448["colorpicker_holder"],
				Name = "\0",
				BackgroundTransparency = 0,
				Position = v16(0, 0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 1, 0),
				BorderSizePixel = 0,
				ZIndex = 100,
				BackgroundColor3 = v25(25, 25, 29),
			}
		)
		v448["colorpicker_components"] = library:create(
			"Frame",
			{
				Parent = v448["colorpicker_holder"],
				Name = "\0",
				Position = v16(0, 1, 0, 1),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -2, 1, -2),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(22, 22, 24),
			}
		)
		library:create("UICorner", { Parent = v448["colorpicker_components"], CornerRadius = v17(0, 6) })
		v448["saturation_holder"] = library:create(
			"Frame",
			{
				Parent = v448["colorpicker_components"],
				Name = "\0",
				Position = v16(0, 7, 0, 7),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -14, 1, -80),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 39, 39),
			}
		)
		v448["sat"] = library:create(
			"TextButton",
			{
				Parent = v448["saturation_holder"],
				Name = "\0",
				Size = v16(1, 0, 1, 0),
				Text = "",
				AutoButtonColor = false,
				BorderColor3 = v25(0, 0, 0),
				ZIndex = 2,
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create("UICorner", { Parent = v448["sat"], CornerRadius = v17(0, 4) })
		library:create(
			"UIGradient",
			{
				Rotation = 270,
				Transparency = v30({ v31(0, 0), v31(1, 1) }),
				Parent = v448["sat"],
				Color = v28({ v29(0, v25(0, 0, 0)), v29(1, v25(0, 0, 0)) }),
			}
		)
		v448["val"] = library:create(
			"Frame",
			{
				Name = "\0",
				Parent = v448["saturation_holder"],
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, 0, 1, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create("UIGradient", { Parent = v448["val"], Transparency = v30({ v31(0, 0), v31(1, 1) }) })
		library:create("UICorner", { Parent = v448["val"], CornerRadius = v17(0, 4) })
		library:create("UICorner", { Parent = v448["saturation_holder"], CornerRadius = v17(0, 4) })
		v448["satvalpicker"] = library:create(
			"TextButton",
			{
				BorderColor3 = v25(0, 0, 0),
				AutoButtonColor = false,
				Text = "",
				AnchorPoint = v14(0, 1),
				Parent = v448["saturation_holder"],
				Name = "\0",
				Position = v16(0, 0, 4, 0),
				Size = v16(0, 8, 0, 8),
				ZIndex = 5,
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 0, 0),
			}
		)
		library:create("UICorner", { Parent = v448["satvalpicker"], CornerRadius = v17(0, 9999) })
		library:create(
			"UIStroke",
			{ Color = v25(255, 255, 255), Parent = v448["satvalpicker"], ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		)
		v448["hue_gradient"] = library:create(
			"TextButton",
			{
				Parent = v448["colorpicker_components"],
				Name = "\0",
				Position = v16(0, 10, 1, -64),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -20, 0, 8),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
				AutoButtonColor = false,
				Text = "",
			}
		)
		library:create(
			"UIGradient",
			{
				Color = v28({
					v29(0, v25(255, 0, 0)),
					v29(0.17, v25(255, 255, 0)),
					v29(0.33, v25(0, 255, 0)),
					v29(0.5, v25(0, 255, 255)),
					v29(0.67, v25(0, 0, 255)),
					v29(0.83, v25(255, 0, 255)),
					v29(1, v25(255, 0, 0)),
				}),
				Parent = v448["hue_gradient"],
			}
		)
		library:create("UICorner", { Parent = v448["hue_gradient"], CornerRadius = v17(0, 6) })
		v448["hue_picker"] = library:create(
			"TextButton",
			{
				BorderColor3 = v25(0, 0, 0),
				AutoButtonColor = false,
				Text = "",
				AnchorPoint = v14(0, 0.5),
				Parent = v448["hue_gradient"],
				Name = "\0",
				Position = v16(0, 0, 0.5, 0),
				Size = v16(0, 8, 0, 8),
				ZIndex = 5,
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 0, 0),
			}
		)
		library:create("UICorner", { Parent = v448["hue_picker"], CornerRadius = v17(0, 9999) })
		library:create(
			"UIStroke",
			{ Color = v25(255, 255, 255), Parent = v448["hue_picker"], ApplyStrokeMode = Enum.ApplyStrokeMode.Border }
		)
		v448["alpha_gradient"] = library:create(
			"TextButton",
			{
				Parent = v448["colorpicker_components"],
				Name = "\0",
				Position = v16(0, 10, 1, -46),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -20, 0, 8),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(25, 25, 29),
				AutoButtonColor = false,
				Text = "",
			}
		)
		library:create("UICorner", { Parent = v448["alpha_gradient"], CornerRadius = v17(0, 6) })
		v448["alpha_picker"] = library:create(
			"TextButton",
			{
				BorderColor3 = v25(0, 0, 0),
				AutoButtonColor = false,
				Text = "",
				AnchorPoint = v14(0, 0.5),
				Parent = v448["alpha_gradient"],
				Name = "\0",
				Position = v16(1, 0, 0.5, 0),
				Size = v16(0, 8, 0, 8),
				ZIndex = 5,
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 0, 0),
			}
		)
		library:create("UICorner", { Parent = v448["alpha_picker"], CornerRadius = v17(0, 9999) })
		library:create(
			"UIStroke",
			{ Color = v25(255, 255, 255), ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = v448["alpha_picker"] }
		)
		library:create(
			"UIGradient",
			{ Color = v28({ v29(0, v25(0, 0, 0)), v29(1, v25(255, 255, 255)) }), Parent = v448["alpha_gradient"] }
		)
		v448["alpha_indicator"] = library:create(
			"ImageLabel",
			{
				ScaleType = Enum.ScaleType.Tile,
				BorderColor3 = v25(0, 0, 0),
				Parent = v448["alpha_gradient"],
				Image = "rbxassetid://18274452449",
				BackgroundTransparency = 1,
				Name = "\0",
				Size = v16(1, 0, 1, 0),
				TileSize = v16(0, 6, 0, 6),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(0, 0, 0),
			}
		)
		library:create(
			"UIGradient",
			{
				Color = v28({ v29(0, v25(112, 112, 112)), v29(1, v25(255, 0, 0)) }),
				Transparency = v30({ v31(0, 0.8062499761581421), v31(1, 0) }),
				Parent = v448["alpha_indicator"],
			}
		)
		library:create("UICorner", { Parent = v448["alpha_indicator"], CornerRadius = v17(0, 6) })
		library:create(
			"UIGradient",
			{
				Rotation = 90,
				Parent = v448["colorpicker_components"],
				Color = v28({ v29(0, v25(255, 255, 255)), v29(1, v25(66, 66, 66)) }),
			}
		)
		v448["input"] = library:create(
			"TextBox",
			{
				FontFace = v61.font,
				AnchorPoint = v14(1, 1),
				Text = "",
				Parent = v448["colorpicker_components"],
				Name = "\0",
				TextTruncate = Enum.TextTruncate.AtEnd,
				BorderSizePixel = 0,
				PlaceholderColor3 = v25(255, 255, 255),
				CursorPosition = -1,
				ClearTextOnFocus = false,
				TextSize = 14,
				TextColor3 = v25(72, 72, 72),
				BorderColor3 = v25(0, 0, 0),
				Position = v16(1, -8, 1, -11),
				Size = v16(1, -16, 0, 18),
				BackgroundColor3 = v25(26, 28, 36),
			}
		)
		library:create("UICorner", { Parent = v448["input"], CornerRadius = v17(0, 3) })
		v448["UICorenr"] =
			library:create("UICorner", { Parent = v448["colorpicker_holder"], Name = "\0", CornerRadius = v17(0, 4) })
	end
	v438.set_visible = function(v842)
		if v842 then
			local v1337 = (library.Global3DRenderMode and library.GlobalSurfaceGui) or library["items"]
			if not v1337 or not v1337.Parent then
				v438.open = false
				return
			end
		end
		v448["colorpicker_fade"].BackgroundTransparency = 0
		if library.Global3DRenderMode then
			v448["colorpicker_holder"].Parent = (v842 and library.GlobalSurfaceGui) or library["other"]
		else
			v448["colorpicker_holder"].Parent = (v842 and library["items"]) or library["other"]
		end
		local v844 = v448["colorpicker"].AbsolutePosition
		local v845 = v448["colorpicker"].AbsoluteSize
		v448["colorpicker_holder"].Position = v23(v844.X, v844.Y + v845.Y + 4)
		library:tween(v448["colorpicker_fade"], { BackgroundTransparency = 1 }, Enum.EasingStyle.Quad, 0.4)
		library:tween(v448["colorpicker_holder"], { Position = v448["colorpicker_holder"].Position + v23(0, 20) })
		if v842 then
			task.defer(function()
				if v438.open then
					print("alpha_gradient AbsoluteSize:", v448["alpha_gradient"].AbsoluteSize)
					print("alpha_picker AbsoluteSize:", v448["alpha_picker"].AbsoluteSize)
					v438.set()
				end
			end)
		end
		if not (v436.sanity and (library.current_open == v436) and v436.open) then
			library:close_element(v438)
		end
	end
	v438.set = function(v847, v848)
		if type(v847) == "boolean" then
			return
		end
		if v847 then
			v442, v443, v444 = v847:ToHSV()
		end
		if v848 then
			v445 = v848
		end
		local v849 = v27(v442, v443, v444)
		library:tween(
			v448["hue_picker"],
			{ Position = v16(
				0,
				(v448["hue_gradient"].AbsoluteSize.X - v448["hue_picker"].AbsoluteSize.X) * v442,
				0.5,
				0
			) },
			Enum.EasingStyle.Linear,
			0.05
		)
		library:tween(
			v448["alpha_picker"],
			{
				Position = v16(
					0,
					(v448["alpha_gradient"].AbsoluteSize.X - v448["alpha_picker"].AbsoluteSize.X) * (1 - v445),
					0.5,
					0
				),
			},
			Enum.EasingStyle.Linear,
			0.05
		)
		library:tween(
			v448["satvalpicker"],
			{
				Position = v16(
					0,
					v443 * (v448["saturation_holder"].AbsoluteSize.X - v448["satvalpicker"].AbsoluteSize.X),
					1,
					1 - (v444 * (v448["saturation_holder"].AbsoluteSize.Y - v448["satvalpicker"].AbsoluteSize.Y))
				),
			},
			Enum.EasingStyle.Linear,
			0.05
		)
		v448["alpha_indicator"]:FindFirstChildOfClass("UIGradient").Color =
			v28({ v29(0, v25(112, 112, 112)), v29(1, v27(v442, 1, 1)) })
		v448["colorpicker"].BackgroundColor3 = v849
		v448["colorpicker_inline"].BackgroundColor3 = v849
		v448["saturation_holder"].BackgroundColor3 = v27(v442, 1, 1)
		v448["hue_picker"].BackgroundColor3 = v27(v442, 1, 1)
		v448["alpha_picker"].BackgroundColor3 = v27(v442, 1, 1 - v445)
		v448["satvalpicker"].BackgroundColor3 = v27(v442, v443, v444)
		v58[v438.flag] = { Color = v849, Transparency = v445 }
		local v847 = v448["colorpicker"].BackgroundColor3
		v448["input"].Text = string.format(
			"%s, %s, %s, ",
			library:round(v847.R * 255),
			library:round(v847.G * 255),
			library:round(v847.B * 255)
		)
		v448["input"].Text ..= library:round(1 - v445, 0.01)
		v438.callback(v849, v445)
	end
	v438.update_color = function()
		local v859
		if library.Global3DRenderMode and library._3DSurfaceGui then
			local v1340 = v1:GetMouseLocation()
			local v1341 = library._3DSurfaceGui.CanvasSize
			local v1342 = v32.ViewportSize
			v859 = v14(v1340.X * (v1341.X / v1342.X), v1340.Y * (v1341.Y / v1342.Y))
		else
			local v1343 = v1:GetMouseLocation()
			v859 = v14(v1343.X, v1343.Y - v35)
		end
		if v439 then
			v443 = math.clamp((v859 - v448["sat"].AbsolutePosition).X / v448["sat"].AbsoluteSize.X, 0, 1)
			v444 = 1 - math.clamp((v859 - v448["sat"].AbsolutePosition).Y / v448["sat"].AbsoluteSize.Y, 0, 1)
		elseif v440 then
			v442 =
				math.clamp((v859 - v448["hue_gradient"].AbsolutePosition).X / v448["hue_gradient"].AbsoluteSize.X, 0, 1)
		elseif v441 then
			v445 = 1
				- math.clamp(
					(v859 - v448["alpha_gradient"].AbsolutePosition).X / v448["alpha_gradient"].AbsoluteSize.X,
					0,
					1
				)
		end
		v438.set()
	end
	v448["colorpicker"].MouseButton1Click:Connect(function()
		v438.open = not v438.open
		v438.set_visible(v438.open)
	end)
	local v452
	local v453
	local function v454(v861)
		if v861.UserInputType == Enum.UserInputType.MouseButton1 then
			v439 = false
			v440 = false
			v441 = false
			if v452 then
				v452:Disconnect()
				v452 = nil
			end
			if v453 then
				v453:Disconnect()
				v453 = nil
			end
		end
	end
	local function v455(v862)
		if v862 == "alpha" then
			v441 = true
		elseif v862 == "hue" then
			v440 = true
		elseif v862 == "sat" then
			v439 = true
		end
		if not v452 then
			v452 = v1.InputChanged:Connect(function(v1401)
				if (v439 or v440 or v441) and (v1401.UserInputType == Enum.UserInputType.MouseMovement) then
					v438.update_color()
				end
			end)
		end
		if not v453 then
			v453 = v1.InputEnded:Connect(v454)
		end
	end
	v448["alpha_gradient"].MouseButton1Down:Connect(function()
		v455("alpha")
	end)
	v448["hue_gradient"].MouseButton1Down:Connect(function()
		v455("hue")
	end)
	v448["sat"].MouseButton1Down:Connect(function()
		v455("sat")
	end)
	v448["input"].FocusLost:Connect(function()
		local v863 = v448["input"].Text
		local v864, v865, v866, v867 = library:convert(v863)
		if v864 and v865 and v866 and v867 then
			v438.set(v25(v864, v865, v866), 1 - v867)
		end
	end)
	v448["input"].Focused:Connect(function()
		library:tween(v448["input"], { TextColor3 = v25(245, 245, 245) })
	end)
	v448["input"].FocusLost:Connect(function()
		library:tween(v448["input"], { TextColor3 = v25(72, 72, 72) })
	end)
	v438.set(v438.color, v438.alpha)
	v59[v438.flag] = v438.set
	return setmetatable(v438, library)
end
library.textbox = function(v457, v458)
	local v459 = {
		name = v458.name or "TextBox",
		placeholder = v458.placeholder or v458.placeholdertext or v458.holder or v458.holdertext or "type here...",
		default = v458.default or "",
		flag = v458.flag or library:next_flag(),
		numeric = v458.numeric or false,
		callback = v458.callback or function() end,
		visible = v458.visible or true,
		items = {},
	}
	v58[v459.flag] = v459.default
	local v462 = v459.items
	v462["textbox"] = library:create(
		"TextButton",
		{
			LayoutOrder = 0,
			Text = "",
			Parent = v457.items["elements"],
			Name = "\0",
			BackgroundTransparency = 1,
			Size = v16(1, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BorderSizePixel = 0,
		}
	)
	library:create(
		"UIListLayout",
		{
			Parent = v462["textbox"],
			Padding = v17(0, 3),
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
		}
	)
	library:create(
		"UIPadding",
		{ Parent = v462["textbox"], PaddingTop = v17(0, 6), PaddingBottom = v17(0, 2), PaddingLeft = v17(0, 6), PaddingRight = v17(
			0,
			6
		) }
	)
	v462["name"] = library:create(
		"TextLabel",
		{
			LayoutOrder = 0,
			FontFace = v61.font,
			TextColor3 = v25(255, 255, 255),
			TextTransparency = 0.2,
			Text = v459.name,
			Parent = v462["textbox"],
			Name = "\0",
			Size = v16(1, 0, 0, 13),
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			BorderSizePixel = 0,
			TextSize = 12,
		}
	)
	v462["input_container"] = library:create(
		"Frame",
		{
			LayoutOrder = 1,
			Parent = v462["textbox"],
			Name = "\0",
			BackgroundColor3 = v25(26, 28, 36),
			BorderSizePixel = 0,
			ClipsDescendants = true,
			Size = v16(1, 0, 0, 24),
		}
	)
	library:create("UICorner", { Parent = v462["input_container"], CornerRadius = v17(0, 3) })
	v462["uistroke"] =
		library:create("UIStroke", { Parent = v462["input_container"], Transparency = 0.65, Color = v25(45, 48, 58) })
	v462["input"] = library:create(
		"TextBox",
		{
			FontFace = v61.font,
			Text = "",
			Parent = v462["input_container"],
			Name = "\0",
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = v16(0, 8, 0.5, 0),
			Size = v16(1, -16, 0, 16),
			ClearTextOnFocus = false,
			PlaceholderText = v459.placeholder,
			PlaceholderColor3 = v25(120, 120, 130),
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = 12,
			TextColor3 = v25(255, 255, 255),
			TextTransparency = 0.35,
		}
	)
	v459.set = function(v868)
		if v459.numeric then
			v868 = tostring(v868):gsub("[^0-9.]", "")
		end
		v58[v459.flag] = v868
		v462["input"].Text = v868
		v459.callback(v868)
	end
	v462["input"]:GetPropertyChangedSignal("Text"):Connect(function()
		local v871 = v462["input"].Text
		if v459.numeric then
			local v1344 = v871:gsub("[^0-9.]", "")
			if v1344 ~= v871 then
				v462["input"].Text = v1344
				return
			end
		end
		v58[v459.flag] = v871
		v459.callback(v871)
	end)
	v462["input"].Focused:Connect(function()
		library:tween(v462["input"], { TextTransparency = 0 })
		library:tween(v462["uistroke"], { Transparency = 0.25 })
	end)
	v462["input"].FocusLost:Connect(function()
		library:tween(v462["input"], { TextTransparency = 0.35 })
		library:tween(v462["uistroke"], { Transparency = 0.65 })
	end)
	if v459.default ~= "" then
		v459.set(v459.default)
	end
	v59[v459.flag] = v459.set
	return setmetatable(v459, library)
end
library.keybind = function(v470, v471)
	local v472 = {
		flag = v471.flag or library:next_flag(),
		callback = v471.callback or function() end,
		name = v471.name or nil,
		ignore_key = v471.ignore or false,
		key = v471.key or nil,
		mode = v471.mode or "Toggle",
		active = v471.default or false,
		open = false,
		binding = nil,
		hold_instances = {},
		items = {},
	}
	v58[v472.flag] = { mode = v472.mode, key = v472.key, active = v472.active }
	local v474 = v470.items and (v470.items["right_components"] ~= nil)
	local v475 = v472.items
	do
		if not v474 then
			v475["keybind_element"] = library:create(
				"TextButton",
				{
					FontFace = v61.font,
					TextColor3 = v25(0, 0, 0),
					BorderColor3 = v25(0, 0, 0),
					Text = "",
					Parent = v470.items["elements"],
					Name = "\0",
					BackgroundTransparency = 1,
					Size = v16(1, 0, 0, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.Y,
					TextSize = 14,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
			v475["name"] = library:create(
				"TextLabel",
				{
					FontFace = v61.font,
					TextColor3 = v25(255, 255, 255),
					BorderColor3 = v25(0, 0, 0),
					Text = v472.name,
					Parent = v475["keybind_element"],
					Name = "\0",
					Size = v16(1, 0, 0, 0),
					BackgroundTransparency = 1,
					TextTransparency = 0.2,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 13,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
			library:create("UIPadding", { Parent = v475["name"], PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) })
			v475["right_components"] = library:create(
				"Frame",
				{
					Parent = v475["keybind_element"],
					Name = "\0",
					Position = v16(1, 0, 0, 0),
					BorderColor3 = v25(0, 0, 0),
					Size = v16(0, 0, 1, 0),
					BorderSizePixel = 0,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
			library:create(
				"UIListLayout",
				{
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					Parent = v475["right_components"],
					Padding = v17(0, 7),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}
			)
		end
		v475["keybind_holder"] = library:create(
			"TextButton",
			{
				FontFace = v61.font,
				TextColor3 = v25(0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				Parent = (v474 and v470.items["right_components"]) or v475["right_components"],
				AutoButtonColor = false,
				AnchorPoint = v14(1, 0),
				Size = v16(0, 0, 0, 16),
				Name = "\0",
				Position = v16(1, 0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				TextSize = 14,
				BackgroundColor3 = v25(26, 28, 36),
			}
		)
		library:create("UICorner", { Parent = v475["keybind_holder"], CornerRadius = v17(0, 4) })
		v475["key"] = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				TextColor3 = v25(86, 86, 87),
				BorderColor3 = v25(0, 0, 0),
				Text = "NONE",
				Parent = v475["keybind_holder"],
				Name = "\0",
				Size = v16(1, -12, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIPadding",
			{ Parent = v475["key"], PaddingTop = v17(0, 1), PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) }
		)
		v475["dropdown"] = library:create(
			"Frame",
			{
				BorderColor3 = v25(0, 0, 0),
				Parent = library["items"],
				Name = "\0",
				BackgroundTransparency = 1,
				Position = v16(0, 0, 0, 0),
				Size = v16(0, 0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = v25(0, 0, 0),
			}
		)
		v475["inline"] = library:create(
			"Frame",
			{
				Parent = v475["dropdown"],
				Size = v16(1, 0, 1, 0),
				Name = "\0",
				ClipsDescendants = true,
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(22, 22, 24),
			}
		)
		library:create(
			"UIPadding",
			{ PaddingBottom = v17(0, 6), PaddingTop = v17(0, 3), PaddingLeft = v17(0, 3), Parent = v475["inline"] }
		)
		library:create(
			"UIListLayout",
			{ Parent = v475["inline"], Padding = v17(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }
		)
		library:create("UICorner", { Parent = v475["inline"], CornerRadius = v17(0, 4) })
		local v877 = { "Hold", "Toggle", "Always" }
		v472.y_size = 20
		for v1133, v1134 in v877 do
			local v1135 = library:create(
				"TextButton",
				{
					FontFace = v61.font,
					TextColor3 = v25(72, 72, 73),
					BorderColor3 = v25(0, 0, 0),
					Text = v1134,
					Parent = v475["inline"],
					Name = "\0",
					Size = v16(0, 0, 0, 0),
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 14,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
			v472.hold_instances[v1134] = v1135
			library:apply_theme(v1135, "accent", "TextColor3")
			v472.y_size += v1135.AbsoluteSize.Y
			library:create(
				"UIPadding",
				{ Parent = v1135, PaddingTop = v17(0, 1), PaddingRight = v17(0, 5), PaddingLeft = v17(0, 5) }
			)
			v1135.MouseButton1Click:Connect(function()
				v472.set(v1134)
				v472.set_visible(false)
				v472.open = false
			end)
		end
	end
	v472.modify_mode_color = function(v879)
		for v1137, v1138 in v472.hold_instances do
			v1138.TextColor3 = v25(72, 72, 72)
		end
		v472.hold_instances[v879].TextColor3 = v55.preset.accent
	end
	v472.set_mode = function(v882)
		v472.mode = v882
		if v882 == "Always" then
			v472.set(true)
		elseif v882 == "Hold" then
			v472.set(false)
		end
		v58[v472.flag]["mode"] = v882
		v472.modify_mode_color(v882)
	end
	v472.set = function(v885)
		if type(v885) == "boolean" then
			v472.active = v885
			if v472.mode == "Always" then
				v472.active = true
			end
		elseif tostring(v885):find("Enum") then
			v885 = ((v885.Name == "Escape") and "NONE") or v885
			v472.key = v885 or "NONE"
		elseif v50({ "Toggle", "Hold", "Always" }, v885) then
			if v885 == "Always" then
				v472.active = true
			end
			v472.mode = v885
			v472.set_mode(v472.mode)
		elseif type(v885) == "table" then
			v885.key = ((type(v885.key) == "string") and (v885.key ~= "NONE") and library:convert_enum(v885.key))
				or v885.key
			v885.key = ((v885.key == Enum.KeyCode.Escape) and "NONE") or v885.key
			v472.key = v885.key or "NONE"
			v472.mode = v885.mode or "Toggle"
			if v885.active then
				v472.active = v885.active
			end
			v472.set_mode(v472.mode)
		end
		v472.callback(v472.active)
		local v886 = ((tostring(v472.key) ~= "Enums") and (v56[v472.key] or tostring(v472.key):gsub("Enum.", "")))
			or nil
		local v887 = v886 and (tostring(v886):gsub("KeyCode.", ""):gsub("UserInputType.", ""))
		v475["key"].Text = v887
		v58[v472.flag] = { mode = v472.mode, key = v472.key, active = v472.active }
	end
	v472.set_visible = function(v890)
		local v891 = (v890 and v472.y_size) or 0
		library:tween(v475["dropdown"], { Size = v23(v475["keybind_holder"].AbsoluteSize.X, v891) })
		v475["dropdown"].Position = v23(
			v475["keybind_holder"].AbsolutePosition.X,
			v475["keybind_holder"].AbsolutePosition.Y + v475["keybind_holder"].AbsoluteSize.Y + 60
		)
	end
	v475["keybind_holder"].MouseButton1Down:Connect(function()
		task.wait()
		v475["key"].Text = "..."
		v472.binding = library:connection(v1.InputBegan, function(v1140, v1141)
			v472.set(((v1140.KeyCode ~= Enum.KeyCode.Unknown) and v1140.KeyCode) or v1140.UserInputType)
			v472.binding:Disconnect()
			v472.binding = nil
		end)
	end)
	v475["keybind_holder"].MouseButton2Down:Connect(function()
		v472.open = not v472.open
		v472.set_visible(v472.open)
	end)
	library:connection(v1.InputBegan, function(v896, v897)
		if not v897 then
			local v1350 = ((v896.UserInputType == Enum.UserInputType.Keyboard) and v896.KeyCode) or v896.UserInputType
			if v1350 == v472.key then
				if v472.mode == "Toggle" then
					v472.active = not v472.active
					v472.set(v472.active)
				elseif v472.mode == "Hold" then
					v472.set(true)
				end
			end
		end
	end)
	library:connection(v1.InputEnded, function(v898, v899)
		if v899 then
			return
		end
		local v900 = ((v898.UserInputType == Enum.UserInputType.Keyboard) and v898.KeyCode) or v898.UserInputType
		if v900 == v472.key then
			if v472.mode == "Hold" then
				v472.set(false)
			end
		end
	end)
	v472.set({ mode = v472.mode, active = v472.active, key = v472.key })
	v59[v472.flag] = v472.set
	return setmetatable(v472, library)
end
library.button = function(v481, v482)
	local v483 = { name = v482.name or "TextBox", callback = v482.callback or function() end, items = {} }
	local v484 = v483.items
	do
		v484["button_element"] = library:create(
			"Frame",
			{
				Parent = v481.items["elements"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		v484["button"] = library:create(
			"TextButton",
			{
				FontFace = v61.font,
				TextColor3 = v25(0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				Text = "",
				AutoButtonColor = false,
				AnchorPoint = v14(1, 0),
				Parent = v484["button_element"],
				Name = "\0",
				Position = v16(1, -4, 0, 0),
				Size = v16(1, -8, 0, 30),
				BorderSizePixel = 0,
				TextSize = 14,
				BackgroundColor3 = v25(26, 28, 36),
			}
		)
		library:create("UICorner", { Parent = v484["button"], CornerRadius = v17(0, 3) })
		v484["name"] = library:create(
			"TextLabel",
			{
				FontFace = v61.small,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v483.name,
				TextTransparency = 0.5,
				Parent = v484["button"],
				Name = "\0",
				BackgroundTransparency = 1,
				Size = v16(1, 0, 1, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:apply_theme(v484["name"], "accent", "BackgroundColor3")
	end
	v484["button"].Activated:Connect(function()
		v483.callback()
		v484["name"].TextColor3 = v55.preset.accent
		library:tween(v484["name"], { TextColor3 = v25(245, 245, 245) })
	end)
	return setmetatable(v483, library)
end
library.settings = function(v485, v486)
	local v487 = { open = false, items = {}, sanity = true }
	local v488 = v487.items
	do
		v488["outline"] = library:create(
			"Frame",
			{
				Name = "\0",
				Visible = true,
				BorderColor3 = v25(0, 0, 0),
				Parent = library["other"],
				Size = v16(0, 0, 0, 0),
				ClipsDescendants = false,
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = v25(20, 22, 27),
				BackgroundTransparency = 0.15,
			}
		)
		library:create("UIStroke", { Parent = v488["outline"], Color = v25(45, 48, 58), Transparency = 0.65 })
		library:create("UICorner", { Parent = v488["outline"], CornerRadius = v17(0, 10) })
		v488["inline"] = library:create(
			"Frame",
			{
				Parent = v488["outline"],
				Name = "\0",
				Position = v16(0, 1, 0, 1),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(1, -2, 0, -2),
				AutomaticSize = Enum.AutomaticSize.Y,
				BorderSizePixel = 0,
				BackgroundColor3 = v25(20, 22, 27),
				BackgroundTransparency = 0.15,
			}
		)
		library:create("UICorner", { Parent = v488["inline"], CornerRadius = v17(0, 10) })
		v488["elements"] = library:create(
			"Frame",
			{
				BorderColor3 = v25(0, 0, 0),
				Parent = v488["inline"],
				Name = "\0",
				BackgroundTransparency = 1,
				Position = v16(0, 11, 0, 0),
				Size = v16(1, -20, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{
				Parent = v488["elements"],
				Padding = v17(0, 10),
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}
		)
		library:create("UIPadding", { PaddingBottom = v17(0, 12), PaddingTop = v17(0, 8), Parent = v488["elements"] })
		v488["tick"] = library:create(
			"ImageButton",
			{
				Image = "rbxassetid://128797200442698",
				Name = "\0",
				AutoButtonColor = false,
				Parent = v485.items["right_components"],
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 16, 0, 16),
				BorderSizePixel = 0,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
	end
	local v489 = library:_CreateShadow(v488["outline"])
	local function v490()
		return (library.Global3DRenderMode and library.GlobalSurfaceGui) or v10
	end
	local function v491()
		local v910 = v488["tick"].AbsolutePosition
		local v911 = v488["tick"].AbsoluteSize
		if library.Global3DRenderMode then
			return v23(v910.X, v910.Y + v911.Y + 4)
		else
			return v23(v910.X, v910.Y + v911.Y + 4)
		end
	end
	v487.set_visible = function(v912)
		if v912 then
			local v1351 = (library.Global3DRenderMode and library.GlobalSurfaceGui) or library["items"]
			if not v1351 or not v1351.Parent then
				v487.open = false
				return
			end
		end
		if library.Global3DRenderMode then
			v488["outline"].Parent = (v912 and library.GlobalSurfaceGui) or library["other"]
		else
			v488["outline"].Parent = (v912 and library["items"]) or library["other"]
		end
		v488["outline"].Visible = v912
		if v912 and not v487._dragged then
			task.defer(function()
				if v487.open then
					v488["outline"].Position = v491()
				end
			end)
		end
		if v912 then
			v488["outline"].Size = v23(240, 0)
			v489:Render(true)
		else
			v488["outline"].Size = v23(0, 0)
			v489:Render(false)
			v487._dragged = false
		end
		library:close_element(v487)
	end
	v488["tick"].Activated:Connect(function()
		v487.open = not v487.open
		v487.set_visible(v487.open)
	end)
	v488["tick"]:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
		if not v487.open then
			return
		end
		if v487._dragged then
			return
		end
	end)
	do
		local v915 = false
		local v916, v917
		v488["outline"].InputBegan:Connect(function(v1143)
			if
				(v1143.UserInputType ~= Enum.UserInputType.MouseButton1)
				and (v1143.UserInputType ~= Enum.UserInputType.Touch)
			then
				return
			end
			if library.IsMouseOverElement then
				return
			end
			v915 = true
			v916 = v1143.Position
			v917 = v488["outline"].Position
			v1143.Changed:Connect(function()
				if v1143.UserInputState == Enum.UserInputState.End then
					v915 = false
				end
			end)
		end)
		v1.InputChanged:Connect(function(v1146)
			if not v915 then
				return
			end
			if
				(v1146.UserInputType ~= Enum.UserInputType.MouseMovement)
				and (v1146.UserInputType ~= Enum.UserInputType.Touch)
			then
				return
			end
			local v1147, v1148 = v1146.Position.X, v1146.Position.Y
			if library.Global3DRenderMode and library._3DSurfaceGui then
				local v1402 = library._3DSurfaceGui.CanvasSize
				local v1403 = v32.ViewportSize
				v1147 = v1147 * (v1402.X / v1403.X)
				v1148 = v1148 * (v1402.Y / v1403.Y)
			end
			local v1149 = (
				library.Global3DRenderMode
				and library._3DSurfaceGui
				and (v916.X * (library._3DSurfaceGui.CanvasSize.X / v32.ViewportSize.X))
			) or v916.X
			local v1150 = (
				library.Global3DRenderMode
				and library._3DSurfaceGui
				and (v916.Y * (library._3DSurfaceGui.CanvasSize.Y / v32.ViewportSize.Y))
			) or v916.Y
			v487._dragged = true
			v488["outline"].Position =
				v16(v917.X.Scale, v917.X.Offset + (v1147 - v1149), v917.Y.Scale, v917.Y.Offset + (v1148 - v1150))
		end)
		v488["outline"].InputEnded:Connect(function(v1153)
			if
				(v1153.UserInputType == Enum.UserInputType.MouseButton1)
				or (v1153.UserInputType == Enum.UserInputType.Touch)
			then
				v915 = false
			end
		end)
	end
	v1.InputBegan:Connect(function(v918)
		if not v487.open then
			return
		end
		if
			(v918.UserInputType ~= Enum.UserInputType.MouseButton1) and (v918.UserInputType ~= Enum.UserInputType.Touch)
		then
			return
		end
		if library.IsMouseOverElement then
			return
		end
		if library.IsDropdownOpen then
			return
		end
		local v919 = library:mouse_in_frame(v488["outline"])
		local v920 = library:mouse_in_frame(v488["inline"])
		local v921 = library:mouse_in_frame(v488["tick"])
		if not v919 and not v920 and not v921 then
			v487.open = false
			v487.set_visible(false)
		end
	end)
	return setmetatable(v487, library)
end
library.list = function(v493, v494)
	local v495 = {
		items = {},
		options = v494.options or { "1", "2", "3" },
		flag = v494.flag or library:next_flag(),
		callback = v494.callback or function() end,
		data_store = {},
		current_element,
	}
	local v496 = v495.items
	do
		v496["list"] = library:create(
			"Frame",
			{
				Parent = v493.items["elements"],
				BackgroundTransparency = 1,
				Name = "\0",
				Size = v16(1, 0, 0, 0),
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create(
			"UIListLayout",
			{ Parent = v496["list"], Padding = v17(0, 10), SortOrder = Enum.SortOrder.LayoutOrder }
		)
		library:create("UIPadding", { Parent = v496["list"], PaddingRight = v17(0, 4), PaddingLeft = v17(0, 4) })
	end
	v495.refresh_options = function(v923)
		for v1154, v1155 in v495.data_store do
			v1155:Destroy()
		end
		for v1156, v1157 in v923 do
			local v1158 = library:create(
				"TextButton",
				{
					FontFace = v61.small,
					TextColor3 = v25(0, 0, 0),
					BorderColor3 = v25(0, 0, 0),
					Text = "",
					AutoButtonColor = false,
					AnchorPoint = v14(1, 0),
					Parent = v496["list"],
					Name = "\0",
					Position = v16(1, 0, 0, 0),
					Size = v16(1, 0, 0, 30),
					BorderSizePixel = 0,
					TextSize = 14,
					BackgroundColor3 = v25(26, 28, 36),
				}
			)
			v495.data_store[#v495.data_store + 1] = v1158
			local v1160 = library:create(
				"TextLabel",
				{
					FontFace = v61.font,
					TextColor3 = v25(72, 72, 73),
					BorderColor3 = v25(0, 0, 0),
					Text = v1157,
					Parent = v1158,
					Name = "\0",
					BackgroundTransparency = 1,
					Size = v16(1, 0, 1, 0),
					BorderSizePixel = 0,
					AutomaticSize = Enum.AutomaticSize.XY,
					TextSize = 14,
					BackgroundColor3 = v25(255, 255, 255),
				}
			)
			library:create("UICorner", { Parent = v1158, CornerRadius = v17(0, 3) })
			v1158.MouseButton1Click:Connect(function()
				local v1358 = v495.current_element
				if v1358 and (v1358 ~= v1160) then
					library:tween(v1358, { TextColor3 = v25(72, 72, 72) })
				end
				v58[v495.flag] = v1157
				v495.callback(v1157)
				library:tween(v1160, { TextColor3 = v25(245, 245, 245) })
				v495.current_element = v1160
			end)
			v1160.MouseEnter:Connect(function()
				if v495.current_element == v1160 then
					return
				end
				library:tween(v1160, { TextColor3 = v25(140, 140, 140) })
			end)
			v1160.MouseLeave:Connect(function()
				if v495.current_element == v1160 then
					return
				end
				library:tween(v1160, { TextColor3 = v25(72, 72, 72) })
			end)
		end
	end
	v495.refresh_options(v495.options)
	return setmetatable(v495, library)
end
local v111 = { "config_name_text", "config_name_list", "_menu_accent", "_menu_bind" }
library.get_config = function(v498)
	local v499 = {}
	for v924, v925 in v58 do
		if not library.ignore_flags[v924] then
			v499[v924] = v925
		end
	end
	return v5:JSONEncode(v499)
end
library.load_config = function(v500, v501)
	local v502, v503 = pcall(function()
		return v5:JSONDecode(v501)
	end)
	if not v502 or (type(v503) ~= "table") then
		return
	end
	for v926, v927 in v503 do
		if not library.ignore_flags[v926] then
			if v59[v926] then
				v59[v926](v927)
			else
				v58[v926] = v927
			end
		end
	end
end
local v71
library.update_config_list = function(v504)
	if not v71 then
		return
	end
	local v505 = library.directory .. "/configs"
	local v506 = listfiles(v505) or {}
	local v507 = {}
	for v928, v929 in v506 do
		local v930 = tostring(v929):match("([^\\/]+)%.cfg$")
		if v930 then
			v507[#v507 + 1] = v930
		end
	end
	v71.refresh_options(v507)
	if v507[1] and ((v58["config_name_list"] == nil) or (v58["config_name_list"] == "")) then
		v58["config_name_list"] = v507[1]
	end
end
library.init_config = function(v508, v509)
	for v931, v932 in v111 do
		library.ignore_flags[v932] = true
	end
	for v934, v935 in { "config_import_text" } do
		library.ignore_flags[v935] = true
	end
	v509:seperator({ name = "Settings" })
	local v510 = v509:tab({ name = "Configs", tabs = { "Main" }, icon = "folder" })
	local v511 = v510:column({})
	local v512 = v511:section({ name = "Configs", size = 1, default = true, icon = "folder" })
	v71 = v512:list({
		options = { "Report", "This", "Error", "To", "Finobe" },
		callback = function(v937) end,
		flag = "config_name_list",
	})
	library:update_config_list()
	local v511 = v510:column({})
	local v512 = v511:section({ name = "Settings", side = "right", size = 1, default = true, icon = "settings" })
	v512:textbox({ name = "Config name:", flag = "config_name_text" })
	v512:button({
		name = "Save",
		callback = function()
			local v938 = ((v58["config_name_text"] ~= "") and v58["config_name_text"]) or v58["config_name_list"]
			local v939 = library.directory .. "/configs/" .. v938 .. ".cfg"
			writefile(v939, library:get_config())
			library:update_config_list()
			v60:create_notification({ name = "Configs", info = "Saved config:\n" .. v938 })
		end,
	})
	v512:button({
		name = "Load",
		callback = function()
			local v940 = library.directory .. "/configs/" .. v58["config_name_list"] .. ".cfg"
			if isfile(v940) then
				library:load_config(readfile(v940))
				library:update_config_list()
				v60:create_notification({ name = "Configs", info = "Loaded config:\n" .. v58["config_name_list"] })
			else
				v60:create_notification({ name = "Configs", info = "File not found:\n" .. v58["config_name_list"] })
			end
		end,
	})
	v512:button({
		name = "Delete",
		callback = function()
			local v941 = library.directory .. "/configs/" .. v58["config_name_list"] .. ".cfg"
			if isfile(v941) then
				delfile(v941)
				library:update_config_list()
				v60:create_notification({ name = "Configs", info = "Deleted config:\n" .. v58["config_name_list"] })
			else
				v60:create_notification({ name = "Configs", info = "File not found:\n" .. v58["config_name_list"] })
			end
		end,
	})
	v512:button({
		name = "Export Config",
		callback = function()
			local v942 = library:get_config()
			local v943 = pcall(setclipboard, v942)
			if v943 then
				v60:create_notification({ name = "Configs", info = "Config copied to clipboard!" })
			else
				v60:create_notification({ name = "Configs", info = "Export failed:\nsetclipboard not supported" })
			end
		end,
	})
	v512:textbox({ name = "Import (paste config):", flag = "config_import_text" })
	v512:button({
		name = "Import Config",
		callback = function()
			local v944 = v58["config_import_text"]
			if not v944 or (v944 == "") then
				v60:create_notification({ name = "Configs", info = "Import failed:\nTextbox is empty" })
				return
			end
			local v945, v946 = pcall(function()
				library:load_config(v944)
			end)
			if v945 then
				v60:create_notification({ name = "Configs", info = "Config imported successfully!" })
				v58["config_import_text"] = ""
			else
				v60:create_notification({ name = "Configs", info = "Import failed:\nInvalid config data" })
			end
		end,
	})
	v512:toggle({ name = "Auto Load", flag = "auto_load", default = true })
	v512:toggle({ name = "Auto Save", flag = "auto_save", default = true })
	v512:colorpicker({
		name = "Menu Accent",
		flag = "_menu_accent",
		callback = function(v947, v948)
			library:update_theme("accent", v947)
		end,
		color = v55.preset.accent,
	})
end
library.watermark = function(v513, v514)
	v514 = v514 or {}
	local v515 = { blocks = {}, renders = {}, visible = true, items = {} }
	local v516 = game:GetService("TextService")
	local v517 = v515.items
	do
		v517["watermark"] = library:create(
			"Frame",
			{
				Parent = library["items"],
				Name = "\0",
				AnchorPoint = v14(1, 0),
				BackgroundColor3 = v25(8, 8, 13),
				BackgroundTransparency = 0.2,
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Position = v16(1, -10, 0, 10),
				Size = v16(0, 120, 0, 30),
				ZIndex = 16,
			}
		)
		library:create("UICorner", { Parent = v517["watermark"], CornerRadius = v17(0, 25) })
		library:create("UIStroke", { Parent = v517["watermark"], Transparency = 0.65, Color = v25(45, 48, 58) })
		v517["list_layout"] = library:create(
			"UIListLayout",
			{
				Parent = v517["watermark"],
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}
		)
		library:create(
			"Frame",
			{ Parent = v517["watermark"], Name = "\0", Size = v16(0, 15, 0, 0), BackgroundTransparency = 1, LayoutOrder = 5 }
		)
	end
	v515.Shadow = library:_CreateShadow(v517["watermark"])
	library:connection(v517["list_layout"]:GetPropertyChangedSignal("AbsoluteContentSize"), function()
		local v951 = library
		if not v951 then
			return
		end
		v951:tween(
			v517["watermark"],
			{ Size = v16(0, v517["list_layout"].AbsoluteContentSize.X + 5, 0, 30) },
			Enum.EasingStyle.Quint,
			0.175
		)
	end)
	library:connection(v517["watermark"]:GetPropertyChangedSignal("BackgroundTransparency"), function()
		if v517["watermark"].BackgroundTransparency > 0.9 then
			v517["watermark"].Visible = false
			v517["watermark"].Parent = nil
		else
			v517["watermark"].Visible = true
			v517["watermark"].Parent = library["items"]
		end
	end)
	v515.Shadow:Render(true)
	v515.set_visible = function(v952, v953)
		v515.visible = v953
		if v953 then
			library:tween(v517["watermark"], { BackgroundTransparency = 0.2 }, Enum.EasingStyle.Quint, 0.175)
			v515.Shadow:Render(true)
		else
			library:tween(v517["watermark"], { BackgroundTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			v515.Shadow:Render(false)
		end
		for v1163, v1164 in v515.renders do
			pcall(v1164, v953)
		end
	end
	v515.add_block = function(v955, v956, v957, v958)
		local v959 = {}
		local v960 = library
		v958 = v958 or (#v515.blocks + 1)
		local v961 = library:create(
			"Frame",
			{
				Parent = v517["watermark"],
				Name = "\0",
				BackgroundColor3 = v25(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				Size = v16(0, 50, 0, 30),
				LayoutOrder = v958,
			}
		)
		local v962 = library:create(
			"TextLabel",
			{
				Parent = v961,
				Name = "\0",
				AnchorPoint = v14(0, 0.5),
				BackgroundColor3 = v25(186, 186, 186),
				BackgroundTransparency = 1,
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				Position = v16(0, 35, 0.5, 0),
				Size = v16(0, 1, 0, 25),
				ZIndex = 17,
				Font = Enum.Font.GothamBold,
				Text = v957 or "",
				TextColor3 = v25(186, 186, 186),
				TextSize = 15,
				TextTransparency = 0.2,
				TextXAlignment = Enum.TextXAlignment.Left,
			}
		)
		local v963 = library:create(
			"TextLabel",
			{
				Parent = v961,
				Name = "\0",
				AnchorPoint = v14(0, 0.5),
				BackgroundColor3 = v25(186, 186, 186),
				BackgroundTransparency = 1,
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				Position = v16(0, 10, 0.5, 0),
				Size = v16(0, 20, 0, 20),
				ZIndex = 17,
				FontFace = Font.new(
					"rbxasset://LuaPackages/Packages/_Index/BuilderIcons/BuilderIcons/BuilderIcons.json",
					Enum.FontWeight.Bold,
					Enum.FontStyle.Normal
				),
				Text = v956 or "",
				TextColor3 = v55.preset.accent,
				TextSize = 18,
				TextTransparency = 0.25,
				TextWrapped = true,
			}
		)
		library:apply_theme(v963, "accent", "TextColor3")
		local function v964()
			local v1165 = v516:GetTextSize(v962.Text, v962.TextSize, Enum.Font.GothamBold, v14(math.huge, math.huge))
			if v959.visible then
				v960:tween(v961, { Size = v16(0, v1165.X + 35, 0, 30) }, Enum.EasingStyle.Quint, 0.5)
			else
				v960:tween(v961, { Size = v16(0, 0, 0, 30) }, Enum.EasingStyle.Quint, 0.5)
			end
		end
		local function v965(v1166)
			if v1166 and v959.visible then
				v960:tween(v962, { TextTransparency = 0.2 }, Enum.EasingStyle.Quint, 0.175)
				v960:tween(v963, { TextTransparency = 0.25 }, Enum.EasingStyle.Quint, 0.175)
			else
				v960:tween(v962, { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
				v960:tween(v963, { TextTransparency = 1 }, Enum.EasingStyle.Quint, 0.175)
			end
		end
		v959.visible = true
		v964()
		v965(v515.visible)
		v49(v515.blocks, v959)
		v49(v515.renders, v965)
		v959.set_visible = function(v1167, v1168)
			v959.visible = v1168
			if v515.visible then
				v965(v1168)
			end
			v964()
		end
		v959.set_text = function(v1170, v1171)
			v962.Text = v1171
			v964()
		end
		v959.set_icon = function(v1173, v1174)
			v963.Text = v1174
		end
		return v959
	end
	return v515
end
library.init_watermark = function(v521, v522)
	local v523 = 0
	local function v524()
		local v970 = 0
		pcall(function()
			local v1176 = v9:FindFirstChild("Network")
			if v1176 then
				local v1404 = v1176:FindFirstChild("ServerStatsItem")
				if v1404 then
					local v1467 = v1404["Data Ping"]:GetValueString()
					v970 = tonumber(v1467:match("%d+")) or 0
				end
			end
			if v970 == 0 then
				v970 = math.floor(v33:GetNetworkPing() * 1000)
			end
		end)
		return v970
	end
	library:connection(v8.Heartbeat, function(v971)
		v523 = math.floor((v523 * 0.7) + (v971 * 1000 * 0.3))
	end)
	local function v525()
		return v523
	end
	local v526 = v522:watermark()
	local v527 = v526:add_block("chart-four-vertical-bars", "0MS")
	local v528 = v526:add_block("chart-four-vertical-bars", "0MS")
	local v529 = v526:add_block("globe-simplified", "roniscripts.cloud")
	local v530 = 0
	library:connection(v8.Heartbeat, function()
		local v972 = tick()
		if (v972 - v530) < 0.5 then
			return
		end
		v530 = v972
		local v973 = v524()
		v527:set_text("Ping: " .. v973 .. " ms")
		local v974 = v525()
		v528:set_text("CPU: " .. v974 .. " ms")
	end)
	return v526
end
v60.refresh_notifs = function(v531)
	local v532 = 50
	for v975, v976 in v60.notifs do
		local v977 = v14(20, v532)
		library:tween(v976, { Position = v23(v977.X, v977.Y) }, Enum.EasingStyle.Quad, 0.4)
		v532 += (v976.AbsoluteSize.Y + 10)
	end
	return v532
end
v60.fade = function(v533, v534, v535)
	local v536 = (v535 and 1) or 0
	library:tween(v534, { BackgroundTransparency = v536 }, Enum.EasingStyle.Quad, 1)
	for v978, v979 in v534:GetDescendants() do
		if not v979:IsA("GuiObject") then
			if v979:IsA("UIStroke") then
				library:tween(v979, { Transparency = v536 }, Enum.EasingStyle.Quad, 1)
			end
			continue
		end
		if v979:IsA("TextLabel") then
			library:tween(v979, { TextTransparency = v536 })
		elseif v979:IsA("Frame") then
			library:tween(
				v979,
				{ BackgroundTransparency = (v979.Transparency and 0.6 and v535 and 1) or 0.6 },
				Enum.EasingStyle.Quad,
				1
			)
		end
	end
end
v60.create_notification = function(v537, v538)
	local v539 = {
		name = v538.name or "This is a title!",
		info = v538.info or "This is extra info!",
		lifetime = v538.lifetime or 3,
		items = {},
		outline,
	}
	local v540 = v539.items
	do
		v540["notification"] = library:create(
			"Frame",
			{
				Parent = library["items"] or library["other"],
				Size = v16(0, 210, 0, 53),
				Name = "\0",
				BorderColor3 = v25(0, 0, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				AnchorPoint = v14(1, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = v25(14, 14, 16),
			}
		)
		library:create(
			"UIStroke",
			{
				Color = v25(23, 23, 29),
				Parent = v540["notification"],
				Transparency = 1,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			}
		)
		v540["title"] = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				TextColor3 = v25(255, 255, 255),
				BorderColor3 = v25(0, 0, 0),
				Text = v539.name,
				Parent = v540["notification"],
				Name = "\0",
				BackgroundTransparency = 1,
				Position = v16(0, 7, 0, 6),
				BorderSizePixel = 0,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 14,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create("UICorner", { Parent = v540["notification"], CornerRadius = v17(0, 3) })
		v540["info"] = library:create(
			"TextLabel",
			{
				FontFace = v61.font,
				TextColor3 = v25(145, 145, 145),
				BorderColor3 = v25(0, 0, 0),
				Text = v539.info,
				Parent = v540["notification"],
				Name = "\0",
				Position = v16(0, 9, 0, 22),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextWrapped = true,
				AutomaticSize = Enum.AutomaticSize.XY,
				TextSize = 12,
				BackgroundColor3 = v25(255, 255, 255),
			}
		)
		library:create("UIPadding", { PaddingBottom = v17(0, 17), PaddingRight = v17(0, 8), Parent = v540["info"] })
		v540["bar"] = library:create(
			"Frame",
			{
				AnchorPoint = v14(0, 1),
				Parent = v540["notification"],
				Name = "\0",
				Position = v16(0, 8, 1, -6),
				BorderColor3 = v25(0, 0, 0),
				Size = v16(0, 0, 0, 5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				BackgroundColor3 = v55.preset.accent,
			}
		)
		library:create("UICorner", { Parent = v540["bar"], CornerRadius = v17(0, 999) })
		library:create("UIPadding", { PaddingRight = v17(0, 8), Parent = v540["notification"] })
	end
	local v541 = #v60.notifs + 1
	v60.notifs[v541] = v540["notification"]
	v60:fade(v540["notification"], false)
	local v544 = v60:refresh_notifs()
	v540["notification"].Position = v23(20, v544)
	library:tween(v540["notification"], { AnchorPoint = v14(0, 0) }, Enum.EasingStyle.Quad, 1)
	library:tween(v540["bar"], { Size = v16(1, -8, 0, 5) }, Enum.EasingStyle.Quad, v539.lifetime)
	task.spawn(function()
		task.wait(v539.lifetime)
		v60.notifs[v541] = nil
		v60:fade(v540["notification"], true)
		library:tween(v540["notification"], { AnchorPoint = v14(1, 0) }, Enum.EasingStyle.Quad, 1)
		task.wait(1)
		v540["notification"]:Destroy()
	end)
end
return library

