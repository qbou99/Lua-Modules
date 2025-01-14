---
-- @Liquipedia
-- wiki=rocketleague
-- page=Module:HiddenDataBox/Custom
--
-- Please see https://github.com/Liquipedia/Lua-Modules to contribute
--

local Class = require('Module:Class')
local Variables = require('Module:Variables')

local BasicHiddenDataBox = require('Module:HiddenDataBox')
local CustomHiddenDataBox = {}

function CustomHiddenDataBox.run(args)
	BasicHiddenDataBox.addCustomVariables = CustomHiddenDataBox.addCustomVariables
	return BasicHiddenDataBox.run(args)
end

function CustomHiddenDataBox.addCustomVariables(args, queryResult)
	Variables.varDefine('tournament_tier', Variables.varDefault('tournament_liquipediatier'))
	Variables.varDefine('tournament_tier_type', Variables.varDefault('tournament_liquipediatiertype'))
	Variables.varDefine('edate', Variables.varDefault('tournament_enddate'))
	Variables.varDefine('tournament_ticker_name',
		Variables.varDefault('tournament_tickername', Variables.varDefault('tournament_name'))
	)
	Variables.varDefine('tournament_icon_dark', Variables.varDefault('tournament_icondark'))
	Variables.varDefine('tournament_parent_name', Variables.varDefault('tournament_parentname'))
end

return Class.export(CustomHiddenDataBox)
