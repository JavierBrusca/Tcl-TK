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

#   create label 
#label .label1 -text "Canvas: " -padx 0
#pack .label1 -side left


#   create canvas
canvas .canvas1 -width 6i -height 6i
pack .canvas1 -fill both -expand true
.canvas1 create rectangle 1i 1i 2i 2i -fill red

#   this only works on wish shell by going one line by one 
set rover1 [ .canvas1 create poly -0.125i -0.125i -0.125i -0.125i 0.3i 0 -fill blue ]
.canvas1 move $rover1 3i 3i