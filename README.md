### `Block Commands`
(l4d_block_commands) by *_Mystik Spiral_*

Left4Dead2 SourceMod plugin blocks client commands.  
Blocks commands as specified in the ConVar "cb_list".  

By default, the blocked commands are:  

- pause/setpause/unpause: Could be spammed to crash connected clients.
- jointeam: Could be used to spawn additional bots and other exploits.
- go_away_from_keyboard: Blocks many different idle exploits, most notably redirecting witch on startle.
   - It is suggested to lower the parameter "director_afk_timeout" since players can no longer manually go idle.
   - In the server.cfg file, set "sm_cvar director_afk_timeout 20", the default is 45.  

The list of commands to block must be comma separated with no spaces.  

Want to contribute code enhancements?  
Create a pull request using this GitHub repository: https://github.com/Mystik-Spiral/l4d_command_block  

Plugin discussion: https://forums.alliedmods.net/showthread.php?t=332223
