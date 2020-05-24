extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var path_SaveGames = "res://Resources/SaveGames/"
var file_SaveGameContent = path_SaveGames + "ice_hockey_dream_team_save_game.dat"
var path_SharedDBs = "res://Resources/SharedDB/"
var file_CharacterSheetDB = path_SharedDBs + "icehockey_player_charactersheet_database.gd_csv"
var file_CharacterSkillTreeDB = path_SharedDBs + "icehockey_player_characterskilltree_database.gd_csv"
var file_PlayerDB = path_SharedDBs + "icehockey_player_database.gd_csv"
var file_PlayerGameSkillTreeDB = path_SharedDBs + "icehockey_player_gameskilltree_database.gd_csv"
var file_PlayerGameSkillTypesDB = path_SharedDBs + "icehockey_player_gameskilltypes_database.gd_csv"
var file_SeasonalStatsDB = path_SharedDBs + "icehockey_seasonal_database.gd_csv" 

var SaveGameContent
var CharacterSheetDB
var CharacterSkillTreeDB
var PlayerDB
var PlayerGameSkillTreeDB
var PlayerGameSkillTypesDB
var SeasonalStatsDB
	

# Called when the node enters the scene tree for the first time.
func _ready(): 
	var delim = ","
	var newLineDelim = "\n"
		
	## open and read files 
	print(file_SaveGameContent)
	SaveGameContent = loadGame(file_SaveGameContent) 
	var SaveGameContent_Lines = SaveGameContent.split(newLineDelim, true, 0)
	var SaveGameContent_LineEntryCount = SaveGameContent_Lines.size()
	for l in range(SaveGameContent_LineEntryCount):
		var SaveGameContent_Array = SaveGameContent_Lines[l].split(delim, true, 0)
		var SaveGameContent_EntryCount = SaveGameContent_Array.size()
		for n in range(SaveGameContent_EntryCount):
			print(String(l) + ":" + String(n) + ":" + SaveGameContent_Array[n]) # Prints n entry
	saveGame(SaveGameContent, file_SaveGameContent)
	
	print(file_CharacterSheetDB)
	CharacterSheetDB = loadDB_CharacterSheet(file_CharacterSheetDB)
	var CharacterSheetDB_Lines = CharacterSheetDB.split(newLineDelim, true, 0)
	var CharacterSheetDB_LineEntryCount = CharacterSheetDB_Lines.size()
	for l in range(CharacterSheetDB_LineEntryCount):
		var CharacterSheetDB_Array = CharacterSheetDB_Lines[l].split(delim, true, 0)
		var CharacterSheetDB_EntryCount = CharacterSheetDB_Array.size()
		for n in range(CharacterSheetDB_EntryCount):
			print(String(l) + ":" + String(n) + ":" + CharacterSheetDB_Array[n]) # Prints n entry
	saveDB_CharacterSheet(CharacterSheetDB, file_CharacterSheetDB)
	
	print(file_CharacterSkillTreeDB)
	CharacterSkillTreeDB = loadDB_CharacterSkillTreeDB(file_CharacterSkillTreeDB)
	var CharacterSkillTreeDB_Lines = CharacterSkillTreeDB.split(newLineDelim, true, 0)
	var CharacterSkillTreeDB_LineEntryCount = CharacterSkillTreeDB_Lines.size()
	for l in range(CharacterSkillTreeDB_LineEntryCount):
		var CharacterSkillTreeDB_Array = CharacterSkillTreeDB_Lines[l].split(delim, true, 0)
		var CharacterSkillTreeDB_EntryCount = CharacterSkillTreeDB_Array.size()
		for n in range(CharacterSkillTreeDB_EntryCount):
			print(String(l) + ":" + String(n) + ":" + CharacterSkillTreeDB_Array[n]) # Prints n entry
	saveDB_CharacterSkillTreeDB(CharacterSkillTreeDB, file_CharacterSkillTreeDB)
	
	print(file_PlayerDB)
	PlayerDB = loadDB_PlayerDB(file_PlayerDB)
	var PlayerDB_Lines = PlayerDB.split(newLineDelim, true, 0)
	var PlayerDB_LineEntryCount = PlayerDB_Lines.size()
	for l in range(PlayerDB_LineEntryCount):
		var PlayerDB_Array = PlayerDB_Lines[l].split(delim, true, 0)
		var PlayerDB_EntryCount = PlayerDB_Array.size()
		for n in range(PlayerDB_EntryCount):
			print(String(l) + ":" + String(n) + ":" + PlayerDB_Array[n]) # Prints n entry
	saveDB_PlayerDB(PlayerDB, file_PlayerDB)
	
	print(file_PlayerGameSkillTreeDB)
	PlayerGameSkillTreeDB = loadDB_PlayerGameSkillTreeDB(file_PlayerGameSkillTreeDB)
	var PlayerGameSkillTreeDB_Lines = PlayerGameSkillTreeDB.split(newLineDelim, true, 0)
	var PlayerGameSkillTreeDB_LineEntryCount = PlayerGameSkillTreeDB_Lines.size()
	for l in range(PlayerGameSkillTreeDB_LineEntryCount):
		var PlayerGameSkillTreeDB_Array = PlayerGameSkillTreeDB_Lines[l].split(delim, true, 0)
		var PlayerGameSkillTreeDB_EntryCount = PlayerGameSkillTreeDB_Array.size()
		for n in range(PlayerGameSkillTreeDB_EntryCount):
			print(String(l) + ":" + String(n) + ":" + PlayerGameSkillTreeDB_Array[n]) # Prints n entry
	saveDB_PlayerGameSkillTreeDB(PlayerGameSkillTreeDB, file_PlayerGameSkillTreeDB)
	
	print(file_PlayerGameSkillTypesDB)
	PlayerGameSkillTypesDB = loadDB_PlayerGameSkillTypesDB(file_PlayerGameSkillTypesDB)
	var PlayerGameSkillTypesDB_Lines = PlayerGameSkillTypesDB.split(newLineDelim, true, 0)
	var PlayerGameSkillTypesDB_LineEntryCount = PlayerGameSkillTypesDB_Lines.size()
	for l in range(PlayerGameSkillTypesDB_LineEntryCount):
		var PlayerGameSkillTypesDB_Array = PlayerGameSkillTypesDB_Lines[l].split(delim, true, 0)
		var PlayerGameSkillTypesDB_EntryCount = PlayerGameSkillTypesDB_Array.size()
		for n in range(PlayerGameSkillTypesDB_EntryCount):
			print(String(l) + ":" + String(n) + ":" + PlayerGameSkillTypesDB_Array[n]) # Prints n entry
	saveDB_PlayerGameSkillTypesDB(PlayerGameSkillTypesDB, file_PlayerGameSkillTypesDB)
	
	print(file_SeasonalStatsDB)
	SeasonalStatsDB = loadDB_SeasonalStatsDB(file_SeasonalStatsDB)
	var SeasonalStatsDB_Lines = SeasonalStatsDB.split(newLineDelim, true, 0)
	var SeasonalStatsDB_LineEntryCount = SeasonalStatsDB_Lines.size()
	for l in range(SeasonalStatsDB_LineEntryCount):
		var SeasonalStatsDB_Array = SeasonalStatsDB_Lines[l].split(delim, true, 0)
		var SeasonalStatsDB_EntryCount = SeasonalStatsDB_Array.size()
		for n in range(SeasonalStatsDB_EntryCount):
			print(String(l) + ":" + String(n) + ":" + SeasonalStatsDB_Array[n]) # Prints n entry
	saveDB_SeasonalStatsDB(SeasonalStatsDB, file_SeasonalStatsDB)
	
	
func change(a):
	a[0] = 1

func print_elements_of(array):
	# Here we are using one of the Pool array types
	print(PoolStringArray(array).join(""))
	

func saveGame(content, fileName):
	saveFILE(content, fileName ) 

func loadGame(fileName):
	var content = loadFile( fileName) 
	return content

func saveDB_CharacterSheet(content, fileName):
	saveFILE(content, fileName ) 

func loadDB_CharacterSheet(fileName):
	var content = loadFile( fileName) 
	return content

func loadDB_CharacterSkillTreeDB(fileName):
	var content = loadFile( fileName) 
	return content
	
func saveDB_CharacterSkillTreeDB(content, fileName ):
	saveFILE(content, fileName ) 
	
func loadDB_PlayerDB(fileName):
	var content = loadFile( fileName) 
	return content
	
func saveDB_PlayerDB(content, fileName ):
	saveFILE(content, fileName ) 
	
func loadDB_PlayerGameSkillTreeDB(fileName):
	var content = loadFile( fileName) 
	return content
	
func saveDB_PlayerGameSkillTreeDB(content, fileName ):
	saveFILE(content, fileName ) 
	
func loadDB_PlayerGameSkillTypesDB( fileName):
	var content = loadFile( fileName) 
	return content
	
func saveDB_PlayerGameSkillTypesDB( content, fileName):
	saveFILE(content, fileName ) 
	
func loadDB_SeasonalStatsDB( fileName): 
	var content = loadFile( fileName) 
	return content
	
func saveDB_SeasonalStatsDB(content, fileName ):
	saveFILE(content, fileName ) 

func saveFILE(content, fileName ):
	var file = File.new()
	file.open(fileName, File.WRITE)
	file.store_string(content)
	file.close()
	
func loadFile( fileName):
	var file = File.new()
	file.open(fileName, File.READ)
	var content = file.get_as_text()
	file.close()
	return content
	
	
#icehockey_player_charactersheet_database.gd_csv
#icehockey_player_characterskilltree_database.gd_csv
#icehockey_player_database.gd_csv
#icehockey_player_gameskilltree_database.gd_csv
#icehockey_player_gameskilltypes_database.gd_csv
#icehockey_seasonal_database.gd_csv
