VIM Basics and Command Reference
===

## VIM MODES:
1. Normal
2. Insert
3. Visual
4. Command

#### Normal
When you start Vim, it is in Normal mode.
This mode is used to navigate around the file.

#### Insert
Vim is in Insert mode with the use of any text editing commands from Normal mode. 
Every key pressed is directly inserted into the file.
Press ESC to exit Insert mode.

#### Visual
Visual mode is triggered with the use of v, V and Ctrl-v commands from Normal mode.
Visual mode allows to select a rectangular section of text and edit a block.

#### Command
:command in Normal mode navigates to Command mode. 
Command mode can perform complex editing functions, file actions, shell actions.


## MOVING THE CURSOR:

		^			h -- moves left
		k			l -- moves right
	<h		l>		j -- moves down
		j			k -- moves up
		v


* w      -- move cursor a word forward
* b      -- move cursor a word backward
* e      -- move cursor to end of the word
* ge     -- move back cursor to end of the word
* 0      -- moves cursor to start of the line
* $      -- moves cursor to end of the line
* CTRL-f -- Go forward one page
* CTRL-b -- Go backward one page
* gf     -- Go to the file location given in the line.
         For example if ~/scripts/file.pl is in the line; gf on word will open
	      that file for you.


## EXITING VIM:
* \<ESC\> or Ctrl+[ key (to make sure you are in Normal mode>
* :q! -- exits the vim editor, DISCARDING any changes.
* :wq -- exits the vim editor, SAVING any changes.
* ZZ  -- Same as :q!
* ZQ  -- Same as :wq


## TEXT EDITING IN NORMAL MODE:
* x -- delete the character under the cursor.
* i -- insert text under the cursor (before the cursor).
* s -- delete character under cursor and start insert mode.
* S -- delete line and begin insert line in the same line.
* a -- append text after the current cursor position.
* A -- append text to the current line where the cursor is present.
* I -- insert text to the begining of the current line where the cursor is present.
* o -- open a new line under the current line to add text.
* O -- open a new line before the current line to insert text.
* C -- delete from cursor to the end of the line and begin insert.


## DELETION COMMANDS:
* dw -- to delete until the start of the next word. It also strips of spaces next to
     the word. (make sure you are in normal mode; Press <ESC> to be sure.)
* d$ -- to delete to the end of file (make sure you are in normal mode; Press <ESC> to be sure.)
* d^ -- to delete to the begining of file
* de -- to delete to the end of the current word.


## LINE OPERATIONS:
* dd  -- to delete a whole line.
* 2dd -- to delete 2 consequetive lines.


## COUNT FOR MOTION:
Typing a number before a motion repeats it that many times.
* Syntax: <NUMBER> <MOTION>
  - *Ex: 2w -- moves the cursor two words forward.*
Typing a number with an operator repeats it that many times.
* Syntax: <OPERATOR> <NUMBER> <MOTION> 
  - *Ex: d2w -- deletes two words forward*


## THE UNDO COMMAND:
* u 		-- to undo the last commands.
* U 		-- to fix the whole line.
* CTRL-R 	-- redo the comands.


## THE PUT COMMAND:
* p -- to put the previously deleted command after the cursor


## THE REPLACE COMMAND:
* r -- replace a character on the cursor.
  * Ex: To change from late to tape
      * Move the cursor so it is on top of l and type r followed by t
      * Move the cursor so it is on top of t and type r followed by p


## THE CHANGE COMMAND:
* ce -- to change until the end of the word.
  * Ex: To change from lawre to lane
      * Move the cursor so it is on top of w
      * type ce to delete the remaining word starting from w (wre)
      * then type ne to complete the word (lane)

*The change operator is used with same motions as delete.*
- *c$  -- changes until end of line.*
- *c2w -- changes two words.*


## CURSOR LOCATION AND FILE STATUS
* CTRL-g -- A message will appear at the bottom of the page with the file name
            and position of the file.
* G      -- to move to the bottom of the file.
* 10G    -- to move to the 10th line of the file.
* gg     -- to move to the start of the file.


## THE SEARCH COMMAND:
**In normal mode:**
- type the / character and search phrase for searching in forward direction.
- type the ? character and search phrase for searching in backward direction.
- to search the same phrase again, simple type:
    - n -- for searching again.
    - N -- for searching in opposite direction.


## MATCHING PARENTHESES SEARCH:
*Type % to find a matching ), ], or }*
* This is very useful for debugging a program with unmatched parentheses.
* Place the cursor on any (, [ or { and type % character.
* type % again to move to the other matching bracket.


## THE SUBSTITUTE COMMAND:
*Syntax:* **:s/old/new/g**

Examples:
- :s/this/the       [Replaces the first occurence of 'this' to 'the'] 
- :s/this/the/g     [Replaces all the occurences of 'this' to 'the' the line]
- :#,#s/this/the/g  [Replaces all the occurences of 'this' to 'the' in the given range(#)]
- :%s/this/the/g    [Replaces all the occurences of 'this' to 'the' in the file]
- :%s/this/the/gc   [Replaces all the occurences of 'this' to 'the' in the file with a prompt]


## CHANGE/DELETE/COPY INSIDE PAREN/QUOTES:
**In normal mode:**
- type ci( or ci) for changing inside paren -- ()
- type di( or di) for deleting inside paren -- ()
- type yi( or yi) for copying inside paren -- ()

*Same logic for ', ", [, {*


## EXECUTE EXTERNAL COMMAND:
*Syntax:* **:!\<COMMAND\>**


## VISUAL BLOCK MODE Commands:
* c -- change selection
* I -- insert in front of cursor
* A -- append after cursor
* r -- replace every character in selection
* d -- delete selection
* o -- toggle cursor to opposite corner
