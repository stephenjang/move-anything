if GetLocale() ~= "enUS" and GetLocale() ~= "enGB" then
	return
end

local MOVANY = {
	ADD = "Add",
	ADDNEW = "Add new",
	ALPHA = "Alpha",
	BINDING_NAME_EDIT_FRAME_EXACT = "Edit frame - Exact",
	BINDING_NAME_EDIT_FRAME_SAFE = "Edit frame - Safe",
	BINDING_NAME_HIDE_FRAME_EXACT = "Hide frame - Exact",
	BINDING_NAME_HIDE_FRAME_SAFE = "Hide frame - Safe",
	BINDING_NAME_MOVE_FRAME_EXACT = "Move frame - Exact",
	BINDING_NAME_MOVE_FRAME_SAFE = "Move frame - Safe",
	BINDING_NAME_RESET_FRAME_EXACT = "Reset frame - Exact",
	BINDING_NAME_RESET_FRAME_SAFE = "Reset frame - Safe",
	BINDING_NAME_SHOW_FRAME_INFO = "Show frame info",
	BINDING_NAME_SYNCHRONIZE_ALL_ELEMENTS = "Synchronize all elements",
	BINDING_NAME_TOGGLE_MA_WINDOW = "Toggle MA window",
	CAN_BE_SCALED_LABEL = "W: %s H: %s",
	CAT_ACHIEVEMENTS_QUESTS = "Achievements & Quests",
	CAT_ARENA = "Arena",
	CAT_BATTLEGROUNDS_PVP = "Battlegrounds & PvP",
	CAT_BLIZZARD_ACTION_BARS = "Blizzard Action Bars",
	CAT_BLIZZARD_BAGS = "Blizzard Bags",
	CAT_BLIZZARD_BANK_AND_VOID_STORAGE = "Blizzard Bank and VoidStorage",
	CAT_BLIZZARD_BOTTOM_BAR = "Blizzard Bottom Bar",
	CAT_BOSS_SPECIFIC_FRAMES = "Boss Specific Frames",
	CAT_CLASS_SPECIFIC = "Class Specific",
	CAT_CUSTOM_FRAMES = "Custom Frames",
	CAT_DUNGEONS_RAIDS = "Dungeons & Raids",
	CAT_GAME_MENU = "Game Menu",
	CAT_GARRISON = "Garrison",
	CAT_GUILD = "Guild",
	CAT_INFO_PANELS = "Info Panels",
	CAT_LOOT = "Loot",
	CAT_MA_INTERNAL_ELEMENTS = "MA Internal Elements",
	CAT_MAP = "Map",
	CAT_MINIMAP = "Minimap",
	CAT_MISCELLANEOUS = "Miscellaneous",
	CAT_MOVE_ANYTHING = "MoveAnything",
	CAT_ORDER_HALL = "Order Hall",
	CAT_PET_BATTLE = "PetBattle",
	CAT_SHIPYARD = "Shipyard",
	CAT_STORE = "Store",
	CAT_UNIT_FOCUS = "Unit: Focus",
	CAT_UNIT_PARTY = "Unit: Party",
	CAT_UNIT_PET = "Unit: Pet",
	CAT_UNIT_PLAYER = "Unit: Player",
	CAT_UNIT_TARGET = "Unit: Target",
	CAT_VEHICLE = "Vehicle",
	CLOSEGUIONESC = "Escape key closes main window",
	CMD_SYNTAX_DELETE = "Syntax: /movedelete ProfileName",
	CMD_SYNTAX_EXPORT = "Syntax: /moveexport ProfileName",
	CMD_SYNTAX_HIDE = "Syntax: /hide ProfileName",
	CMD_SYNTAX_IMPORT = "Syntax: /moveimport ProfileName",
	CMD_SYNTAX_MAFE = "Syntax: /mafe frameName",
	CMD_SYNTAX_UNMOVE = "Syntax: /unmove frameName",
	DELETE = "Delete",
	DISABLED_DURING_COMBAT = "Disabled during combat",
	DISERRORMES = "Toggles printing of error messages on/off.",
	DISERRORMESNO = "Disable error messages",
	DONSEARCHFRAMENAME = "Disables searching of actual frame names.",
	DONTSEARCH = "Dont search frame names",
	DONTSYNCINCOMBAT = "Toggles if MoveAnything will synchronize pending frames when leaving combat.\n\nDisabling this may result in protected frames requiring a manual sync when leaving combat.",
	DONTSYNCINCOMBATNO = "Disable sync when leaving combat",
	EL_ACHIEVEMENT_ALERT_1 = "Achievement Alert 1",
	EL_ACHIEVEMENT_ALERT_2 = "Achievement Alert 2",
	EL_ACHIEVEMENTS = "Achievements",
	EL_ACTION_BAR = "Action Bar",
	EL_ACTION_BAR_PAGE_DOWN = "Action Bar Page Down",
	EL_ACTION_BAR_PAGE_NUMBER = "Action Bar Page Number",
	EL_ACTION_BAR_PAGE_NUMBER = "Action Bar Page Number",
	EL_ACTION_BAR_PAGE_UP = "Action Bar Page Up",
	EL_ACTION_BAR_VERTICAL = "Action Bar - Vertical",
	EL_ACTION_STAUS = "Action Staus",
	EL_ALARM_CLOCK = "Alarm Clock",
	EL_ALERTS_FRAMES = "Alerts Frames",
	EL_ALL_BAGS = "All Bags",
	EL_ALL_LOOT_ROLL_FRAME = "All Loot Roll Frame",
	EL_ALLY_PET_2 = "Ally Pet 2",
	EL_ALLY_PET_3 = "Ally Pet 3",
	EL_ALLY_PET_BUFFS = "Ally Pet Buffs",
	EL_ALLY_PET_DEBUFFS = "Ally Pet Debuffs",
	EL_ALLY_PET_PAD_BUFFS = "Ally Pet Pad Buffs",
	EL_ALLY_PET_PAD_DEBUFFS = "Ally Pet Pad Debuffs",
	EL_ALTERNATE_MANA_BAR = "Alternate Mana Bar",
	EL_ALWAYS_UP_FRAME_1 = "AlwaysUp Frame 1",
	EL_ALWAYS_UP_FRAME_2 = "AlwaysUp Frame 2",
	EL_ALWAYS_UP_FRAME_3 = "AlwaysUp Frame 3",
	EL_ARCHAEOLOGY = "Archaeology",
	EL_ARCHEOLOGY_DIGSITE_PROGRESS_BAR = "Archeology Digsite ProgressBar",
	EL_ARENA_BANNER = "Arena Banner",
	EL_ARENA_ENEMY_1 = "Arena Enemy 1",
	EL_ARENA_ENEMY_2 = "Arena Enemy 2",
	EL_ARENA_ENEMY_3 = "Arena Enemy 3",
	EL_ARENA_ENEMY_4 = "Arena Enemy 4",
	EL_ARENA_ENEMY_5 = "Arena Enemy 5",
	EL_ARENA_ENEMY_CASTING_BAR_1 = "Arena Enemy Casting Bar 1",
	EL_ARENA_ENEMY_CASTING_BAR_2 = "Arena Enemy Casting Bar 2",
	EL_ARENA_ENEMY_CASTING_BAR_3 = "Arena Enemy Casting Bar 3",
	EL_ARENA_ENEMY_CASTING_BAR_4 = "Arena Enemy Casting Bar 4",
	EL_ARENA_ENEMY_CASTING_BAR_5 = "Arena Enemy Casting Bar 5",
	EL_ARENA_ENEMY_FRAMES = "ArenaEnemyFrames",
	EL_ARENA_ENEMY_PET_1 = "Arena Enemy Pet 1",
	EL_ARENA_ENEMY_PET_2 = "Arena Enemy Pet 2",
	EL_ARENA_ENEMY_PET_3 = "Arena Enemy Pet 3",
	EL_ARENA_ENEMY_PET_4 = "Arena Enemy Pet 4",
	EL_ARENA_ENEMY_PET_5 = "Arena Enemy Pet 5",
	EL_ARENA_PREP_1 = "Arena Prep 1",
	EL_ARENA_PREP_2 = "Arena Prep 2",
	EL_ARENA_PREP_3 = "Arena Prep 3",
	EL_ARENA_PREP_4 = "Arena Prep 4",
	EL_ARENA_PREP_5 = "Arena Prep 5",
	EL_ARENA_PREP_FRAMES = "ArenaPrepFrames",
	EL_ARENA_QUEUE_LIST = "Arena Queue List",
	EL_ARENA_REGISTRAR = "Arena Registrar",
	EL_ARENA_TEAM_DETAILS = "Arena Team Details",
	EL_ARTIFACT_BAR = "Artifact Bar",
	EL_ARTIFACT_FRAME = "Artifact Frame",
	EL_AUCTION_CREATION_PROGRESS = "Auction Creation Progress",
	EL_AUCTION_HOUSE = "Auction House",
	EL_AUCTION_HOUSE_DRESSING_ROOM = "Auction House Dressing Room",
	EL_BACKPACK = "Backpack",
	EL_BACKPACK_BUTTON = "Backpack Button",
	EL_BAG_1 = "Bag 1",
	EL_BAG_2 = "Bag 2",
	EL_BAG_3 = "Bag 3",
	EL_BAG_4 = "Bag 4",
	EL_BAG_BUTTON_1 = "Bag Button 1",
	EL_BAG_BUTTON_2 = "Bag Button 2",
	EL_BAG_BUTTON_3 = "Bag Button 3",
	EL_BAG_BUTTON_4 = "Bag Button 4",
	EL_BAG_BUTTONS = "Bag Buttons",
	EL_BAG_BUTTONS_VERTICAL = "Bag Buttons - Vertical",
	EL_BAG_ITEM_SEARCH = "Bag Item Search",
	EL_BANK = "Bank",
	EL_BANK_BAG_1 = "Bank Bag 1",
	EL_BANK_BAG_2 = "Bank Bag 2",
	EL_BANK_BAG_3 = "Bank Bag 3",
	EL_BANK_BAG_4 = "Bank Bag 4",
	EL_BANK_BAG_5 = "Bank Bag 5",
	EL_BANK_BAG_6 = "Bank Bag 6",
	EL_BANK_BAG_7 = "Bank Bag 7",
	EL_BANK_BAG_ITEMS = "Bank Bag Items",
	EL_BANK_BAG_SLOT_1 = "Bank Bag Slot 1",
	EL_BANK_BAG_SLOT_2 = "Bank Bag Slot 2",
	EL_BANK_BAG_SLOT_3 = "Bank Bag Slot 3",
	EL_BANK_BAG_SLOT_4 = "Bank Bag Slot 4",
	EL_BANK_BAG_SLOT_5 = "Bank Bag Slot 5",
	EL_BANK_BAG_SLOT_6 = "Bank Bag Slot 6",
	EL_BANK_BAG_SLOT_7 = "Bank Bag Slot 7",
	EL_BANK_BAG_SLOTS = "Bank Bag Slots",
	EL_BANK_CLEANUP = "Bank Cleanup",
	EL_BANK_ITEM_SEARCH = "Bank Item Search",
	EL_BANK_MONEY = "Bank Money",
	EL_BANK_MONEY_BORDER = "Bank Money Border",
	EL_BANK_MONEY_COPPER = "Bank Money Copper",
	EL_BANK_MONEY_GOLD = "Bank Money Gold",
	EL_BANK_MONEY_INSET = "Bank Money Inset",
	EL_BANK_MONEY_SILVER = "Bank Money Silver",
	EL_BARBER_SHOP = "Barber Shop",
	EL_BATTLE_NET_POPUP_MESSAGE = "Battle.Net Popup Message",
	EL_BATTLE_PET_TOOLTIP = "BattlePetTooltip",
	EL_BATTLEFIELD_MINI_MAP = "Battlefield Mini Map",
	EL_BATTLEGROUND_MINIMAP_BUTTON = "Battleground Minimap Button",
	EL_BATTLEGROUND_MINIMAP_BUTTON = "Battleground Minimap Button",
	EL_BATTLEGROUND_MINIMAP_BUTTON_TOOLTIP = "Battleground Minimap Button Tooltip",
	EL_BATTLEGROUND_QUEUE = "Battleground Queue",
	EL_BATTLEGROUND_SCOREBOARD = "Battleground Scoreboard",
	EL_BLACK_MARKET_AUCTION = "Black Market Auction",
	EL_BONUS_ROLL_FRAME = "Bonus Roll Frame",
	EL_BONUS_ROLL_ITEM_WON = "BonusRoll Item Won",
	EL_BONUS_ROLL_MONEY_WON = "BonusRoll Money Won",
	EL_BOSS_BANNER = "Boss Banner",
	EL_BOTTOM_FRAME = "Bottom Frame",
	EL_BOTTOM_LEFT_ACTION_BAR = "Bottom Left Action Bar",
	EL_BOTTOM_RIGHT_ACTION_BAR = "Bottom Right Action Bar",
	EL_BREATH_FATIGUE_BAR = "BreathFatigue Bar",
	EL_CALENDAR = "Calendar",
	EL_CALENDAR_EVENT = "Calendar Event",
	EL_CASTING_BAR = "Casting Bar",
	EL_CHALLENGE_KEYSTONE = "Challenge Keystone",
	EL_CHANNEL_PULLOUT = "Channel Pullout",
	EL_CHARACTER_REPUTATION_CURRENCY = "Character / Reputation / Currency",
	EL_CHAT_CHANNEL_CONFIGURATION = "Chat Channel Configuration",
	EL_CHAT_EDIT_BOX = "Chat Edit Box",
	EL_CHAT_EDIT_BOX_LENGTH = "Chat Edit Box Length",
	EL_CHAT_POPUP_TOOLTIP = "Chat Popup Tooltip",
	EL_CLASS_ABILITY_PROC = "Class Ability Proc",
	EL_CLASS_TRAINER = "Class Trainer",
	EL_CLEAN_UP_BAGS = "Clean Up Bags",
	EL_COLLECTIONS = "Collections",
	EL_COLOR_PICKER = "Color Picker",
	EL_COMBO_POINT_FRAME = "Combo Point Frame",
	EL_COMMUNITIES = "Communities",
	EL_CONSOLIDATED_BUFFS = "Consolidated Buffs",
	EL_CRITERIA_ALERT_1 = "Criteria Alert 1",
	EL_CRITERIA_ALERT_2 = "Criteria Alert 2",
	EL_CURRENCY_OPTIONS = "Currency Options",
	EL_DEATHKNIGHT_RUNE_FRAME = "Deathknight Rune Frame",
	EL_DIGSITE_COMPLETE_TOAST_FRAME = "Digsite Complete Toast Frame",
	EL_DRESSING_ROOM = "Dressing Room",
	EL_DUNGEON_COMPLETION_ALERT = "Dungeon Completion Alert",
	EL_DUNGEON_FINDER = "Dungeon Finder",
	EL_DUNGEON_FINDER = "Dungeon Finder",
	EL_DUNGEON_JOURNAL = "Dungeon Journal",
	EL_DUNGEON_RAID_FINDER_QUEUE_STATUS = "Dungeon/Raid Finder Queue Status",
	EL_DUNGEON_READY_DIALOG = "Dungeon Ready Dialog",
	EL_DUNGEON_READY_POPUP = "Dungeon Ready Popup",
	EL_DUNGEON_READY_STATUS = "Dungeon Ready Status",
	EL_DUNGEON_ROLE_CHECK_POPUP = "Dungeon Role Check Popup",
	EL_DUNGEON_STATUS_BUTTON = "Dungeon Status Button",
	EL_DUNGEON_STATUS_BUTTON_TOOLTIP = "Dungeon Status Button Tooltip",
	EL_DURABILITY_FIGURE = "Durability Figure",
	EL_ENEMY_PET_2 = "Enemy Pet 2",
	EL_ENEMY_PET_3 = "Enemy Pet 3",
	EL_ENEMY_PET_BUFFS = "Enemy Pet Buffs",
	EL_ENEMY_PET_DEBUFFS = "Enemy Pet Debuffs",
	EL_ENEMY_PET_FRAME = "Enemy Pet Frame",
	EL_ENEMY_PET_PAD_BUFFS = "Enemy Pet Pad Buffs",
	EL_ENEMY_PET_PAD_DEBUFFS = "Enemy Pet Pad Debuffs",
	EL_ERRORS_WARNING_DISPLAY = "Errors & Warning Display",
	EL_EXPERIENCE_BAR = "Experience Bar",
	EL_EXTRA_ABILITY_BAR = "Extra Ability Bar",
	EL_FLAG_CAPTURE_TIMER_BAR = "Flag Capture Timer Bar",
	EL_FLIGHT_MAP = "Flight Map",
	EL_FLIGHT_PATHS = "Flight Paths",
	EL_FLOATING_BATTLE_PET_TOOLTIP = "FloatingBattlePetTooltip",
	EL_FLOATING_PET_BATTLE_ABILITY_TOOLTIP = "FloatingPetBattleAbilityTooltip",
	EL_FOCUS = "Focus",
	EL_FOCUS_BUFFS = "Focus Buffs",
	EL_FOCUS_CASTING_BAR = "Focus Casting Bar",
	EL_FOCUS_DEBUFFS = "Focus Debuffs",
	EL_FOCUS_PVP_ICON = "Focus PVP Icon",
	EL_FRAMERATE = "Framerate",
	EL_GAME_MENU = "Game Menu",
	EL_GARRISON_ARCHITECT = "Garrison Architect",
	EL_GARRISON_BUILDING_ALERT = "Garrison Building Alert",
	EL_GARRISON_FOLLOWER_ALERT = "Garrison Follower Alert",
	EL_GARRISON_MINIMAP_BUTTON = "Garrison Minimap Button",
	EL_GARRISON_MISSION_ALERT = "Garrison Mission Alert",
	EL_GARRISON_MISSIONS = "Garrison Missions",
	EL_GARRISON_MONUMENTS = "Garrison Monuments",
	EL_GARRISON_REPORT = "Garrison Report",
	EL_GARRISON_WORK_ORDER = "Garrison Work Order",
	EL_GEM_SOCKETING = "Gem Socketing",
	EL_GENERIC_INFO_PANEL_1_LEFT = "Generic Info Panel 1 Left",
	EL_GENERIC_INFO_PANEL_2_CENTER = "Generic Info Panel 2 Center",
	EL_GENERIC_INFO_PANEL_3_RIGHT = "Generic Info Panel 3 Right",
	EL_GM_HELP = "GM Help",
	EL_GOSSIP = "Gossip",
	EL_GUILD = "Guild",
	EL_GUILD_BANK = "Guild Bank",
	EL_GUILD_BANK_DEPOSIT_BUTTON = "Guild Bank Deposit Button",
	EL_GUILD_BANK_ITEM_SEACH = "Guild Bank Item Seach",
	EL_GUILD_BANK_MONEY = "Guild Bank Money",
	EL_GUILD_BANK_MONEY_COPPER = "Guild Bank Money Copper",
	EL_GUILD_BANK_MONEY_GOLD = "Guild Bank Money Gold",
	EL_GUILD_BANK_MONEY_SILVER = "Guild Bank Money Silver",
	EL_GUILD_BANK_SAVE_BUTTON = "Guild Bank Save Button",
	EL_GUILD_BANK_TAB_1 = "Guild Bank Tab 1",
	EL_GUILD_BANK_TAB_2 = "Guild Bank Tab 2",
	EL_GUILD_BANK_TAB_3 = "Guild Bank Tab 3",
	EL_GUILD_BANK_TAB_4 = "Guild Bank Tab 4",
	EL_GUILD_BANK_TAB_5 = "Guild Bank Tab 5",
	EL_GUILD_BANK_TAB_6 = "Guild Bank Tab 6",
	EL_GUILD_BANK_TAB_7 = "Guild Bank Tab 7",
	EL_GUILD_BANK_TAB_8 = "Guild Bank Tab 8",
	EL_GUILD_BANK_WITHDRAW_BUTTON = "Guild Bank Withdraw Button",
	EL_GUILD_BANK_WITHDRAW_MONEY = "Guild Bank Withdraw Money",
	EL_GUILD_BANK_WITHDRAW_MONEY_COPPER = "Guild Bank Withdraw Money Copper",
	EL_GUILD_BANK_WITHDRAW_MONEY_GOLD = "Guild Bank Withdraw Money Gold",
	EL_GUILD_BANK_WITHDRAW_MONEY_SILVER = "Guild Bank Withdraw Money Silver",
	EL_GUILD_CHALLENGE_ACHIEVEMENT_ALERT = "Guild Challenge Achievement Alert",
	EL_GUILD_CONTROL = "Guild Control",
	EL_GUILD_FINDER = "Guild Finder",
	EL_GUILD_INFO = "Guild Info",
	EL_GUILD_INVITE = "Guild Invite",
	EL_GUILD_LOG = "Guild Log",
	EL_GUILD_MEMBER_DETAILS = "Guild Member Details",
	EL_GUILD_REGISTRAR = "Guild Registrar",
	EL_HEAL_DAMAGE_NUMBERS = "Heal/Damage Numbers",
	EL_HONOR_BAR = "Honor Bar",
	EL_INSPECT = "Inspect",
	EL_INTERFACE_OPTIONS = "Interface Options",
	EL_ITEM_UPGRADE = "Item Upgrade",
	EL_KEY_RING = "Key Ring",
	EL_KEY_RING_BUTTON = "Key Ring Button",
	EL_KEYBINDING_OPTIONS = "Keybinding Options",
	EL_LEAVE_VEHICLE_BUTTON = "Leave Vehicle Button",
	EL_LEFT_GRYPHON = "Left Gryphon",
	EL_LEVEL_UP_DISPLAY = "Level Up Display",
	EL_LEVEL_UP_DISPLAY = "LevelUpDisplay",
	EL_LOOKING_FOR_RAID = "Looking For Raid",
	EL_LOOT = "Loot",
	EL_LOOT_ROLL_1 = "Loot Roll 1",
	EL_LOOT_ROLL_2 = "Loot Roll 2",
	EL_LOOT_ROLL_3 = "Loot Roll 3",
	EL_LOOT_ROLL_4 = "Loot Roll 4",
	EL_LOOT_WON_ALERT_FRAME_1 = "Loot Won Alert Frame 1",
	EL_LOOT_WON_ALERT_FRAME1 = "Loot Won Alert Frame1",
	EL_LOOT_WON_ALERT_FRAME10 = "Loot Won Alert Frame10",
	EL_LOOT_WON_ALERT_FRAME2 = "Loot Won Alert Frame2",
	EL_LOOT_WON_ALERT_FRAME3 = "Loot Won Alert Frame3",
	EL_LOOT_WON_ALERT_FRAME4 = "Loot Won Alert Frame4",
	EL_LOOT_WON_ALERT_FRAME5 = "Loot Won Alert Frame5",
	EL_LOOT_WON_ALERT_FRAME6 = "Loot Won Alert Frame6",
	EL_LOOT_WON_ALERT_FRAME7 = "Loot Won Alert Frame7",
	EL_LOOT_WON_ALERT_FRAME8 = "Loot Won Alert Frame8",
	EL_LOOT_WON_ALERT_FRAME9 = "Loot Won Alert Frame9",
	EL_LOSS_OF_CONTROL = "Loss Of Control",
	EL_MACRO_NAME_ICON = "Macro Name & Icon",
	EL_MACRO_OPTIONS = "Macro Options",
	EL_MACROS = "Macros",
	EL_MAGE_ARCANE_CHARGES_POWER_FRAME = "Mage Arcane Charges Power Frame",
	EL_MAILBOX = "Mailbox",
	EL_MAIN_BAR = "Main Bar",
	EL_MAP_COORDINATES = "Map Coordinates",
	EL_MAP_LEVEL = "Map Level",
	EL_MAP_OPTIONS = "Map Options",
	EL_MAP_TRACK_QUEST = "Map Track Quest",
	EL_MAX_LEVEL_BAR_FILLER = "Max Level Bar Filler",
	EL_MERCHANT = "Merchant",
	EL_MICRO_BAGS_BAR = "Micro Bags Bar",
	EL_MICRO_MENU = "Micro Menu",
	EL_MICRO_MENU_SPLIT = "Micro Menu - Split",
	EL_MICRO_MENU_VERTICAL = "Micro Menu - Vertical",
	EL_MINIMAP = "Minimap",
	EL_MINIMAP_BORDER_TEXTURE = "Minimap Border Texture",
	EL_MINIMAP_CALENDAR_BUTTON = "Minimap Calendar Button",
	EL_MINIMAP_CLOCK_BUTTON = "Minimap Clock Button",
	EL_MINIMAP_DUNGEON_DIFFICULTY = "Minimap Dungeon Difficulty",
	EL_MINIMAP_GUILD_GROUP_FLAG = "Minimap Guild Group Flag",
	EL_MINIMAP_MAIL_NOTIFICATION = "Minimap Mail Notification",
	EL_MINIMAP_NORTH_INDICATOR = "Minimap North Indicator",
	EL_MINIMAP_QUEUE_STATUS_BUTTON = "Minimap Queue Status Button",
	EL_MINIMAP_ROUND_BORDER = "Minimap Round Border",
	EL_MINIMAP_TOP_BORDER = "Minimap Top Border",
	EL_MINIMAP_TRACKING_BUTTON = "Minimap Tracking Button",
	EL_MINIMAP_WORLD_MAP_BUTTON = "Minimap World Map Button",
	EL_MINIMAP_ZONE_TEXT = "Minimap Zone Text",
	EL_MINIMAP_ZOOM_IN_BUTTON = "Minimap Zoom In Button",
	EL_MINIMAP_ZOOM_OUT_BUTTON = "Minimap Zoom Out Button",
	EL_MISSING_LOOT_FRAME = "Missing Loot Frame",
	EL_MONEY_WON_FRAME1 = "Money Won Frame1",
	EL_MONEY_WON_FRAME2 = "Money Won Frame2",
	EL_MONEY_WON_FRAME3 = "Money Won Frame3",
	EL_MONEY_WON_FRAME4 = "Money Won Frame4",
	EL_MONEY_WON_FRAME5 = "Money Won Frame5",
	EL_MONK_CHI_FRAME = "Monk Chi Frame",
	EL_MONK_STAGGER_FRAME = "Monk Stagger Frame",
	EL_MOVE_ANYTHING_FRAME_EDITOR_CONFIG = "MoveAnything Frame Editor Config",
	EL_MOVE_ANYTHING_GAME_MENU_BUTTON = "MoveAnything Game Menu Button",
	EL_MOVE_ANYTHING_NUDGER = "MoveAnything Nudger",
	EL_MOVE_ANYTHING_WINDOW = "MoveAnything Window",
	EL_NAVAL_OPERATIONS = "Naval Operations",
	EL_OBJECTIVES_BANNER_FRAME = "Objectives Banner Frame",
	EL_OBJECTIVES_WINDOW = "Objectives Window",
	EL_OBJECTIVES_WINDOW_SCALE = "Objectives Window Scale",
	EL_OPEN_MAIL = "Open Mail",
	EL_ORDER_HALL_COMMAND_BAR = "Order Hall Command Bar",
	EL_ORDER_HALL_MISSIONS = "Order Hall Missions",
	EL_ORDER_HALL_TALENT_ALERT = "Order Hall Talent Alert",
	EL_ORDER_HALL_TALENTS = "Order Hall Talents",
	EL_OTHER_RAIDS = "Other Raids",
	EL_PALADIN_POWER_FRAME = "Paladin Power Frame",
	EL_PARTY_MEMBER_1 = "Party Member 1",
	EL_PARTY_MEMBER_1_DEBUFFS = "Party Member 1 Debuffs",
	EL_PARTY_MEMBER_2 = "Party Member 2",
	EL_PARTY_MEMBER_2_DEBUFFS = "Party Member 2 Debuffs",
	EL_PARTY_MEMBER_3 = "Party Member 3",
	EL_PARTY_MEMBER_3_DEBUFFS = "Party Member 3 Debuffs",
	EL_PARTY_MEMBER_4 = "Party Member 4",
	EL_PARTY_MEMBER_4_DEBUFFS = "Party Member 4 Debuffs",
	EL_PARTY_PET_1 = "Party Pet 1",
	EL_PARTY_PET_2 = "Party Pet 2",
	EL_PARTY_PET_3 = "Party Pet 3",
	EL_PARTY_PET_4 = "Party Pet 4",
	EL_PASS_BUTTON = "Pass Button",
	EL_PET = "Pet",
	EL_PET_ACTION_BAR = "Pet Action Bar",
	EL_PET_ACTION_BAR_VERTICAL = "Pet Action Bar - Vertical",
	EL_PET_BATTLE_PRIMARY_ABILITY_TOOLTIP = "PetBattle Primary Ability Tooltip",
	EL_PET_BATTLE_PRIMARY_UNIT_TOOLTIP = "PetBattle Primary Unit Tooltip",
	EL_PET_CASTING_BAR = "Pet Casting Bar",
	EL_PET_DEBUFFS = "Pet Debuffs",
	EL_PET_SELECTION_FRAME = "Pet Selection Frame",
	EL_PET_STABLE = "Pet Stable",
	EL_PLAYER = "Player",
	EL_PLAYER_ALTERNATIVE_POWER_BAR = "Player Alternative Power Bar",
	EL_PLAYER_ATTACK_ICON = "Player Attack Icon",
	EL_PLAYER_ATTACK_ICON_S_BACKGROUND = "Player Attack Icon's Background",
	EL_PLAYER_ATTACK_ICON_S_GLOW = "Player Attack Icon's Glow",
	EL_PLAYER_BUFFS_CONSOLIDATED_BUFFS_TOOLTIP = "Player Buffs - Consolidated Buffs Tooltip",
	EL_PLAYER_BUFFS_DEFAULT = "Player Buffs Default",
	EL_PLAYER_BUFFS_FROM_RIGHT_TO_LEFT = "Player Buffs From Right to Left",
	EL_PLAYER_DEBUFFS_DEFAULT = "Player Debuffs Default",
	EL_PLAYER_DEBUFFS_FROM_RIGHT_TO_LEFT = "Player Debuffs From Right to Left",
	EL_PLAYER_GROUP_INDICATOR = "Player Group Indicator",
	EL_PLAYER_LEADER_ICON = "Player Leader Icon",
	EL_PLAYER_MASTER_ICON = "Player Master Icon",
	EL_PLAYER_PET_FRAME = "Player Pet Frame",
	EL_PLAYER_PVP_ICON = "Player PVP Icon",
	EL_PLAYER_REST_ICON = "Player Rest Icon",
	EL_PLAYER_REST_ICON_S_GLOW = "Player Rest Icon's Glow",
	EL_PLAYER_STATUS_GLOW = "Player Status Glow",
	EL_PLAYER_STATUS_TEXTURE = "Player Status Texture",
	EL_POWER_ABILITY_BAR = "Power Ability Bar",
	EL_PRESTIGE_BANNER = "Prestige Banner",
	EL_PVP_READY_DIALOG = "PVP Ready Dialog",
	EL_PVP_READY_POPUP = "PVP Ready Popup",
	EL_PVP_WINDOW = "PVP Window",
	EL_QUEST_CHOICE_FRAME = "Quest Choice Frame",
	EL_QUEST_DETAILS = "Quest Details",
	EL_QUEST_DETAILS = "Quest Details",
	EL_QUEST_LOG_NPC_MODEL = "Quest Log NPC Model",
	EL_QUEST_OFFER_RETURN = "Quest Offer / Return",
	EL_QUEST_TALKING_HEAD_FRAME = "Quest Talking Head Frame",
	EL_QUEST_TIMER = "Quest Timer",
	EL_QUICK_JOIN_TOAST = "Quick Join Toast",
	EL_QUICK_JOIN_TOAST_2 = "Quick Join Toast 2",
	EL_QUICK_JOIN_TOAST_BUTTON = "Quick Join Toast Button",
	EL_RAID_BOSS_EMOTE_DISPLAY = "Raid Boss Emote Display",
	EL_RAID_BOSS_HEALTH_BAR_1 = "Raid Boss Health Bar 1",
	EL_RAID_BOSS_HEALTH_BAR_2 = "Raid Boss Health Bar 2",
	EL_RAID_BOSS_HEALTH_BAR_3 = "Raid Boss Health Bar 3",
	EL_RAID_BOSS_HEALTH_BAR_4 = "Raid Boss Health Bar 4",
	EL_RAID_BOSS_HEALTH_BAR_5 = "Raid Boss Health Bar 5",
	EL_RAID_BOSS_POWER_BAR_1 = "Raid Boss Power Bar 1",
	EL_RAID_BOSS_POWER_BAR_2 = "Raid Boss Power Bar 2",
	EL_RAID_BOSS_POWER_BAR_3 = "Raid Boss Power Bar 3",
	EL_RAID_BOSS_POWER_BAR_4 = "Raid Boss Power Bar 4",
	EL_RAID_BOSS_POWER_BAR_5 = "Raid Boss Power Bar 5",
	EL_RAID_FINDER = "Raid Finder",
	EL_RAID_FRAME_BUFF_TOOLTIPS = "Raid Frame Buff Tooltips",
	EL_RAID_FRAME_DEBUFF_TOOLTIPS = "Raid Frame Debuff Tooltips",
	EL_RAID_GROUP_1 = "Raid Group 1",
	EL_RAID_GROUP_2 = "Raid Group 2",
	EL_RAID_GROUP_3 = "Raid Group 3",
	EL_RAID_GROUP_4 = "Raid Group 4",
	EL_RAID_GROUP_5 = "Raid Group 5",
	EL_RAID_GROUP_6 = "Raid Group 6",
	EL_RAID_GROUP_7 = "Raid Group 7",
	EL_RAID_GROUP_8 = "Raid Group 8",
	EL_RAID_MANAGER = "Raid Manager",
	EL_RAID_MANAGER_TOGGLE_BUTTON = "Raid Manager Toggle Button",
	EL_RAID_ROLE_POPUP = "Raid Role Popup",
	EL_RAID_UNIT_FRAMES = "Raid Unit Frames",
	EL_RAID_WARNINGS = "Raid Warnings",
	EL_READING_MATERIALS = "Reading Materials",
	EL_READY_CHECK = "Ready Check",
	EL_REFORGE = "Reforge",
	EL_REPORT_PLAYER_CHEATING = "Report Player Cheating",
	EL_REPORT_PLAYER_NAME = "Report Player Name",
	EL_REPUTATION_DETAILS = "Reputation Details",
	EL_REPUTATION_TRACKER_BAR = "Reputation Tracker Bar",
	EL_RETURN_TO_GRAVEYARD_BUTTON = "Return to Graveyard Button",
	EL_RIGHT_ACTION_BAR = "Right Action Bar",
	EL_RIGHT_ACTION_BAR = "Right Action Bar",
	EL_RIGHT_ACTION_BAR_2 = "Right Action Bar 2",
	EL_RIGHT_ACTION_BAR_2 = "Right Action Bar 2",
	EL_RIGHT_ACTION_BAR_2_HORIZONTAL = "Right Action Bar 2 - Horizontal",
	EL_RIGHT_ACTION_BAR_HORIZONTAL = "Right Action Bar - Horizontal",
	EL_RIGHT_GRYPHON = "Right Gryphon",
	EL_SCENARIO_COMPLETION_ALERT_1 = "Scenario Completion Alert 1",
	EL_SCENARIO_COMPLETION_ALERT_2 = "Scenario Completion Alert 2",
	EL_SHAMAN_TOTEM_FRAME = "Shaman Totem Frame",
	EL_SHIPYARD_FOLLOWER_ALERT = "Shipyard Follower Alert",
	EL_SHIPYARD_MISSION_ALERT = "Shipyard Mission Alert",
	EL_SOCIAL_FRIENDS_WHO_GUILD_CHAT_RAID = "Social - Friends / Who / Guild / Chat / Raid",
	EL_SOUND_VOICE_OPTIONS = "Sound & Voice Options",
	EL_SPECIALIZATION_TALENTS_GLYPHS = "Specialization / Talents / Glyphs",
	EL_SPELLBOOK_PROFESSIONS = "Spellbook / Professions",
	EL_STANCE_BUTTONS = "Stance Buttons",
	EL_STANCE_BUTTONS_VERTICAL = "Stance Buttons - Vertical",
	EL_START_SPLASH = "StartSplash",
	EL_STATIC_POPUP_1 = "Static Popup 1",
	EL_STATIC_POPUP_2 = "Static Popup 2",
	EL_STATIC_POPUP_3 = "Static Popup 3",
	EL_STATIC_POPUP_4 = "Static Popup 4",
	EL_STORE_MODEL_PREVIEW = "Store Model Preview",
	EL_STORE_PURCHASE_ALERT = "Store Purchase Alert",
	EL_STREAMING_DOWNLOAD_ICON = "Streaming Download Icon",
	EL_TABARD_DESIGN = "Tabard Design",
	EL_TALENTS_GLYPHS = "Talents / Glyphs",
	EL_TARGET = "Target",
	EL_TARGET_ALTERNATIVE_POWER_BAR = "Target Alternative Power Bar",
	EL_TARGET_BUFFS = "Target Buffs",
	EL_TARGET_CASTING_BAR = "Target Casting Bar",
	EL_TARGET_COMBO_POINTS_DISPLAY = "Target Combo Points Display",
	EL_TARGET_DEBUFFS = "Target Debuffs",
	EL_TARGET_OF_FOCUS = "Target of Focus",
	EL_TARGET_OF_FOCUS_DEBUFFS = "Target of Focus Debuffs",
	EL_TARGET_OF_TARGET = "Target of Target",
	EL_TARGET_OF_TARGET_DEBUFFS = "Target of Target Debuffs",
	EL_TARGET_PVP_ICON = "Target PVP Icon",
	EL_TARGET_THREAT_INDICATOR = "Target Threat Indicator",
	EL_TICKET_STATUS = "Ticket Status",
	EL_TICKET_STATUS_TUTORIAL = "Ticket Status Tutorial",
	EL_TIME_ALERT_POPUP_MESSAGE = "Time Alert Popup Message",
	EL_TIMER_TRACKER = "Timer tracker",
	EL_TOOLTIP = "Tooltip",
	EL_TOOLTIP_BAG_ITEM = "Tooltip - Bag Item",
	EL_TOOLTIP_GUILD_BANK_ITEM = "Tooltip - Guild Bank Item",
	EL_TOP_CENTER_STATUS_DISPLAY = "Top Center Status Display",
	EL_TOP_LEFT_ART = "Top Left Art",
	EL_TOP_LEFT_CENTER = "Top Left Center",
	EL_TOP_RIGHT_ART = "Top Right Art",
	EL_TOTEM_FRAME = "Totem Frame",
	EL_TRADE = "Trade",
	EL_TRADE_SKILLS = "Trade Skills",
	EL_TRANSMOGRIFICATION = "Transmogrification",
	EL_TUTORIALS_ALERT_BUTTON = "Tutorials Alert Button",
	EL_UNSAVED_TALENT_CHANGES_ALERT = "Unsaved Talent Changes Alert",
	EL_VEHICLE_ACTION_BAR = "Vehicle Action Bar",
	EL_VEHICLE_BAR = "Vehicle Bar",
	EL_VEHICLE_EXPERIENCE_BAR = "Vehicle Experience Bar",
	EL_VEHICLE_HEALTH_BAR = "Vehicle Health Bar",
	EL_VEHICLE_LEAVE_FRAME = "Vehicle Leave Frame",
	EL_VEHICLE_MICRO_BAR = "Vehicle Micro Bar",
	EL_VEHICLE_POWER_BAR = "Vehicle Power Bar",
	EL_VEHICLE_SEAT_INDICATOR = "Vehicle Seat Indicator",
	EL_VIDEO_OPTIONS = "Video Options",
	EL_VOICE_CHAT_TALKERS = "Voice Chat Talkers",
	EL_VOID_STORAGE = "Void Storage",
	EL_WARLOCK_POWER_FRAME = "Warlock Power Frame",
	EL_WEATHER = "Weather",
	EL_WORK_ORDER = "Work Order",
	EL_WORLD_MAP = "World Map",
	EL_WORLD_QUEST_COMPLETE_ALERT = "World Quest Complete Alert",
	EL_ZONE_MINIMAP = "Zone Minimap",
	EL_ZONING_SUBZONE_TEXT = "Zoning Subzone Text",
	EL_ZONING_ZONE_TEXT = "Zoning Zone Text",
	ELEMENT_NOT_FOUND = "UI element not found",
	ELEMENT_NOT_FOUND_NAMED = "UI element not found: %s",
	ERROR_FRAME_FAILED = "An error occured while syncing %s. Resetting the frame and /reload'ing before modifying it again might solve the issue. You can disable this message in the options. If the problem persists please report the following to the author: %s %s %s",
	ERROR_MODULE_FAILED = "An error occured while adjusting %s for %s. You can disable this message in the options. If the problem persists please report the following to the author: %s %s %s %s",
	ERROR_NOT_A_TABLE = "\"%s\" is an unsupported type",
	FE_FORCED_LOCK_POSITION_CONFIRM = "Force position lock? Click again within 5 seconds to confirm",
	FE_FORCED_LOCK_POSITION_TOOLTIP = "Overwrites the element's SetPoint method,\nreplacing it with an empty stub\n\nMay cause taint if the element is protected\nand the stub gets called during combat\n\nRequires a reload or relog after unchecking to\nrestore the original SetPoint method",
	FE_GROUP_RESET_CONFIRM = "Reset Group %i? Click again within 5 seconds to confirm",
	FE_GROUPS_TOOLTIP = "Group %i",
	FE_UNREGISTER_ALL_EVENTS_CONFIRM = "Unregister all events? Click again within 5 seconds to confirm",
	FE_UNREGISTER_ALL_EVENTS_TOOLTIP = "Unregisters any events that the frame is listening to,\nrendering the frame inert\n\nRe-enabling unregistered events will require a reload\nor relog after unchecking this checkbox",
	FRAME_NO_FRAME_EDITOR = "Frame editors is disabled for %s",
	FRAME_ONLY_ONCE_OPENED = "Can only interact with %s once it has been shown",
	FRAME_ONLY_WHEN_BANK_IS_OPEN = "Can only interact with %s while the bank is open",
	FRAME_ONLY_WHEN_VOIDSTORAGE_IS_OPEN = "Can only interact %s is open",
	FRAME_PROTECTED_DURING_COMBAT = "Can't interact with %s during combat",
	FRAME_UNPOSITIONED = "%s is currently unpositioned and can't be moved till it is",
	FRAME_VISIBILITY_ONLY = "%s can only be hidden",
	HOOKALLOWED = "Toggles if MoveAnything will hook CreateFrame.\n\nRequires reload to take effect.",
	HOOKALLOWEDNO = "Disable frame creation hook",
	LIST_HEADING_CATEGORY_AND_FRAMES = "Categories and Frames",
	LIST_HEADING_HIDE = "Hide",
	LIST_HEADING_MOVER = "Mover",
	LIST_HEADING_SEARCH_RESULTS = "Search results: %i",
	MA_OPT_ALWAYS_SHOW_NUDGER = "Show Nudger with main window",
	MA_OPT_ALWAYS_SHOW_NUDGER_TOOLTIP = "Enable to show the nudger with the main window\n\nBy default the Nudger is only shown when interacting with frames.",
	MA_OPT_CLOSE_GUI_ON_ESCAPE = "Escape key closes main window",
	MA_OPT_DISABLE_ERROR_MESSAGES = "Disable error messages",
	MA_OPT_DISABLE_ERROR_MESSAGES_TOOLTIP = "Toggles printing of error messages on/off.",
	MA_OPT_DONT_HOOK_CREATE_FRAME = "Disable frame creation hook",
	MA_OPT_DONT_HOOK_CREATE_FRAME_TOOLTIP = "Toggles if MoveAnything will hook CreateFrame.\n\nRequires reload to take effect.",
	MA_OPT_DONT_SEARCH_FRAME_NAMES = "Don't search frame names",
	MA_OPT_DONT_SEARCH_FRAME_NAMES_TOOLTIP = "Disables searching of actual frame names.",
	MA_OPT_DONT_SYNC_WHEN_LEAVING_COMBAT = "Disable sync when leaving combat",
	MA_OPT_DONT_SYNC_WHEN_LEAVING_COMBAT_TOOLTIP = "Toggles if MoveAnything will synchronize pending frames when leaving combat.\n\nDisabling this may result in protected frames requiring a manual sync when leaving combat.",
	MA_OPT_EXPORT_PROFILE = "Export Profile",
	MA_OPT_FRAME_LIST_ROWS = "List rows",
	MA_OPT_IMPORT_PROFILE = "Import Profile",
	MA_OPT_NO_BAGS = "Disable bag container hook",
	MA_OPT_NO_BAGS_TOOLTIP = "Toggles if MoveAnything will hook containers.\n\nThis should be checked if you use another addon to move your bags.",
	MA_OPT_NO_MMMW = "Disable Minimap mousewheel zoom",
	MA_OPT_NO_MMMW_TOOLTIP = "Toggles Minimap mousewheel zoom on/off.\n\nRequires reload to take effect.",
	MA_OPT_PLAY_SOUND = "Play sound",
	MA_OPT_PLAY_SOUND_TOOLTIP = "Toggles if MoveAnything should play a sound when opening and closing the main window.",
	MA_OPT_PROFILE = "Profile",
	MA_OPT_PROFILE_ADD_TOOLTIP = "Add new",
	MA_OPT_PROFILE_DELETE_TOOLTIP = "Delete",
	MA_OPT_PROFILE_EXPORT = "Export",
	MA_OPT_PROFILE_EXPORT_IMPORT_LABEL = "%s Profile",
	MA_OPT_PROFILE_FROM = "From",
	MA_OPT_PROFILE_IMPORT = "Import",
	MA_OPT_PROFILE_NO_PROFILES = "No profiles available",
	MA_OPT_PROFILE_PROFILE_NOT_MODIFIED = "No profile has modified this frame",
	MA_OPT_PROFILE_PROFILE_NOT_MODIFIED_PLURAL = "No profiles has modified this frame",
	MA_OPT_PROFILE_RENAME_TOOLTIP = "Rename",
	MA_OPT_PROFILE_SAVE_AS_TOOLTIP = "Save as",
	MA_OPT_PROFILE_TO = "To",
	MA_OPT_RESET_ALL = "Reset All",
	MA_OPT_RESET_ALL_TOOLTIP = "Reset all\n\nReset MoveAnything to default settings. Deletes all frame settings, as well as the custom frame list",
	MA_OPT_RESET_PROFILE_TOOLTIP = "Reset profile\n\nResets the profile, deleting all stored frame settings for this profile.",
	MA_OPT_ROWS_SLIDER = "# of rows",
	MA_OPT_SHOW_TOOLTIPS = "Show tooltips",
	MA_OPT_SHOW_TOOLTIPS_TOOLTIP = "Toggles display of tooltips on/off\n\nPressing Shift when mousing over elements will reverse tooltip display behavior.",
	MA_OPT_SQUARE_MM = "Enable square Minimap",
	MA_OPT_SQUARE_MM_TOOLTIP = "Toggles square MiniMap on/off.\n\nHide \"Round Border\" in the \"Minimap\" category to get rid of the overlaying border.",
	MA_OPT_TEXT_STRING = "Text String",
	MA_OPT_VERSION = "Version",
	MOUSEOVER = "Mouseover",
	NO_NAMED_FRAMES_FOUND = "No named elements found",
	NOMMWP = "Toggles Minimap mousewheel zoom on/off.\n\nRequires reload to take effect.",
	NOMMWPNO = "Disable Minimap mousewheel zoom",
	NUDGER1 = "Show Nudger with main window",
	ONLY_ONCE_CREATED = "%s can only be modified after it has been created",
	OPTBAGS1 = "Toggles if MoveAnything will hook containers.\n\nThis should be checked if you use another addon to move your bags.",
	OPTBAGSTOOLTIP = "Disable bag container hook",
	OPTIONTOOLTIP1 = "Enable to show the nudger with the main window\n\nBy default the Nudger is only shown when interacting with frames.",
	OPTIONTOOLTIP2 = "Toggles display of tooltips on/off\n\nPressing Shift when mousing over elements will reverse tooltip display behavior.",
	PARENT = "Parent",
	PARENTS_PARENT = "Parent's Parent",
	PLAYSOUND = "Play sound",
	PLAYSOUNDS = "Toggles if MoveAnything should play a sound when opening and closing the main window.",
	PROFILE_ADD_TEXT = "Enter new profile name",
	PROFILE_ALREADY_EXISTS = "Profile \"%s\" already exists",
	PROFILE_CANT_DELETE_CURRENT_IN_COMBAT = "Can't delete current profile during combat",
	PROFILE_CANT_DELETE_DEFAULT = "The default profile can't be deleted",
	PROFILE_CURRENT = "Current",
	PROFILE_DELETE_TEXT = "Delete profile \"%s\"?",
	PROFILE_DELETED = "Profile deleted: %s",
	PROFILE_EXPORTED = "\"%s\" exported to \"%s\"",
	PROFILE_IMPORTED = "\"%s\" has been imported into \"%s\"",
	PROFILE_RENAME_TEXT = "Enter new name for \"%s\"",
	PROFILE_RESET_CONFIRM = "Reset all frames in the current profile?",
	PROFILE_SAVE_AS_TEXT = "Enter new profile name",
	PROFILE_UNKNOWN = "Unknown profile: %s",
	PROFILES = "Profiles",
	PROFILES_CANT_SWITCH_DURING_COMBAT = "Profiles can't be switched during combat",
	RENAME ="Rename",
	RESET = "Reset",
	RESET_ALL_CONFIRM = "MoveAnything: Reset MoveAnything to installation state?\n\nWarning: this will delete all frame settings and clear out the custom frame list.",
	RESET_FRAME_CONFIRM = "Reset %s? Press again within 5 seconds to confirm",
	RESETALL1 = "Reset all\n\nReset MoveAnything to default settings. Deletes all frame settings, as well as the custom frame list",
	RESETPROFILE1 = "Reset profile\n\nResets the profile, deleting all stored frame settings for this profile.",
	RESETTING_FRAME = "Resetting %s",
	SAFE = "Safe",
	SAVE = "Save",
	SAVEAS = "Save as",
	SCALE = "Scale",
	SEARCH_TEXT = "Search",
	SHOWTOOLTIPS = "Show tooltips",
	SQUARMAP = "Toggles square MiniMap on/off.\n\nHide \"Round Border\" in the \"Minimap\" category to get rid of the overlaying border.",
	SQUARMAPNO = "Enable square Minimap",
	TOGGLE_CATEGORIES_BUTTON_TOOLTIP = "Toggle all categories",
	TOGGLE_FRAME_EDITORS_BUTTON_TOOLTIP = "Toggle visibility on frame editors",
	TOGGLE_FRAME_STACK_BUTTON_TOOLTIP = "Toggle Blizzard's framestack tooltip\n\n A very helpful tool for finding frame names for use with /move or /hide",
	TOGGLE_MODIFIED_FRAMES_ONLY_BUTTON_TOOLTIP = "Show only modified frames",
	TOGGLE_MOVERS_BUTTON_TOOLTIP = "Toggles all movers",
	UNSERIALIZE_FRAME_INVALID_FORMAT = "Invalid format",
	UNSERIALIZE_FRAME_NAME_DIFFERS = "Imported frame name differs from import target",
	UNSERIALIZE_PROFILE_COMPLETED = "Imported %i element(s) into profile \"%s\"",
	UNSERIALIZE_PROFILE_NO_NAME = "Unable to locate profile name",
	UNSUPPORTED_FRAME = "Unsupported frame: %s",
	UNSUPPORTED_TYPE = "Unsupported type: %s"
}

_G.MOVANY = MOVANY
