# Solarus-ARPG-Game-Development-Book
This is a book to help with some Solarus basics. I do not plan on completing it alone, but will add to it when I can.

**Coming Next in a random order:**

Everything with a '*' next to it is being worked on.

- Title screen*

- [Movements](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/issues/6)*

- Hero types*

- Item types*

- Game types*

- Map types*

- Issue fixing

- Chain Quest

- Export Project

- Revise credits

- Correct remaining errors and revamp book

- Alpha 0.9 release and get the opinion of the Solarus community.

- Add reasonable ideas and corrections mentioned by the Solarus community.

- Release Beta 1.0

## Book Export Process:

**About:**

This book is being worked on in seperate markdown (.md) files on Linux using [Haroopad v0.13.1.](http://pad.haroopress.com/user.html)

I will only provide HTML, MD, and PDF for this book. Others are welcome to make epubs, mobi, azw, lit, etc.

**Putting the .md files together:**

1.The seperate .md files extension are renamed to .txt using a bulk rename software. 

2.The 'cat' command is used in the Linux terminal to combine the .txt files.

`cd 'directory'`

`cat *.txt > Solarus-ARPG-Game-Development-Book_2`

3.The Solarus-ARPG-Game-Development-Book_2.txt is renamed to Solarus-ARPG-Game-Development-Book_2.md

4.A table of contents is added with Haroopad and the URLs are changed to folder directories.

5.The .md file is exported as an HTML file and printed with Chrome. The table of contents, images, code syntax, style/theme, and everything still works in the pdf exported from Chrome.


## Book v1.1

This version would be for Solarus 1.6

**Possible Additions:**
- Followers
- Inventory
- Projectiles
- Hookshot
- Boomerang

## Book v1.2

This version of the book might never happen.

**Possible Additions:**
- Allied AI

Bare basics needed for Allied AI:
- Follower script (follow hero)
- Distance detection script (For enemy and hero)
- Allied AI moves toward enemy and enemy move toward allied AI based on distance.
- Ally projectiles
- Melee attack animations and damage based on distance.
- Border tests for when allies gets stuck.
- Hero walking through ally
- Targeting system. (The enemy and ally will continue to attack the current target. Do not want them to run off to random targets without defeating the first one.)

Advanced:
- Call command. (Protect hero or regroup. That way they will attack enemies close to the hero.)
- Options for allied AI. (Dodge often, rapid melee attack, charged attacks, projectile attack, and balanced.)

Possible errors include:
- Walking over holes
- Not able to go up ladders
- No damage by prickles
- No animation when walking on grass
- Hookshot leaves allies behind
