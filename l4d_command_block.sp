#define PLUGIN_VERSION 		"1.0"

/**************************************************

Command Block (l4d_command_block) by Mystik Spiral

Left4Dead2 SourceMod plugin blocks specific client commands to avoid exploits.
Intended for use on L4D & L4D2 Dedicated Servers that run Campaign mode only.

Blocks the following client commands:

    pause/setpause/unpause: Could be spammed to crash connected clients.
    jointeam: Could be used to spawn additional bots and other exploits.
    go_away_from_keyboard: Blocks many different idle exploits, notably redirecting witch on startle.
        Suggest lowering parameter director_afk_timeout since players can no longer manually go idle.
        I set director_afk_timeout to 20 seconds, the default is 45.


Want to contribute code enhancements?
Create a pull request using this GitHub repository: https://github.com/Mystik-Spiral/l4d_command_block

Plugin discussion: https://forums.alliedmods.net/showthread.php?t=332223

**************************************************/

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
	url = "https://forums.alliedmods.net/showthread.php?t=332223"
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
