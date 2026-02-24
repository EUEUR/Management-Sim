local TeamNameComponent1:{string} = {
	"Cloud", "Sentinel", "Quantum", "Virtus", "Apex", "Nexus", "Zenith", "Echo",
	"Nova", "Rogue", "Stealth", "Cyber", "Neon", "Fusion", "Primal", "Omega",
	"Astral", "Eternal", "Vanguard", "Horizon", "Frontier", "Legacy", "Glory",
	"Iron", "Titan", "Storm", "Void", "Crystal", "Shadow", "Solar", "Lunar",
	"Thunder", "Inferno", "Frost", "Tidal", "Gale", "Quake", "Blaze", "Flux"
}

local TeamNameComponent2:{string} = {
	"Dynasty", "Empire", "Syndicate", "Legion", "Collective", "Order", "Guard",
	"Force", "Front", "Alliance", "Cabal", "Agency", "Foundation", "Network",
	"Titans", "Griffins", "Leviathans", "Phantoms", "Spectres", "Chimera",
	"Ravens", "Vipers", "Wolves", "Sharks", "Hawks", "Eagles", "Mammoths",
	"Raiders", "Marauders", "Predators", "Pioneers", "Voyagers", "Ascendants",
	"Harbingers", "Keepers", "Breakers", "Chargers", "Rangers", "Sentinels"
}

local OneWordNames:{string} = {
	"FaZe", "G2", "TSM", "Fnatic", "Evil", "Natus", "Vitality", "Heroic",
	"Complexity", "Mousesports", "Renegades", "OpTic", "Envy", "Luminosity",
	"Immortals", "Dignitas", "Alliance", "Nigma", "OG", "Secret", "TNC",
	"Bleeding", "100", "500", "1", "2", "3", "4", "5"
}
export type Region = {
	Name:string,
	Countries:{string},
	FirstNames:{string},
	LastNames:{string},
}
local Regions:{[number]:Region} = {
	{
		Name = "Europe",
		Countries = {"United Kingdom", "France", "Germany", "Spain", "Italy", "Poland", "Sweden", "Denmark", "Netherlands", "Belgium"},
		FirstNames = {"Oliver", "George", "Noah", "Arthur", "Leo", "Muhammad", "Harry", "Oscar", "Archie", "Henry", "Olivia", "Amelia", "Isla", "Ava", "Lily", "Ivy", "Freya", "Florence", "Mia", "Willow"},
		LastNames = {"Smith", "Jones", "Williams", "Taylor", "Brown", "Davies", "Evans", "Wilson", "Thomas", "Roberts", "Müller", "Schmidt", "Schneider", "Fischer", "Weber", "Meyer", "Wagner", "Becker", "Schulz", "Richter"}
	},
	{
		Name = "Asia-Pacific",
		Countries = {"Japan", "South Korea", "Australia", "India", "Singapore", "Thailand", "Malaysia", "Philippines", "New Zealand", "Indonesia"},
		FirstNames = {"Wei", "Jing", "Hiroto", "Riku", "Min-jun", "Seo-jun", "Oliver", "Thomas", "Lucas", "William", "Arjun", "Vihaan", "Krish", "Aarav", "Sakura", "Yui", "Hana", "Akari", "Rina", "Mei"},
		LastNames = {"Kim", "Lee", "Park", "Choi", "Jeong", "Kang", "Tanaka", "Suzuki", "Takahashi", "Watanabe", "Singh", "Kumar", "Patel", "Shah", "Yadav", "Smith", "Jones", "Williams", "Brown", "Wilson"}
	},
	{
		Name = "North America",
		Countries = {"United States", "Canada", "Mexico", "Guatemala", "Cuba", "Haiti", "Dominican Republic", "Jamaica", "Costa Rica", "Panama"},
		FirstNames = {"Liam", "Noah", "Oliver", "James", "Elijah", "William", "Benjamin", "Lucas", "Henry", "Theodore", "Olivia", "Emma", "Charlotte", "Amelia", "Sophia", "Isabella", "Ava", "Mia", "Evelyn", "Luna"},
		LastNames = {"Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson", "Thomas", "Taylor", "Moore", "Jackson", "Martin"}
	},
	{
		Name = "South America",
		Countries = {"Brazil", "Argentina", "Colombia", "Chile", "Peru", "Venezuela", "Ecuador", "Bolivia", "Paraguay", "Uruguay"},
		FirstNames = {"Miguel", "Arthur", "Heitor", "Davi", "Bernardo", "Sofia", "Alice", "Helena", "Laura", "Valentina", "Mateo", "Santiago", "Matias", "Sebastian", "Benjamin", "Isabella", "Sofia", "Luciana", "Valentina", "Camila"},
		LastNames = {"Silva", "Santos", "Oliveira", "Souza", "Lima", "Gomes", "Costa", "Ribeiro", "Martins", "Carvalho", "Garcia", "Fernandez", "Gonzalez", "Rodriguez", "Lopez", "Martinez", "Perez", "Sanchez", "Ramirez", "Torres"}
	},
	{
		Name = "China",
		Countries = {"China"},
		FirstNames = {"Wei", "Jing", "Lei", "Jian", "Hao", "Li", "Wang", "Chen", "Yang", "Liu", "Mei", "Fang", "Yan", "Hui", "Xiu", "Lin", "Na", "Yue", "Xin", "Rong"},
		LastNames = {"Wang", "Li", "Zhang", "Liu", "Chen", "Yang", "Huang", "Zhao", "Wu", "Zhou", "Sun", "Ma", "Zhu", "Hu", "Guo", "Liang", "Gao", "Lin", "He", "Luo"}
	},
	{
		Name = "Africa",
		Countries = {"Nigeria", "Egypt", "South Africa", "Kenya", "Morocco", "Ghana", "Algeria", "Ethiopia", "Tanzania", "Uganda"},
		FirstNames = {"Chukwu", "Obi", "Kael", "Amari", "Kwame", "Kofi", "Yusuf", "Ali", "Omar", "Hassan", "Thabo", "Kgosi", "Jabulani", "Sibusiso", "Chidi", "Ifeoma", "Ngozi", "Amara", "Fatima", "Aisha"},
		LastNames = {"Okonkwo", "Eze", "Okafor", "Iweala", "Nkosi", "Ndlovu", "Mahmoud", "Hassan", "Ali", "Omar", "Onyango", "Wanjiru", "Mutua", "Otieno", "Abdi", "Mohamed", "Said", "Bakr", "Khalid", "Fares"}
	}
}
export type Role = {
	Name:string,
	Description:string,
}
local RoleNames:{[number]:Role} = {
	{
		Name = "Sniper",
		Description = "Sniper"
	},
	{
		Name = "Anchor",
		Description = "Anchor"
	},
	{
		Name = "Entry",
		Description = "Entry"
	},
	{
		Name = "Support",
		Description = "Support"
	},
	{
		Name = "Lurker",
		Description = "Lurker"
	},
	{
		Name = "Leader",
		Description = "Leader"
	}
}

export type TournamentFormat = "SingleElim" | "DoubleElim" | "RoundRobin" | "Swiss" |"Undefined"

local TournamentFormats = {
	SingleElim = "SingleElim" :: TournamentFormat,
	DoubleElim = "DoubleElim" :: TournamentFormat,
	RoundRobin = "RoundRobin" :: TournamentFormat,
	Swiss      = "Swiss"      :: TournamentFormat,
	Undefined  = "Undefined"  :: TournamentFormat
}
export type idType = number
export type TransferType = {
	id:idType,
	fromTeamId:idType,
	toTeamId:idType,
	playerId:idType,
	startDate:number,
	endDate:number,
}
local LatestPlayerId    :idType=0
local LatestTeamId      :idType=0
local LatestMatchId     :idType=0
local LatestTournamentId:idType=0
local LatestEventId     :idType=0
local LatestTransferId  :idType=0

local PlayersTable:{[idType]:PlayerType}     = {}
local TeamsTable:{[idType]:TeamType}       = {}
local MatchesTable:{[idType]:MatchType}     = {}
local TournamentsTable:{[idType]:TournamentType} = {}
local EventsTable:{[idType]:LinkerType} = {}
local TransfersTable:{[idType]:TransferType} = {}

local ROUNDS_TO_WIN:number = 30
local CURRENT_DATE = 1
local PLAYERS_IN_ACTIVE_ROASTER = 5
local PLAYERS_IN_ACTIVE_ROSTER = 5
local INITIAL_ELO = 800
local VIRTUAL_TEAM_SIZE = PLAYERS_IN_ACTIVE_ROSTER
local MIN_MATCHES = 10
local LOSS_RATE_THRESHOLD = 0.5
local TOURNAMENT_BAD_PLACE = 0.75
local MAX_CONTRACT_YEARS = 5
local K_FACTOR = 150 
local PLAYERS_PER_MATCH = 2 * PLAYERS_IN_ACTIVE_ROSTER

local BASE_SPONSORSHIP = 2000
local UPKEEP_TAX_RATE = 0.01
local REVENUE_PER_FAN = 0.01
local FAN_DECAY_RATE = 0.02
local MAX_SALARY = 10000000
local SYNERGY_IMPACT_FACTOR = 0.2 
local SYNERGY_MIN_MULTIPLIER = 0.8
local SYNERGY_MAX_MULTIPLIER = 1.3
math.randomseed(tick())

local helpers = require(script.Helpers)

local ACTIVE_SIMULATION:SimulationEngineType

--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------
--{{{--------------------PLAYER CLASS----------------------------------------------
--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------

local Player = {}
Player.__index = Player

local PlayerStatus = {FreeAgent = 0,Retired = -1}
local MIN_RATING = 20
local MAX_RATING = 113
local RETIREMENT_AGE = 35
export type PlayerHistory ={
	Wins:number,
	Kills:number,
	Deaths:number,
	PastMatchesId:{idType},
	PastTournamentsId:{idType},
	PastTransfers:{idType}
}

export type PlayerData = {
	id:idType,
	name:string,
	age:number,
	salary:number,
	roleId:number,
	regionId:idType,
	countryId:idType,
	Form:number,
	Signature:number,
	OverallRating:number,
	TeamId:idType,
	history:PlayerHistory,
	contractStartDate:number,
	contractEndYear:number,
	goat_score:number,
	currentContractID:idType,
}
export type PlayerType = typeof(setmetatable({}::PlayerData,Player))

function Player.new(): PlayerType
	LatestPlayerId = LatestPlayerId + 1
	local newId =LatestPlayerId
	local overall = math.floor(
		(math.random(MIN_RATING, MAX_RATING) + 
			math.random(MIN_RATING, MAX_RATING) + 
			math.random(MIN_RATING, MAX_RATING) + 
			math.random(MIN_RATING, MAX_RATING) + 
			math.random(MIN_RATING, MAX_RATING))
			/ 5)
	local regionId = math.random(1, #Regions)
	local region = Regions[regionId]
	local countryId = math.random(1, #region.Countries)
	local countryName = region.Countries[countryId]
	local firstName = region.FirstNames[math.random(1, #region.FirstNames)]
	local lastName = region.LastNames[math.random(1, #region.LastNames)]
	local name = firstName .. " " .. lastName
	local roleId = math.random(1, #RoleNames)
	assert(RoleNames[roleId], "Role data is missing!")

	local self:PlayerType = {}::PlayerType 
	self.id = newId
	self.TeamId = PlayerStatus.FreeAgent
	self.name = name
	self.age = 18
	self.salary = math.random(500, 2500)
	self.roleId = roleId
	self.regionId = regionId
	self.countryId = countryId
	self.Form = math.random(0,100)
	self.Signature = math.random(1000,99999999)
	self.OverallRating = overall
	self.goat_score = 0
	self.history = {
		Wins = 0,
		Kills = 0,
		Deaths = 0,
		PastTournamentsId = {},
		PastMatchesId = {},
		PastTransfers = {},
	}
	PlayersTable[newId] = self
	return setmetatable(self, Player)
end
function Player.__tostring(self:PlayerType)
	assert(self.roleId)
	assert(self.regionId)
	assert(self.countryId)
	local role = RoleNames[self.roleId].Name
	local region = Regions[self.regionId].Name
	local country = Regions[self.regionId].Countries[self.countryId]

	return string.format("[%d] %s (%s, %s, %s) | Overall: %d",
		self.id,
		self.name,
		region,
		country,
		role,
		self.OverallRating
	)
end
function Player.TransferPlayer(self:PlayerType, DestinationTeamId:idType,_durationYears:number?)
	local playerId = self.id
	if not PlayersTable[playerId] then
		warn("Player not found:", playerId)
		return
	end
	if DestinationTeamId > PlayerStatus.FreeAgent and not TeamsTable[DestinationTeamId] then
		warn("Destination team not found:", DestinationTeamId)
		return
	end
	local player:PlayerType = PlayersTable[playerId]
	local sourceTeamId = player.TeamId
	if sourceTeamId == DestinationTeamId then
		warn("Player already on this team/status",DestinationTeamId)
		return
	end
	LatestTransferId = LatestTransferId + 1
	player.TeamId = DestinationTeamId
	local setEndDate = -1
	local durationYears = _durationYears or 0
	if DestinationTeamId == PlayerStatus.Retired or DestinationTeamId == PlayerStatus.FreeAgent then
		setEndDate = -1
	end
	if DestinationTeamId > PlayerStatus.FreeAgent then
		setEndDate = CURRENT_DATE + durationYears*365
	end
	local transfer:TransferType = {
		id = LatestTransferId,
		playerId = playerId,
		fromTeamId = sourceTeamId,
		toTeamId = DestinationTeamId,
		startDate=CURRENT_DATE,
		endDate=setEndDate,
	}
	self.currentContractID = transfer.id
	TransfersTable[LatestTransferId] = transfer
	table.insert(player.history.PastTransfers, transfer.id)
	if sourceTeamId > 0 then
		local SourceTeam:TeamType = TeamsTable[sourceTeamId]
		if SourceTeam then
			for index, rosterId in ipairs(SourceTeam.rosterIds) do
				if rosterId == playerId then
					table.remove(SourceTeam.rosterIds, index)
					break
				end
			end
			table.insert(SourceTeam.history.PastTransfers, transfer.id)
		end
	end
	if DestinationTeamId > 0 then
		local DestinationTeam:TeamType = TeamsTable[DestinationTeamId]
		table.insert(DestinationTeam.rosterIds, playerId)
		table.insert(DestinationTeam.history.PastTransfers, transfer.id)
	end

end
function Player.ChangeForm(self: PlayerType)
	local currentDist = self.Form - 50
	self.Form = 50 + (currentDist * 0.5) + math.random(-10, 10)

	self.Form = math.clamp(self.Form, 0, 100)
end
local PARABOLA_CONFIG = {
	PEAK_AGE = 27, 
	BASE_WIDTH = 12, 
	MAX_GROWTH = 3, 
	MAX_DECLINE = -2, 
	RANDOM_VARIANCE = 1, 
	MIN_RATING = 40, 
	FORCE_RETIRE_AGE = 35, 
}
function Player.YearUpdate(self: PlayerType)
	self.age += 1
	if self.age > RETIREMENT_AGE then
		if self.TeamId ~= PlayerStatus.Retired then
			self:TransferPlayer(PlayerStatus.Retired)
		end
		return
	end
	local cfg = PARABOLA_CONFIG
	local ageDiff = self.age - cfg.PEAK_AGE
	local widthFactor = cfg.BASE_WIDTH * 2
	local changeRate = (-2 * ageDiff / widthFactor)
	local ratingChange
	if ageDiff < 0 then
		ratingChange = changeRate * cfg.MAX_GROWTH
	else
		ratingChange = changeRate * math.abs(cfg.MAX_DECLINE)
	end
	if cfg.RANDOM_VARIANCE > 0 then
		ratingChange = ratingChange + math.random(-cfg.RANDOM_VARIANCE, cfg.RANDOM_VARIANCE)
	end
	ratingChange = math.floor(ratingChange + 0.5)
	self.OverallRating = self.OverallRating + ratingChange
	self.OverallRating = math.max(cfg.MIN_RATING, 
		math.min(99, self.OverallRating))
	if self.age >= cfg.FORCE_RETIRE_AGE and self.OverallRating <= cfg.MIN_RATING + 5 then
		self:TransferPlayer(PlayerStatus.Retired)
		return
	end
	if self.TeamId == PlayerStatus.FreeAgent then --DEFLATION OF SALARY
		self.salary = math.floor(self.salary * 0.8)
		self.salary = math.max(500, self.salary)
	end
	Player.ChangeForm(self)
end

------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
----------------------PLAYER CLASS--------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--

--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------
--{{{---------------------------TEAM CLASS-----------------------------------------
--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------


local Team = {}
Team.__index = Team
export type TeamHistory = {
	PastTransfers:{idType},
	PastTournamentsId:{idType},
	PastMatchesId:{idType}
}
export type TeamData = {
	id:idType,
	name:string,
	rosterIds:{[number]:idType},
	funds:number,
	startDate:number,
	endDate:number?,
	history:TeamHistory,
	fans:number,
	goat_score:number,
}
export type TeamStatus = "Active" | "Disbanded"
local TeamStatus = {
	Active = "Active" ::TeamStatus,
	Disbanded = "Disbanded"::TeamStatus
}

export type TeamType = typeof(setmetatable({}::TeamData,Team))
function Team.GenerateTeamName(): string
	local choice = math.random(1, 6)

	if choice == 1 then
		local word1 = TeamNameComponent1[math.random(1, #TeamNameComponent1)]
		local word2 = TeamNameComponent2[math.random(1, #TeamNameComponent2)]
		return word1 .. " " .. word2

	elseif choice == 2 then
		local name = OneWordNames[math.random(1, #OneWordNames)]
		if name:match("^[0-9]+$") and #name <= 2 then
			return name .. " Esports"
		else
			return name
		end

	elseif choice == 3 then
		local word1 = TeamNameComponent1[math.random(1, #TeamNameComponent1)]
		return word1 .. " Team"

	elseif choice == 4 then
		local word2 = TeamNameComponent2[math.random(1, #TeamNameComponent2)]
		return word2 .. " Squad"

	elseif choice == 5 then
		local word1 = TeamNameComponent1[math.random(1, #TeamNameComponent1)]
		return word1 .. " Esports"

	else -- choice == 6
		local word1 = TeamNameComponent1[math.random(1, #TeamNameComponent1)]
		local word2 = TeamNameComponent2[math.random(1, #TeamNameComponent2)]
		return word1 .. " " .. word2 .. " Pro"
	end
end
function Team.status(self:TeamType):TeamStatus
	if not self.endDate then
		return TeamStatus.Active
	else
		return TeamStatus.Disbanded
	end
end
function Team.new(_name:string?):TeamType
	local name:string
	if not _name then
		name = Team.GenerateTeamName()
	else
		name = _name
	end
	LatestTeamId = LatestTeamId + 1
	local newId:number = LatestTeamId

	local self = {}::TeamType

	self.id = newId
	self.name = name
	self.rosterIds = {}
	self.funds = 100000
	self.fans = 0
	self.goat_score = 0
	self.history = {
		PastTransfers = {},
		PastMatchesId = {},
		PastTournamentsId = {}
	}
	self.startDate = CURRENT_DATE

	TeamsTable[newId] = self

	for i = 1, 5 do
		local newPlayer=Player.new()
		newPlayer:TransferPlayer(self.id,1)
	end
	return setmetatable(self, Team)
end
function Team.newVIRTUAL(replacePlayers:{idType}):TeamType
	local newId = LatestTeamId

	local self = {}::TeamType

	self.id = -newId
	self.name = "Virtual_"..Team.GenerateTeamName()
	self.rosterIds = {}
	self.funds = 100000
	self.history = {
		PastTransfers = {},
		PastMatchesId = {},
		PastTournamentsId = {}
	}


	if #replacePlayers<PLAYERS_IN_ACTIVE_ROASTER then 
		warn("not enough players")
	end
	for i=1,PLAYERS_IN_ACTIVE_ROASTER,1 do
		self.rosterIds[i] = replacePlayers[i]
	end

	return setmetatable(self, Team)
end
function Team.printTeamRoster(self:TeamType)

	print(string.format("--- Roster for %s ---", self.name))
	for _, playerId in ipairs(self.rosterIds) do
		local playerID = playerId::idType
		local player = PlayersTable[playerID]
		if player then
			print(player)
		else
			print("  - Warning: Player with ID " .. playerID .. " not found in database.")
		end
	end
	print("----------------------------------\n")
end
function Team.__tostring(self:TeamType)
	return string.format("[%d] %s | Rating: %d | Funds: %d", 
		self.id, self.name, self:calculateTeamRating(), self.funds)
end
function Team.calculateTeamRating(self: TeamType)
	local totalRating = 0
	local playersOnRoster = {}
	local playerCount = 0

	for _, playerId in ipairs(self.rosterIds) do
		local player = PlayersTable[playerId]
		if player then
			local formModifier = 1 + ((player.Form - 50) * 0.005)
			totalRating = totalRating + (player.OverallRating * formModifier)

			table.insert(playersOnRoster, player)
			playerCount = playerCount + 1
		end
		if playerCount == 5 then break end
	end

	if playerCount < 2 then 
		return playerCount > 0 and (totalRating / playerCount) or 0 
	end

	local totalSynergyLog = 0
	local pairsCount = 0

	for i = 1, #playersOnRoster do
		for j = i + 1, #playersOnRoster do
			local sig1 = playersOnRoster[i].Signature
			local sig2 = playersOnRoster[j].Signature

			local commonFactor = helpers.gcd(sig1, sig2)

			totalSynergyLog = totalSynergyLog + math.log(commonFactor)
			pairsCount = pairsCount + 1
		end
	end

	local avgSynergy = totalSynergyLog / pairsCount

	local deviation = avgSynergy - 1

	local chemistryMult = 1 + (deviation * SYNERGY_IMPACT_FACTOR)

	chemistryMult = math.clamp(chemistryMult, SYNERGY_MIN_MULTIPLIER, SYNERGY_MAX_MULTIPLIER)

	return (totalRating / playerCount) * chemistryMult
end
function Team.GetPlayerDesireScore(self: TeamType, player: PlayerType): number
	local skillValue = player.OverallRating

	local synergyBonus = 1.0
	if #self.rosterIds > 0 then
		local totalSynergyLog = 0
		local count = 0
		for _, rosterPid in ipairs(self.rosterIds) do
			local teammate = PlayersTable[rosterPid]
			if teammate then
				local common = helpers.gcd(player.Signature, teammate.Signature)
				totalSynergyLog = totalSynergyLog + math.log(common)
				count += 1
			end
		end
		if count > 0 then
			local avg = totalSynergyLog / count
			synergyBonus = 1 + ((avg - 1) * 0.2) -- +/- 20% interest
		end
	end

	local agePenalty = (player.age > 28) and (1 - ((player.age - 28) * 0.05)) or 1.0
	return skillValue * synergyBonus * agePenalty
end
function Team.swapPlayers(self:TeamType,player1Id:idType,player2Id:idType)
	local player1 = PlayersTable[player1Id]
	local player2 = PlayersTable[player2Id]
	if not player1 or not player2 then
		print("Error: One or both players not found in database.")
		return
	end
	local index1 = table.find(self.rosterIds, player1Id)
	local index2 = table.find(self.rosterIds, player2Id)
	if not index1 or not index2 then
		print("Error: One or both players not found in team's roster.")
		return
	end
	self.rosterIds[index1] = player2Id
	self.rosterIds[index2] = player1Id
end
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------TEAM CLASS--------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--


--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------
--{{{---------------------------MATCH CLASS----------------------------------------
--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------
local Match = {}
Match.__index = Match
export type MatchData = {
	id:idType,	
	team1id:idType?,
	team2id:idType?,
	score1:number,
	score2:number,
	scheduledTime:number,
	isPlayed: boolean,
	tournamentId: idType?,
	nextMatchIdForLoser:idType?,
	nextMatchIdForWinner:idType?,
}
export type MatchType = typeof(setmetatable({}::MatchData,Match))


function Match.newScheduled(t1: idType?, t2: idType?, tourneyId: idType,matchTime:number,_nextMatchForWinner:idType?,_nextMatchForLoser:idType?): MatchType
	LatestMatchId += 1

	local self = {
		id = LatestMatchId,
		team1id = t1,
		team2id = t2,
		score1 = 0,
		score2 = 0,
		scheduledTime = matchTime,
		isPlayed = false,
		tournamentId = tourneyId,
		nextMatchIdForLoser = _nextMatchForLoser,
		nextMatchIdForWinner = _nextMatchForWinner,
	}::MatchData

	setmetatable(self, Match)
	MatchesTable[LatestMatchId] = self

	ACTIVE_SIMULATION:RegisterMatchToSchedule(LatestMatchId,matchTime)

	return self
end

function Match.Propagate(self:MatchType)
	if not self.isPlayed then
		warn("Match was not played")
		return
	end

	local winnerId = (self.score1 > self.score2) and self.team1id or self.team2id
	local loserId = (self.score1 > self.score2) and self.team2id or self.team1id
	
	if not winnerId then 
		warn("winnerId not found for match")
		return
	end
	if not loserId then 
		warn("loserId not found for match")
		return
	end
	
	if self.nextMatchIdForWinner then
		local nextMatch = MatchesTable[self.nextMatchIdForWinner]
		if not nextMatch then
			warn("Match not found for nextMatchIdForWinner")
			return 
		end
		if not nextMatch.team1id then
			nextMatch.team1id = winnerId
		elseif not nextMatch.team2id then
			nextMatch.team2id = winnerId
		else 
			warn("Match already has teams inside")
			return
		end
	end
	
	if self.nextMatchIdForLoser then
		local nextMatch = MatchesTable[self.nextMatchIdForLoser]
		if not nextMatch then
			warn("Match not found for nextMatchIdForWinner")
			return 
		end
		if not nextMatch.team1id then
			nextMatch.team1id = winnerId
		elseif not nextMatch.team2id then
			nextMatch.team2id = winnerId
		else 
			warn("Match already has teams inside")
			return
		end
	end
end

function Match.Simulate(self:MatchType)
	if self.isPlayed then return end
	local team1 = TeamsTable[self.team1id]
	local team2 = TeamsTable[self.team2id]
	if not team1 or not team2 then return end

	local newId = LatestMatchId

	local rating1 = team1:calculateTeamRating()
	local rating2 = team2:calculateTeamRating()
	local totalRating = rating1 + rating2
	local p = totalRating > 0 and (rating1 / totalRating) or 0.5

	local score1, score2 = 0, 0
	local threshold = math.floor(p * 100)

	for i = 1, ROUNDS_TO_WIN * 2 - 1 do
		local pair = math.random(0, 99)
		if pair < threshold then
			score1 += 1
			if score1 == ROUNDS_TO_WIN then break end
		else
			score2 += 1
			if score2 == ROUNDS_TO_WIN then break end
		end
	end

	self.score1 = score1
	self.score2 = score2
	self.isPlayed = true

	local winnerId = (score1 > score2) and self.team1id or self.team2id
	local loserId = (score1 > score2) and self.team2id or self.team1id
	local winTeam, loseTeam = TeamsTable[winnerId], TeamsTable[loserId]

	local scoreDiff = math.abs(score1 - score2)
	local minScore = math.max(1, math.min(score1, score2))
	local excitementMult = 1 + (math.max(score1, score2) / minScore)

	local underdogBonus = 1.0
	if winTeam.fans < loseTeam.fans then
		local ratio = loseTeam.fans / math.max(1, winTeam.fans)
		underdogBonus = 1 + (math.log(ratio) * 0.1)
	end

	local gain = math.floor(50 * excitementMult * underdogBonus)
	local loss = math.floor(20 / excitementMult)

	winTeam.fans += gain
	loseTeam.fans = math.max(0, loseTeam.fans - loss)

	local baseImpact = 2 + (scoreDiff / 2)
	local upsetMult1 = (rating2 > rating1) and 3 or 1.0
	local upsetMult2 = (rating1 > rating2) and 3 or 1.0

	local t1Chg, t2Chg = 0, 0
	if score1 > score2 then
		t1Chg = baseImpact * upsetMult1; t2Chg = -(baseImpact * 0.8)
	else
		t2Chg = baseImpact * upsetMult2; t1Chg = -(baseImpact * 0.8)
	end

	local function ApplyForm(roster:{idType}, change:number)
		for _, pid in ipairs(roster) do
			local pl = PlayersTable[pid]
			if pl then pl.Form = math.clamp(pl.Form + change + (math.random(-10,10)/10), 0, 100) end
		end
	end
	ApplyForm(team1.rosterIds, t1Chg)
	ApplyForm(team2.rosterIds, t2Chg)

	for _, pl in ipairs(team1.rosterIds) do table.insert(PlayersTable[pl].history.PastMatchesId, newId) end
	for _, pl in ipairs(team2.rosterIds) do table.insert(PlayersTable[pl].history.PastMatchesId, newId) end
	table.insert(team1.history.PastMatchesId, newId)
	table.insert(team2.history.PastMatchesId, newId)
	self:Propagate()
	
end

function VirtualMatch(team1:TeamType, team2:TeamType):MatchType

	local newId = LatestMatchId

	local rating1 = team1:calculateTeamRating()
	local rating2 = team2:calculateTeamRating()
	rating1 = rating1*rating1
	rating2 = rating2*rating2
	local totalRating = rating1 + rating2
	local p = totalRating > 0 and (rating1 / totalRating) or 0.5

	local score1, score2 = 0, 0

	local threshold = math.floor(p * 100)
	local randVal = math.floor(math.random() * 1e10)
	local pairsLeft = 5
	for i = 1, ROUNDS_TO_WIN * 2 - 1 do
		if pairsLeft == 0 then
			randVal = math.floor(math.random() * 1e10)
			pairsLeft = 5
		end

		local pair = randVal % 100
		randVal = math.floor(randVal / 100)
		pairsLeft = pairsLeft - 1
		if pair < threshold then
			score1 = score1 + 1
			if score1 == ROUNDS_TO_WIN then break end
		else
			score2 = score2 + 1
			if score2 == ROUNDS_TO_WIN then break end
		end
	end

	local self = {
		id = newId,
		team1id = team1.id,
		team2id = team2.id,
		score1 = score1,
		score2 = score2
	}::MatchType
	setmetatable(self, Match)

	return self
end


function Match.__tostring(self:MatchType)
	local team1ID:idType = self.team1id
	local team2ID:idType = self.team2id
	local team1 = TeamsTable[team1ID]
	local team2 = TeamsTable[team2ID]
	local team1Name = team1 and team1.name or "Unknown"
	local team2Name = team2 and team2.name or "Unknown"

	return string.format("Match: %s %d - %d %s", 
		team1Name, 
		self.score1, 
		self.score2, 
		team2Name
	)
end
function Match.GetWinner(self:MatchType):idType
	local team1Score:number = self.score1
	local team2Score:number = self.score2
	if self.score1 > self.score2 then
		return self.team1id
	else
		return self.team2id
	end
end

------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------MATCH CLASS-------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--

--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------
--{{{---------------------------TOURNAMENT CLASS-----------------------------------
--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------

local Tournament = {}
Tournament.__index = Tournament

export type StandingEntry = { teamId: idType?, Wins: number }
type TournamentData = {
	id: idType,
	name:string,
	Iteration:number,
	StandingArray:{StandingEntry},
	MatchesIds:{idType},
	startDate: number,
	endDate: number,
	Format:TournamentFormat,
	TotalPrize:number,
	PrizeDistribution:{number},
	Prestige:number,
}

export type TournamentType = typeof(setmetatable({}::TournamentData,Tournament))

function Tournament.new(Teams: {idType}?, _Format: TournamentFormat,totalPrize:number,PrizeDistribution:{number},newName:string,_Prestige:number): TournamentType
	local numTeams = 0
	local standings = {}
	if Teams then
		for i, teamId in ipairs(Teams) do
			table.insert(standings, {teamId = teamId, Wins = 0}::StandingEntry)
		end
	end

	local newId =  LatestTournamentId
	LatestTournamentId += 1

	local self = {} :: TournamentType
	self.id = newId
	self.name = newName
	self.Iteration = 0
	self.MatchesIds = {}
	self.StandingArray = standings
	self.startDate = -1
	self.endDate = -1
	self.Format = _Format
	self.Prestige = _Prestige
	self.PrizeDistribution = PrizeDistribution
	self.TotalPrize = totalPrize
	TournamentsTable[newId] = self
	return setmetatable(self, Tournament)
end

function Tournament.HasPendingMatches(self: TournamentType): boolean
	for _, matchId in ipairs(self.MatchesIds) do
		local match = MatchesTable[matchId]
		if match and not match.isPlayed then
			return true
		end
	end
	return false
end

function Tournament.replaceTeams(self:TournamentType,Teams:{idType})
	assert(Teams,"no teams to add")
	local numTeams = 0
	local standings = {}
	if Teams then
		numTeams = #Teams
		for i = 1,numTeams,1 do
			table.insert(standings, {teamId = Teams[i], Wins = 0}::StandingEntry)
		end
	end
	self.StandingArray = standings
	self:setupBracket()
end

function Tournament.setupBracket(self:TournamentType)
	if #self.StandingArray == 0 then
		return
	end
	local standing:{StandingEntry} = {}
	local Teams = self.StandingArray
	local numTeams = #self.StandingArray
	if self.Format == TournamentFormats.SingleElim then
		local bracketSize = 1
		while bracketSize < numTeams do
			bracketSize = bracketSize * 2
		end
		for match = 1, bracketSize // 2 do
			local seedA = match
			local seedB = bracketSize - match + 1
			local teamIdA = (seedA <= numTeams) and Teams[seedA].teamId or nil
			local teamIdB = (seedB <= numTeams and seedB ~= seedA) and Teams[seedB].teamId or nil
			table.insert(standing, { teamId = teamIdA, Wins = 0 })
			table.insert(standing, { teamId = teamIdB, Wins = 0 })
		end
	elseif self.Format == TournamentFormats.RoundRobin then
		for _, team in ipairs(Teams) do
			table.insert(standing, { teamId = team.teamId, Wins = 0 }::StandingEntry)
		end
	else
		error("Unsupported format in Tournament.new: " .. tostring(self.Format))
	end
	self.StandingArray = standing
end

function Tournament.GetLatestMatch(self:TournamentType): MatchType?
	local total = #self.MatchesIds
	if total == 0 then
		return nil
	end
	local latestMatchId = self.MatchesIds[total]
	return MatchesTable[latestMatchId]
end

function Tournament.ScheduleSingleElim(self: TournamentType)
	local activeTeams:{Team} = {}
	local totalDays = self.endDate-self.startDate
	local nrOfTeams = #self.StandingArray
	
	local nrOfMatches = nrOfTeams
	while(nrOfTeams>0) do
		nrOfTeams=nrOfTeams//2
		nrOfMatches += nrOfTeams
	end
	local matchesPerDay = math.ceil(nrOfMatches/totalDays)
	
	for _, t in ipairs(self.StandingArray) do
		if t.teamId and t.Wins == self.Iteration then
			table.insert(activeTeams, t)
		end
	end

	if #activeTeams <= 1 then
		self.Iteration += 1 
		return 
	end

	local matchTime = CURRENT_DATE + 1

	for i = 1, #activeTeams, 2 do
		local tA = activeTeams[i]
		local tB = activeTeams[i+1]

		if tB then
			local newMatch = Match.newScheduled(tA.teamId, tB.teamId, self.id, matchTime)
			table.insert(self.MatchesIds, newMatch.id)
		else
			tA.Wins += 1
		end
	end

	self.Iteration += 1
end


function Tournament.ScheduleRoundRobin(self: TournamentType)
	local teamIds = {}
	for _, entry in ipairs(self.StandingArray) do
		if entry.teamId then table.insert(teamIds, entry.teamId) end
	end

	if #teamIds % 2 ~= 0 then table.insert(teamIds, -1) end -- Dummy for odd numbers
	local numTeams = #teamIds
	local totalRounds = numTeams - 1

	for round = 1, totalRounds do
		local matchTime = CURRENT_DATE + round 
		for i = 1, numTeams / 2 do
			local t1 = teamIds[i]
			local t2 = teamIds[numTeams - i + 1]

			if t1 ~= -1 and t2 ~= -1 then
				local newMatch = Match.newScheduled(t1, t2, self.id,matchTime)
				table.insert(self.MatchesIds, newMatch.id)
			end
		end

		local last = table.remove(teamIds)
		table.insert(teamIds, 2, last)
	end

	self.Iteration = totalRounds 
end

function Tournament.Run(self: TournamentType): boolean
	if self.Iteration == 0 and #self.StandingArray > 0 and self.Format == TournamentFormats.SingleElim then 
		self:setupBracket() 
	end

	if self.startDate == -1 then self.startDate = CURRENT_DATE end

	if self:isFinished() then
		if self.endDate == -1 then 
			self.endDate = CURRENT_DATE 

			local sorted = self:getSortedStandings()
			for i, entry in ipairs(sorted) do
				local team = TeamsTable[entry.teamId]
				if team then
					local placeMult = (i==1 and 1) or (i==2 and 0.6) or (i<=4 and 0.3) or (i<=8 and 0.1) or 0
					local legacyPoints = math.floor(self.Prestige * placeMult)

					team.goat_score += legacyPoints
					for _, pid in ipairs(team.rosterIds) do
						if PlayersTable[pid] then PlayersTable[pid].goat_score += legacyPoints end
					end

					team.fans = math.floor(team.fans + (self.Prestige / math.max(1, i)))

					if self.PrizeDistribution[i] then 
						team.funds += self.TotalPrize * self.PrizeDistribution[i] 
					end
					table.insert(team.history.PastTournamentsId, self.id::number)
				end
			end

			return true -- State changed to Finished today
		end
		return false -- Already finished previously
	end
	if self:HasPendingMatches() then
		return false 
	end

	if self.Format == TournamentFormats.SingleElim then
		self:ScheduleSingleElim()
		return true

	elseif self.Format == TournamentFormats.RoundRobin then
		if self.Iteration == 0 then
			self:ScheduleRoundRobin()
			return true -- Created matches -> Progress made
		else
			return false
		end
	end

	return false
end

function Tournament.getWinner(self: TournamentType): TeamType?
    if self.endDate == -1 then return nil end

    local maxWins = -1
    local winner = nil

    for _, entry in ipairs(self.StandingArray) do
        if entry.teamId then
            local candidateTeam = TeamsTable[entry.teamId]
            
            if candidateTeam then
                if entry.Wins > maxWins then
                    maxWins = entry.Wins
                    winner = candidateTeam
                elseif entry.Wins == maxWins then
                end
            end
        end
    end

    return winner
end


function Tournament.isFinished(self:TournamentType):boolean

	if self.endDate ~= -1 then
		return true
	end

	if self:HasPendingMatches() then
		return false
	end

	local teamsWithIds = 0
	for _, entry in ipairs(self.StandingArray) do
		if entry.teamId then
			teamsWithIds += 1
		end
	end

	if teamsWithIds == 0 then
		if self.Iteration == 0 then
			return false
		end
		return true
	end

	if self.Format == TournamentFormats.SingleElim then
		local NumberOfActiveTeams = 0
		for _, entry in ipairs(self.StandingArray) do
			if entry.teamId and entry.Wins == self.Iteration then
				NumberOfActiveTeams += 1
			end
		end
		return (NumberOfActiveTeams <= 1)

	elseif self.Format == TournamentFormats.RoundRobin then
		local numEntries = #self.StandingArray
		local totalRounds = (numEntries % 2 == 0) and (numEntries - 1) or numEntries

		return (self.Iteration >= totalRounds)

	else
		warn("Unsupported tournament format:", self.Format)
		return false
	end
end

function Tournament.__tostring(self: TournamentType)
	local activeCount = 0
	for _, entry in ipairs(self.StandingArray) do
		if entry.teamId ~= nil and self.Iteration == entry.Wins then
			activeCount += 1
		end
	end

	return string.format(
		"[Tournament %d] Format: %s | Round: %d | Active Teams: %d",
		self.id,
		self.Format,
		self.Iteration + 1,
		activeCount
	)
end

function Tournament.getSortedStandings(self: TournamentType): {StandingEntry}
	local sortedTeams: {StandingEntry} = {}

	for _, entry in ipairs(self.StandingArray) do
		if entry.teamId then
			table.insert(sortedTeams, entry)
		end
	end

	table.sort(sortedTeams, function(a:StandingEntry, b:StandingEntry) 
		return a.Wins > b.Wins 
	end)

	return sortedTeams
end
function Tournament.GetPlacingForTeam(self:TournamentType,Team:TeamType):number
	local sortedTeams = self:getSortedStandings()
	for i, entry in ipairs(sortedTeams) do
		if entry.teamId == Team.id then
			return i
		end
	end
	return -1
end

------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------TOURNAMENT CLASS--------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--


--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------
--{{{---------------------------LINKER CLASS----------------------------------------
--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------


local Linker = {}
Linker.__index = Linker

export type qualificationRule = {
	sourceTournament: idType,
	targetTournament: idType,
	teamsToAdvance: number
}

type TournamentNode = {
	tournamentId: idType,
	dependencies: {idType},
	dependents: {idType},
	isCompleted: boolean
}

type LinkerData = {
	id: idType,
	name: string,
	startDate: number,
	endDate: number,
	status: "Upcoming" | "In-Progress" | "Completed",
	tournamentGraph: {[idType]: TournamentNode},
	qualificationRules: {qualificationRule}
}

export type LinkerType = typeof(setmetatable({}::LinkerData, Linker))


function Linker.new(name: string, startDate:number): LinkerType
	LatestEventId = LatestEventId + 1
	local newId = LatestEventId

	local self = {} :: LinkerType
	self.id = newId
	self.name = name
	self.startDate = startDate
	self.endDate = -1
	self.status = "Upcoming"
	self.tournamentGraph = {}
	self.qualificationRules = {}

	EventsTable[newId] = self
	return setmetatable(self, Linker)
end

function Linker.addTournament(self: LinkerType, tournament: TournamentType)
	if not self.tournamentGraph[tournament.id] then
		self.tournamentGraph[tournament.id] = {
			tournamentId = tournament.id,
			dependencies = {},
			dependents = {},
			isCompleted = false
		}
	end
end

function Linker.addQualificationRule(self: LinkerType, rule: qualificationRule)
	table.insert(self.qualificationRules, rule)

	local sourceNode = self.tournamentGraph[rule.sourceTournament]
	local targetNode = self.tournamentGraph[rule.targetTournament]

	if not sourceNode or not targetNode then
		warn("Cannot add qualification rule: source or target tournament not in event")
		return
	end

	table.insert(targetNode.dependencies, rule.sourceTournament)

	table.insert(sourceNode.dependents, rule.targetTournament)
end


function Linker.isFinished(self:LinkerType):boolean
	return self.endDate > 0
end
function Linker.getWinner(self: LinkerType): TeamType?
	if not self:isFinished() then
		return nil
	end

	local finalTournamentId: idType? = nil
	for tournamentId, node in pairs(self.tournamentGraph) do
		if #node.dependents == 0 and node.isCompleted then
			finalTournamentId = tournamentId
			break
		end
	end

	if not finalTournamentId then
		warn("Event finished but no final tournament found!")
		return nil
	end

	local finalTournament = TournamentsTable[finalTournamentId]
	if not finalTournament then
		warn("Final tournament not found in table!")
		return nil
	end

	return finalTournament:getWinner()
end
function Linker._getLeafTournaments(self: LinkerType): {idType}
	local leaves: {idType} = {}

	for tournamentId, node in pairs(self.tournamentGraph) do
		local allDepsCompleted = true
		for _, depId in ipairs(node.dependencies) do
			local depNode = self.tournamentGraph[depId]
			if depNode and not depNode.isCompleted then
				allDepsCompleted = false
				break
			end
		end

		if not node.isCompleted and allDepsCompleted then
			table.insert(leaves, tournamentId)
		end
	end

	return leaves
end

function Linker._isEventComplete(self: LinkerType): boolean
	for _, node in pairs(self.tournamentGraph) do
		if not node.isCompleted then
			return false
		end
	end
	return true
end

function Linker._applyQualifications(self: LinkerType, targetTournamentId: idType)
	local targetTournament = TournamentsTable[targetTournamentId]
	if not targetTournament then
		warn("Target tournament not found:", targetTournamentId)
		return
	end

	local qualifyingTeams: {idType} = {}

	for _, rule in ipairs(self.qualificationRules) do
		if rule.targetTournament == targetTournamentId then
			local sourceTournament = TournamentsTable[rule.sourceTournament]

			if not sourceTournament then
				warn("Source tournament not found:", rule.sourceTournament)
				continue
			end

			if not sourceTournament:isFinished() then
				warn("Source tournament not finished yet:", rule.sourceTournament)
				continue
			end


			local sortedTeams = sourceTournament:getSortedStandings()

			for i = 1, rule.teamsToAdvance do
				if i > #sortedTeams then break end

				local teamToAdvance = sortedTeams[i].teamId
				assert(teamToAdvance, "No team to advance")

				table.insert(qualifyingTeams, teamToAdvance)
			end
		end
	end

	if #qualifyingTeams > 0 then
		targetTournament:replaceTeams(qualifyingTeams)
	end
end

function Linker.run(self: LinkerType): boolean
	if self.status == "Upcoming" then self.status = "In-Progress" end

	if self.status == "Completed" or self:_isEventComplete() then
		if self.status ~= "Completed" then
			self.status = "Completed"
			self.endDate = CURRENT_DATE
			return true
		end
		return false
	end

	local leavesToRun = self:_getLeafTournaments()
	if #leavesToRun == 0 then return false end

	local anyProgress = false

	for _, tournamentId in ipairs(leavesToRun) do
		local tournament = TournamentsTable[tournamentId]
		local node = self.tournamentGraph[tournamentId]

		if tournament and node then
			if tournament.Iteration == 0 then 
				self:_applyQualifications(tournamentId) 
			end


			if tournament.endDate == -1 then
				local didWork = tournament:Run() 
				if didWork then anyProgress = true end
			end

			if tournament.endDate ~= -1 and not node.isCompleted then
				node.isCompleted = true
				anyProgress = true
			end
		end
	end

	return anyProgress
end


function Linker.runToCompletion(self: LinkerType)
	local maxIterations = 1000 
	local iterations = 0

	while self.status ~= "Completed" and iterations < maxIterations do
		local progressMade = self:run()
		if not progressMade then
			break
		end
		iterations += 1
	end

	if iterations >= maxIterations then
		warn("Event exceeded maximum iterations. Possible infinite loop!")
	end
end

function Linker.__tostring(self: LinkerType)
	local completedCount = 0
	local totalCount = 0

	for _, node in pairs(self.tournamentGraph) do
		totalCount += 1
		if node.isCompleted then
			completedCount += 1
		end
	end

	return string.format(
		"[Event %d] %s | Status: %s | Tournaments: %d/%d completed",
		self.id,
		self.name,
		self.status,
		completedCount,
		totalCount
	)
end


function Linker.printGraph(self: LinkerType)
	print(string.format("\n=== Event Graph: %s ===", self.name))

	for tournamentId, node in pairs(self.tournamentGraph) do
		local status = node.isCompleted and "✓" or "○"
		print(string.format("\n%s Tournament: %d", status, tournamentId))

		if #node.dependencies > 0 then
			print("  Dependencies:")
			for _, depId in ipairs(node.dependencies) do
				local depNode = self.tournamentGraph[depId]
				local depStatus = depNode and depNode.isCompleted and "✓" or "○"
				print(string.format("    %s %d", depStatus, depId))
			end
		end

		if #node.dependents > 0 then
			print("  Unlocks:")
			for _, depId in ipairs(node.dependents) do
				print(string.format("    → %d", depId))
			end
		end
	end

	print("\n" .. string.rep("=", 40) .. "\n")
end

function Linker.TotalPrize(self:LinkerType)
	local total = 0
	for _,node in pairs(self.tournamentGraph) do
		if node then
			local tournament = TournamentsTable[node.tournamentId]
			total = total + tournament.TotalPrize
		end
	end
	return total
end

function Linker.GetNumberOfTeams(self:LinkerType)
	local hash = {}
	local nrOfTeams = 0
	for _,data in pairs(self.tournamentGraph) do
		for _,team in pairs(TournamentsTable[data.tournamentId].StandingArray) do
			if hash[team.teamId] == nil then
				hash[team.teamId] = true
				nrOfTeams += 1
			end
		end
	end
	return nrOfTeams
end

------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
-----------------------------LINKER CLASS-------------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--

--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------
--{{{-----------------------SIMULATION_ENGINE CLASS--------------------------------
--{{{------------------------------------------------------------------------------
--{{{------------------------------------------------------------------------------

local SimulationEngineInputCodes ={
	PickTeam = 1,
	BuyPlayer = 2,
}

local SimulationEngine = {}
SimulationEngine.__index = SimulationEngine
export type Offer = {
	teamId: idType,
	offerAmount: number,
	years: number,
	isUserOffer: boolean,
}
type Candidate = { player: PlayerType, score: number }
export type SimulationEngineData = {
	PlayerEloTable:{[idType]:number}, --[PLAYER_ID]=ELO
	PlayerCount:number,
	FreeAgentCache: {idType},
	playerTeamId:idType,
	MarketOffers: { [idType]: {Offer} } ,
	GoatPlayerCache:{PlayerType},
	GoatTeamCache:{TeamType},
	Schedule: {[number]: {idType}},
}


export type SimulationEngineType = typeof(setmetatable({}::SimulationEngineData,SimulationEngine))

function SimulationEngine.RegisterMatchToSchedule(self: SimulationEngineType,matchId: idType,matchTime:number)
	if not self.Schedule then self.Schedule = {} end
	if not self.Schedule[matchTime] then 
		self.Schedule[matchTime] = {} 
	end
	table.insert(self.Schedule[matchTime], matchId)
end

function SimulationEngine.GetActiveEvent(self: SimulationEngineType): LinkerType?
	for _, event in pairs(EventsTable) do
		if event.status == "In-Progress" then
			return event
		end
	end

	for _, event in pairs(EventsTable) do
		if event.status == "Upcoming" and event.startDate<=CURRENT_DATE then
			return event
		end
	end

	return nil
end



function SimulationEngine.UpdateGoatCache(self:SimulationEngineType)
	local temp1 = {}
	local temp2 = {}
	self.GoatPlayerCache = {}
	self.GoatTeamCache = {}
	for playerId in pairs(PlayersTable) do
		table.insert(temp1,playerId)
	end
	table.sort(temp1,function(a,b)
		return PlayersTable[a].goat_score > PlayersTable[b].goat_score 
	end)
	for teamId in pairs(TeamsTable) do
		table.insert(temp2,teamId)
	end
	table.sort(temp2,function(a,b)
		return TeamsTable[a].goat_score > TeamsTable[b].goat_score
	end)
	local playerLimit = math.min(100, #PlayersTable)
	for i = 1, playerLimit do
		table.insert(self.GoatPlayerCache, PlayersTable[i])
	end

	local teamLimit = math.min(100, #TeamsTable)
	for i = 1, teamLimit do
		table.insert(self.GoatTeamCache, TeamsTable[i])
	end
end

function SimulationEngine.SelectPlayerTeam(self:SimulationEngineType,teamId:idType)
	self.playerTeamId = teamId
end

function SimulationEngine.PlayerEloTableRun(self:SimulationEngineType, numMatches: number)

	local allPlayerIds = {}
	local playerCount = 0
	for playerId in pairs(PlayersTable) do
		if PlayersTable[playerId].TeamId == PlayerStatus.Retired then continue end
		playerCount += 1
		allPlayerIds[playerCount] = playerId
	end

	if playerCount < PLAYERS_PER_MATCH then
		warn("ELO Calibration: Not enough players.")
		return
	end

	table.sort(allPlayerIds, function(a, b)
		return (self.PlayerEloTable[a]) > (self.PlayerEloTable[b])
	end)

	for i = 1, numMatches do
		local startIndex = math.random(1, playerCount - PLAYERS_PER_MATCH + 1)

		local rosterA:{number} = {}
		local rosterB:{number} = {}

		for j = 0, VIRTUAL_TEAM_SIZE - 1 do
			rosterA[j + 1] = allPlayerIds[startIndex + (j * 2)]
			rosterB[j + 1] = allPlayerIds[startIndex + 1 + (j * 2)]
		end

		local teamA = Team.newVIRTUAL(rosterA)
		local teamB = Team.newVIRTUAL(rosterB)

		if teamA and teamB then
			self:RunVirtualMatchAndUpdateElo(teamA, teamB)
		end

		if i%500 == 0 then
			table.sort(allPlayerIds, function(a, b)
				return (self.PlayerEloTable[a]) > (self.PlayerEloTable[b])
			end)
		end
	end
	table.sort(allPlayerIds, function(a, b)
		return (self.PlayerEloTable[a]) > (self.PlayerEloTable[b])
	end)
end

function SimulationEngine.RunVirtualMatchAndUpdateElo(self:SimulationEngineType,team1: TeamType, team2: TeamType)
	local match = VirtualMatch(team1, team2)


	local team1Ids = team1.rosterIds
	local team2Ids = team2.rosterIds
	local team1Size = #team1Ids
	local team2Size = #team2Ids

	if team1Size == 0 or team2Size == 0 then return end

	local team1AvgElo = 0
	for i = 1, team1Size do
		team1AvgElo += 	self.PlayerEloTable[team1Ids[i]]
	end
	team1AvgElo /= team1Size

	local team2AvgElo = 0
	for i = 1, team2Size do
		team2AvgElo += 	self.PlayerEloTable[team2Ids[i]]
	end
	team2AvgElo /= team2Size

	local expected = 1 / (1 + 10 ^ ((team2AvgElo - team1AvgElo) / 400))

	local totalScore = match.score1 + match.score2
	local result = match.score1 / totalScore

	local scoreDiff = math.abs(match.score1 - match.score2)
	local dominanceFactor = scoreDiff / ROUNDS_TO_WIN  
	local dynamicK = K_FACTOR * (1 + dominanceFactor) 

	local team1Change = dynamicK * (result - expected)
	local team2Change = dynamicK * ((1 - result) - (1 - expected))

	for i = 1, team1Size do
		local playerId = team1Ids[i]
		local newElo = self.PlayerEloTable[playerId] + team1Change
		self.PlayerEloTable[playerId] = math.max(0, newElo)
	end

	for i = 1, team2Size do
		local playerId = team2Ids[i]
		local newElo = self.PlayerEloTable[playerId] + team2Change
		self.PlayerEloTable[playerId] = math.max(0, newElo)
	end
end

function SimulationEngine.ShouldTeamReplaceAplayer(
	self: SimulationEngineType, 
	team: TeamType
): boolean
	local pastMatches = team.history.PastMatchesId

	if #pastMatches == 0 then return false end

	local matchesToCheck = math.min(MIN_MATCHES, #pastMatches)
	local startIdx = #pastMatches - matchesToCheck + 1

	local lossCount = 0
	for i = startIdx, #pastMatches do
		local match = MatchesTable[pastMatches[i]]
		if match and match:GetWinner() ~= team.id then
			lossCount = lossCount + 1
		end
	end

	local lossRate = lossCount / matchesToCheck

	local lostLastTournament = false
	if #team.history.PastTournamentsId > 0 then
		local lastTournamentId = team.history.PastTournamentsId[#team.history.PastTournamentsId]
		local lastTournament = TournamentsTable[lastTournamentId]
		if lastTournament and lastTournament:isFinished() then
			local placement = lastTournament:GetPlacingForTeam(team)
			local totalTeams = #lastTournament.StandingArray
			lostLastTournament = placement > (totalTeams * TOURNAMENT_BAD_PLACE)
		end
	end

	return (lossRate >= LOSS_RATE_THRESHOLD) or lostLastTournament
end
function SimulationEngine.GetWeakestPlayerByElo(self:SimulationEngineType, Team:TeamType): idType?
	local weakestId: idType? = nil
	local lowestElo: number = math.huge

	for _: number, playerId: idType in ipairs(Team.rosterIds) do
		local elo: number? = self.PlayerEloTable[playerId]
		if elo and elo < lowestElo then
			weakestId = playerId
			lowestElo = elo
		end
	end

	return weakestId
end

function SimulationEngine.ComputeSalary(self:SimulationEngineType, playerID: idType): number
	local elo = self.PlayerEloTable[playerID]
	local power = 4
	local divisor = 96
	local bonus = (math.max(0, elo - 500) / divisor) ^ power
	return math.floor(math.min(500 + bonus, MAX_SALARY))
end
function SimulationEngine.UpdateFreeAgentCache(self:SimulationEngineType)
	local FreeAgentCache = {}
	for id, player in pairs(PlayersTable) do
		if player.TeamId == PlayerStatus.FreeAgent then
			table.insert(FreeAgentCache, id)
		end
	end
	table.sort(FreeAgentCache, function(a, b)
		return PlayersTable[a].OverallRating > PlayersTable[b].OverallRating
	end)
	self.FreeAgentCache = FreeAgentCache
end
function SimulationEngine.GetStrongestPlayerAffordable(self: SimulationEngineType, Team: TeamType): idType?
	local funds = Team.funds
	self:UpdateFreeAgentCache()
	for _, playerId in ipairs(self.FreeAgentCache) do
		local player = PlayersTable[playerId]
		if player and player.salary <= funds then
			return playerId 
		end
	end
	return nil
end
function SimulationEngine.GetWeakestPlayerAffordable(self: SimulationEngineType, Team: TeamType): idType?
	local funds = Team.funds
	self:UpdateFreeAgentCache()

	local cheapestPlayerId = nil
	local lowestSalary = math.huge

	for _, playerId in ipairs(self.FreeAgentCache) do
		local player = PlayersTable[playerId]
		if player and player.salary <= funds and player.salary < lowestSalary then
			cheapestPlayerId = playerId
			lowestSalary = player.salary
		end
	end

	return cheapestPlayerId -- Will be nil if no affordable players exist
end
function SimulationEngine.UpdateSalaries(self:SimulationEngineType)
	for playerId, _ in pairs(self.PlayerEloTable) do
		local salary = self:ComputeSalary(playerId)
		if PlayersTable[playerId] then
			PlayersTable[playerId].salary = salary
		end
	end
end
function SimulationEngine.ProcessTransaction(
	self: SimulationEngineType,
	Team: TeamType,
	player: PlayerType,
	years: number
):(boolean,string?)
	if not Team then 
		return false,"no team"
	end
	if not player then
		return false,"no player"
	end
	if player.TeamId ~= PlayerStatus.FreeAgent then
		return false,"player is not free agent	"
	end

	local totalCost = player.salary * years

	Team.funds = Team.funds - totalCost

	player:TransferPlayer(Team.id, years)

	return true,nil
end
function SimulationEngine.checkContractExpirations(self: SimulationEngineType)
	local expiredCount = 0

	for _, player in pairs(PlayersTable) do
		if player.TeamId > PlayerStatus.FreeAgent then

			local contract = TransfersTable[player.currentContractID]

			if contract and contract.endDate ~= -1 and CURRENT_DATE >= contract.endDate then
				player:TransferPlayer(PlayerStatus.FreeAgent)
				expiredCount = expiredCount + 1
			end
		end
	end
	self:UpdateFreeAgentCache()
end
function SimulationEngine.UpdateEloTable(self:SimulationEngineType)
	for _,player in pairs(PlayersTable) do
		if not self.PlayerEloTable[player.id] and player.TeamId ~= PlayerStatus.Retired then
			self.PlayerEloTable[player.id] = INITIAL_ELO
			self.PlayerCount +=1
		end
	end
	for playerID, eloValue in pairs(self.PlayerEloTable) do
		local player = PlayersTable[playerID]
		if player and player.TeamId == PlayerStatus.Retired then
			self.PlayerEloTable[playerID] = nil
			self.PlayerCount -=1
		end
	end
end
function SimulationEngine.GetYearsAffordable(self:SimulationEngineType,player:PlayerType,team:TeamType)
	local years = math.min(MAX_CONTRACT_YEARS,math.max(team.funds/player.salary,1))
	return math.floor(years)
end
function SimulationEngine.ForceFillTeam(self: SimulationEngineType, teamId: idType, ignoreBudget: boolean?): boolean
	local team = TeamsTable[teamId]
	if not team then return false end

	self:UpdateFreeAgentCache() 

	if #self.FreeAgentCache == 0 then
		warn("ForceFill: No free agents available in the entire game!")
		return false 
	end

	local MAX_ATTEMPTS = 50
	local attempts = 0

	while #team.rosterIds < PLAYERS_IN_ACTIVE_ROSTER and attempts < MAX_ATTEMPTS do
		attempts += 1

		local candidateId = nil
		local cost = 0

		if ignoreBudget then
			candidateId = self.FreeAgentCache[1]
			cost = self:ComputeSalary(candidateId)
		else
			candidateId = self:GetStrongestPlayerAffordable(team)
			if candidateId then
				cost = self:ComputeSalary(candidateId)
			end
		end

		if not candidateId and not ignoreBudget then
			local cheapestId = self.FreeAgentCache[#self.FreeAgentCache]
			local cheapestCost = self:ComputeSalary(cheapestId)

			if team.funds >= cheapestCost then
				candidateId = cheapestId
				cost = cheapestCost
			else
				return false 
			end
		end

		if not candidateId then break end

		local player = PlayersTable[candidateId]

		team.funds = team.funds - cost

		player.salary = cost
		player:TransferPlayer(team.id, 1)

		for i, pid in ipairs(self.FreeAgentCache) do
			if pid == candidateId then
				table.remove(self.FreeAgentCache, i)
				break
			end
		end
	end

	return #team.rosterIds >= PLAYERS_IN_ACTIVE_ROSTER
end
function SimulationEngine.CheckNextWeekMatchesValid(self: SimulationEngineType): (boolean, string?,idType?)
	local activeEvent: LinkerType? = nil
	for _, event in pairs(EventsTable) do
		if event.status == "In-Progress" or event.status == "Upcoming" then
			activeEvent = event::LinkerType
			break
		end
	end

	if not activeEvent then return true, nil,nil end

	local activeTournamentIds = activeEvent:_getLeafTournaments()

	if #activeTournamentIds == 0 then return true, nil,nil end

	for _, tId in ipairs(activeTournamentIds) do
		local tournament = TournamentsTable[tId]
		if not tournament then continue end

		for _, entry in ipairs(tournament.StandingArray) do
			if entry.teamId then
				local team = TeamsTable[entry.teamId]

				if team then
					if #team.rosterIds < PLAYERS_IN_ACTIVE_ROSTER then
						return false, string.format("Team '%s' is in Tournament '%s' but only has %d players.", team.name, tournament.name, #team.rosterIds),team.id
					end
				end
			end
		end
	end

	return true, nil,nil
end
function SimulationEngine.EvaluatePlayersTeams(self:SimulationEngineType)
	local teamsActive:{TeamType} = {}
	for _,team in pairs(TeamsTable) do
		if team:status() == TeamStatus.Active and self:ShouldTeamReplaceAplayer(team) then
			table.insert(teamsActive,team)
		end
	end
	table.sort(teamsActive,function(a:TeamType,b:TeamType)
		return a.funds > b.funds
	end)

	for _, team in pairs(teamsActive) do
		local weakestPlayerID = self:GetWeakestPlayerByElo(team)

		if weakestPlayerID then
			local playerToDrop = PlayersTable[weakestPlayerID]

			playerToDrop:TransferPlayer(PlayerStatus.FreeAgent)

			local strongestAffordableID = self:GetStrongestPlayerAffordable(team)

			if strongestAffordableID then
				local playerToSign = PlayersTable[strongestAffordableID]
				local Years = self:GetYearsAffordable(playerToSign,team)
				local success = self:ProcessTransaction(team, playerToSign,Years)

				if success then
							--[[print(string.format(
								"ROSTER CHANGE: %s signs %s (ELO: %.0f), drops %s (ELO: %.0f)",
								team.name,
								playerToSign.name,
								self.PlayerEloTable[playerToSign.id],
								playerToDrop.name,
								self.PlayerEloTable[playerToDrop.id]
								))-]]
				else
					playerToDrop:TransferPlayer(team.id, 1)
					warn(string.format(
						"Failed to sign replacement for %s, keeping %s",
						team.name,
						playerToDrop.name
						))
				end
			end
		end
	end
end
function SimulationEngine.ProcessWeeklyFinances(self: SimulationEngineType)
	for _, team in pairs(TeamsTable) do
		if team:status() == TeamStatus.Active then
			local fanIncome = math.floor(team.fans * REVENUE_PER_FAN)
			team.fans = math.floor(team.fans * (1 - FAN_DECAY_RATE))

			local tax = UPKEEP_TAX_RATE
			local upkeep = math.floor(team.funds * tax)

			team.funds = team.funds + BASE_SPONSORSHIP + fanIncome - upkeep
			if team.funds < 0 then team.funds = 0 end
		end
	end
end
function SimulationEngine.agePlayers(self:SimulationEngineType)
	for _,player in pairs(PlayersTable) do
		player:YearUpdate()
	end
end
function SimulationEngine.CalculatePlayerHappiness(
	self: SimulationEngineType,
	player: PlayerType, 
	team: TeamType, 
	offerAmount: number, 
	years: number
): number
	local currentMarketValue = self:ComputeSalary(player.id) 
	local offerAnnualValue = offerAmount / math.max(1, years)
	local wageRatio = offerAnnualValue / math.max(1, currentMarketValue)
	local moneyScore = (wageRatio * 100)
	local durationScore = 0
	if player.age >= 29 then
		durationScore = (years * 5)
	else
		if years > 2 then
			durationScore = -((years - 2) * 10)
		end
	end
	local fameScore = math.log(math.max(1, team.fans)) * 5
	local ratingScore = team:calculateTeamRating() / 10
	local desperationBonus = 0
	if player.TeamId == PlayerStatus.FreeAgent then
		desperationBonus = 30 
	end
	return moneyScore + durationScore + fameScore + ratingScore + desperationBonus
end
function SimulationEngine.SubmitOffer(self: SimulationEngineType, teamId: idType, playerId: idType, salaryAmount: number, years: number): boolean
	local team = TeamsTable[teamId]
	local player = PlayersTable[playerId]

	if not team or not player then return false end
	if player.TeamId ~= PlayerStatus.FreeAgent then return false end

	local totalCost = salaryAmount * years

	if team.funds < totalCost then 
		return false -- Reject offer: "Not enough liquid funds"
	end

	team.funds = team.funds - totalCost 

	if not self.MarketOffers[playerId] then self.MarketOffers[playerId] = {} end

	local existingIndex = nil
	for i, offer in ipairs(self.MarketOffers[playerId]) do
		if offer.teamId == teamId then
			existingIndex = i
			break
		end
	end

	if existingIndex then
		local oldOffer = self.MarketOffers[playerId][existingIndex]
		local oldCost = oldOffer.offerAmount * oldOffer.years
		team.funds = team.funds + oldCost

		self.MarketOffers[playerId][existingIndex] = {
			teamId = teamId,
			offerAmount = salaryAmount,
			years = years,
			isUserOffer = (teamId == self.playerTeamId)
		}
	else
		table.insert(self.MarketOffers[playerId], {
			teamId = teamId,
			offerAmount = salaryAmount,
			years = years,
			isUserOffer = (teamId == self.playerTeamId)
		})
	end

	return true
end
function SimulationEngine.GenerateAIOffers(self: SimulationEngineType)
	self:UpdateFreeAgentCache()

	for _, team: TeamType in pairs(TeamsTable) do
		if team:status() ~= TeamStatus.Active then continue end
		if team.id == self.playerTeamId then continue end -- Skip Player Team

		if #team.rosterIds < PLAYERS_IN_ACTIVE_ROASTER then

			type Candidate = { player: PlayerType, score: number }
			local candidates: {Candidate} = {}

			for _, pid: idType in ipairs(self.FreeAgentCache) do
				local p = PlayersTable[pid]
				if p then
					local desire = team:GetPlayerDesireScore(p)
					table.insert(candidates, {player = p, score = desire})
				end
			end

			table.sort(candidates, function(a:Candidate, b) return a.score > b.score end)

			for i = 1, math.min(3, #candidates) do
				local target = candidates[i].player
				local desire = candidates[i].score

				local idealOffer = self:ComputeSalary(target.id)
				if desire > 100 then idealOffer = idealOffer * 1.2 end 

				local teamBudget = math.floor(team.funds * 0.7) 
				local finalOffer = math.min(idealOffer, teamBudget)
				local minAcceptable = target.salary * 0.4 

				local years = math.min(MAX_CONTRACT_YEARS, math.max(1, math.floor(team.funds / math.max(1, finalOffer))))

				if finalOffer >= minAcceptable then
					self:SubmitOffer(team.id, target.id, finalOffer, years)
				end
			end
		end
	end
end
function SimulationEngine.DidPlayerBid(self: SimulationEngineType, playerId: idType): boolean
	local offers = self.MarketOffers[playerId]
	if not offers then return false end
	for _, offer in ipairs(offers) do
		if offer.teamId == self.playerTeamId then return true end
	end
	return false
end
function SimulationEngine.ResolveMarketOffers(self: SimulationEngineType)
	for playerId, offers in pairs(self.MarketOffers) do
		local player = PlayersTable[playerId]

		if not player or player.TeamId ~= PlayerStatus.FreeAgent then 
			for _, offer in ipairs(offers) do
				local team = TeamsTable[offer.teamId]
				if team then
					team.funds = team.funds + (offer.offerAmount * offer.years) -- Refund
				end
			end
			self.MarketOffers[playerId] = nil
			continue 
		end

		table.sort(offers, function(a:Offer, b:Offer)
			local teamA = TeamsTable[a.teamId]
			local teamB = TeamsTable[b.teamId]
			local happyA = self:CalculatePlayerHappiness(player, teamA, a.offerAmount, a.years)
			local happyB = self:CalculatePlayerHappiness(player, teamB, b.offerAmount, b.years)
			return happyA > happyB
		end)

		local winner = offers[1]
		local winningTeam = TeamsTable[winner.teamId]

		player.salary = winner.offerAmount
		player:TransferPlayer(winningTeam.id, winner.years)

		if winner.teamId == self.playerTeamId then
			print(" Offer Accepted for " .. player.name)
		end

		for i = 2, #offers do
			local loser = offers[i]
			local losingTeam = TeamsTable[loser.teamId]
			local refundAmount = loser.offerAmount * loser.years

			losingTeam.funds = losingTeam.funds + refundAmount

			if loser.teamId == self.playerTeamId then
				print(" Outbid for " .. player.name .. ". Funds refunded: $" .. refundAmount)
			end
		end
	end

	self.MarketOffers = {}
end

function SimulationEngine.UserBuyPlayer(
	self: SimulationEngineType, 
	playerId: idType, 
	offerAmount: number, 
	years: number
): (boolean, string?)

	if self.playerTeamId == 0 then
		return false, "No user team selected."
	end

	local userTeam = TeamsTable[self.playerTeamId]
	if not userTeam then 
		return false, "User team not found." 
	end

	local targetPlayer = PlayersTable[playerId]
	if not targetPlayer then 
		return false, "Player not found." 
	end

	if targetPlayer.TeamId ~= PlayerStatus.FreeAgent then
		local currentTeam = TeamsTable[targetPlayer.TeamId]
		local teamName = currentTeam and currentTeam.name or "Unknown"
		return false, string.format("Player is currently signed to %s.", teamName)
	end

	local totalCost = offerAmount * years
	if userTeam.funds < totalCost then
		return false, string.format("Insufficient funds. Cost: $%d | Available: $%d", totalCost, userTeam.funds)
	end

	if years < 1 or years > MAX_CONTRACT_YEARS then
		return false, string.format("Contract length must be between 1 and %d years.", MAX_CONTRACT_YEARS)
	end

	local minSalary = 500
	if offerAmount < minSalary then
		return false, "Offer amount is too low."
	end

	local success = self:SubmitOffer(userTeam.id, playerId, offerAmount, years)

	if success then
		return true, "Offer submitted successfully. Processing at end of week."
	else
		return false, "Failed to submit offer."
	end
end
function CreateTestTeams(nr:number)
	local TestTeams = {}
	for i = 1, nr do
		local team = Team.new()
		team.funds = 30000
		table.insert(TestTeams, team.id)
	end
	return TestTeams
end
local league1Teams = CreateTestTeams(16)
local league2Teams = CreateTestTeams(16)
local league3Teams = CreateTestTeams(16)
local league4Teams = CreateTestTeams(16)

function SimulationEngine.ProcessTimeStep(self: SimulationEngineType): (boolean, string?)

	local valid, err, invalidTeamId = self:CheckNextWeekMatchesValid()

	if not valid and invalidTeamId == self.playerTeamId then
		local filled = self:ForceFillTeam(self.playerTeamId, true) 
		if filled then
			print("Team was incomplete. Auto-signed free agents.")
		else
			return false, "CRITICAL: No free agents exist to fill your roster. Game Over."
		end
	end
	CURRENT_DATE += 1
	
	local todaysMatchIds = self.Schedule[CURRENT_DATE]
	if todaysMatchIds then
		for _, matchId in ipairs(todaysMatchIds) do
			local match = MatchesTable[matchId]
			if match and not match.isPlayed then
				match:Simulate()

				if match.tournamentId then
					local t = TournamentsTable[match.tournamentId]
					if t then
						local winner = match:GetWinner()
						for _, entry in ipairs(t.StandingArray) do
							if entry.teamId == winner then
								entry.Wins += 1
								break
							end
						end
					end
				end
			end
		end
		self.Schedule[CURRENT_DATE] = nil
	end
	
	local activeEvent = self:GetActiveEvent()
	if not activeEvent then
		local league1Season = Tournament.new(league1Teams, TournamentFormats.RoundRobin, 10000, {0.5, 0.3, 0.2}, "Season League 1", 300)
		local league2Season = Tournament.new(league2Teams, TournamentFormats.RoundRobin, 10000, {0.5, 0.3, 0.2}, "Season League 2", 300)
		local league3Season = Tournament.new(league3Teams, TournamentFormats.RoundRobin, 10000, {0.5, 0.3, 0.2}, "Season League 3", 300)
		local league4Season = Tournament.new(league4Teams, TournamentFormats.RoundRobin, 10000, {0.5, 0.3, 0.2}, "Season League 4", 300)

		local league1Playoff = Tournament.new({}, TournamentFormats.SingleElim, 10000, {0.3, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1}, "Playoffs League 1", 2000)
		local league2Playoff = Tournament.new({}, TournamentFormats.SingleElim, 10000, {0.3, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1}, "Playoffs League 2", 2000)
		local league3Playoff = Tournament.new({}, TournamentFormats.SingleElim, 10000, {0.3, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1}, "Playoffs League 3", 2000)
		local league4Playoff = Tournament.new({}, TournamentFormats.SingleElim, 10000, {0.3, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1}, "Playoffs League 4", 2000)

		local finals = Tournament.new({}, TournamentFormats.SingleElim, 5000, {1.0}, "GlobalChampionship", 10000)

		local championship = Linker.new("WorldSeason", CURRENT_DATE)

		championship:addTournament(league1Season)
		championship:addTournament(league2Season)
		championship:addTournament(league3Season)
		championship:addTournament(league4Season)
		championship:addTournament(league1Playoff)
		championship:addTournament(league2Playoff)
		championship:addTournament(league3Playoff)
		championship:addTournament(league4Playoff)
		championship:addTournament(finals)


		championship:addQualificationRule({ sourceTournament = league1Season.id, targetTournament = league1Playoff.id, teamsToAdvance = 8 })
		championship:addQualificationRule({ sourceTournament = league2Season.id, targetTournament = league2Playoff.id, teamsToAdvance = 8 })
		championship:addQualificationRule({ sourceTournament = league3Season.id, targetTournament = league3Playoff.id, teamsToAdvance = 8 })
		championship:addQualificationRule({ sourceTournament = league4Season.id, targetTournament = league4Playoff.id, teamsToAdvance = 8 })

		championship:addQualificationRule({ sourceTournament = league1Playoff.id, targetTournament = finals.id, teamsToAdvance = 2 })
		championship:addQualificationRule({ sourceTournament = league2Playoff.id, targetTournament = finals.id, teamsToAdvance = 2 })
		championship:addQualificationRule({ sourceTournament = league3Playoff.id, targetTournament = finals.id, teamsToAdvance = 2 })
		championship:addQualificationRule({ sourceTournament = league4Playoff.id, targetTournament = finals.id, teamsToAdvance = 2 })

		activeEvent = championship

		print("🏟️ New Season Created starting Day " .. CURRENT_DATE)
	end

	
	if activeEvent then
		activeEvent:run() 

		if activeEvent.status == "Completed" then
			local winner = activeEvent:getWinner()
			print("🏆 Event Winner:", winner and winner.name or "None")
		end
	end

	if CURRENT_DATE % 7 == 0 then
		self:ProcessWeeklyFinances()
		self:GenerateAIOffers()
		self:ResolveMarketOffers()
	end

	if CURRENT_DATE % 365 == 0 then

		self:agePlayers()

		for i = 1, 20 do
			Player.new()
		end

		self:checkContractExpirations()
		self:UpdateEloTable()

		self:PlayerEloTableRun(20 * math.max(1, self.PlayerCount))

		self:UpdateSalaries()

		for _, team in pairs(TeamsTable) do
			if team.id ~= self.playerTeamId and team:status() == TeamStatus.Active and #team.rosterIds < 5 then
				self:ForceFillTeam(team.id, true)
			end
		end

		self:EvaluatePlayersTeams()

		self:UpdateEloTable()
		self:UpdateGoatCache()
	end

	return true, nil
end


function SimulationEngine.new(): SimulationEngineType
	local self:SimulationEngineType = {}::SimulationEngineType
	self.PlayerEloTable = {}
	self.PlayerCount = 0
	for playerId, _ in pairs(PlayersTable) do
		self.PlayerEloTable[playerId] = INITIAL_ELO
		self.PlayerCount += 1
	end
	self.MarketOffers = {}
	self.FreeAgentCache = {}
	self.Schedule={}
	--for i=1,52,1 do
	--	self:ProcessWeek()
	--end
	return setmetatable(self, SimulationEngine)
end
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--
-------------------------SIMULATION_ENGINE CLASS------------------------------}}}--
------------------------------------------------------------------------------}}}--
------------------------------------------------------------------------------}}}--

ACTIVE_SIMULATION = SimulationEngine.new()
