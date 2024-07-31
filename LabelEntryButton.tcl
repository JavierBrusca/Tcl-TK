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


######  LABEL + ENTRY + BUTTON   #####
#   change frame name
wm title . "LABEL + ENTRY + BUTTON"
#   create label 
label .label1 -text "Exploration area size: " -padx 0 
#   add to the pack on the window
pack .label1 -side left
#   create text input
entry .text1 -width 30 -relief sunken -textvariable text1
pack .text1 -side left -fill x -expand true
#   create button + procedure captureArea
button .run1 -text "OK" -command captureArea
pack .run1 -side right -padx 20 -pady 10

#   calculate area with input values
proc captureArea {} {
    global text1
    if {[ info exists text1 ] && [ string is integer $text1 ] && $text1 != ""} {
        puts "Exploration area size = $text1 x $text1"
        # se podría hacer esto: 
        # label .label3 -text "Exploration area size: " -padx 0 
        # pack .label3 -side left 
    } else {
        puts "ERROR: invalid area"
    }
}