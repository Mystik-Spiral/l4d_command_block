#define PLUGIN_VERSION 		"1.0"

#pragma semicolon 1
#pragma newdecls required

#include <sourcemod>
#include <sdktools>

public Plugin myinfo =
{
	name = "[L4D & L4D2] Command Block",
	author = "Mystik Spiral",
	description = "Blocks specific client commands to avoid exploits.",
	version = PLUGIN_VERSION,
	url = "https://github.com/Mystik-Spiral"
}

public void OnConfigsExecuted()
{
	CreateConVar("command_block_version", PLUGIN_VERSION, "Command Block version", FCVAR_NOTIFY|FCVAR_DONTRECORD);
	
	AddCommandListener(CommandBlock, "pause");
	AddCommandListener(CommandBlock, "setpause");
	AddCommandListener(CommandBlock, "unpause");
	AddCommandListener(CommandBlock, "jointeam");
	AddCommandListener(CommandBlock, "go_away_from_keyboard");
}

public Action CommandBlock(int client, const char[] command, int argc) 
{
	return Plugin_Handled;
}
