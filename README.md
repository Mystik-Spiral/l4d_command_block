### `Block Commands`
(l4d_block_commands) by *_Mystik Spiral_*

Left4Dead(2) SourceMod plugin that blocks specific client commands to avoid exploits.  Intended for use with L4D & L4d2 Dedicated Servers that run Campaign mode only.

Blocks the following commands:

- pause/setpause/unpause: Could be spammed to crash connected clients
- jointeam: Could be used to spawn additional bots and other exploits.
- go_away_from_keyboard: Blocks many different idle exploits, notably redirecting witch on startle.
  - Suggest lowering parameter director_afk_timeout since players can no longer manually go idle
  - I set director_afk_timeout to 20 seconds, the default is 45.

Want to contribute code enhancements?  
Create a pull request using this GitHub repository: https://github.com/Mystik-Spiral/l4d_block_commands

Plugin discussion: https://forums.alliedmods.net/showthread.php?t=332223
