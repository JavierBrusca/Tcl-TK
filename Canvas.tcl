package require Tk

######  OPTIONS  #####
#   button 
#   label 
#   entry      
#   text
#   checkbutton
#   radiobutton
#   listbox
#   frame               -- organizes other widgets IMPORTANT
#   canvas              -- drawing surface for shapes and graphics
#   menus               
#   ttk::progresbar
#   scale               -- slider
#   ttk:spinbox         -- allows selecting a value from a rane using up/down arrow
#   ttk:notebook        -- organizes multpile pages or tabs


wm title . "Simple canvas"

#   create canvas
canvas .canvas1 -width 6i -height 6i
pack .canvas1 -fill both -expand true
.canvas1 create rectangle 1i 1i 2i 2i -fill red