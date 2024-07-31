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

#   change frame name
wm title . "Multiline data"

#   create label 
label .label1 -text "Obstacles: " -padx 0
pack .label1 -side left

#   create text
text .text1 -width 20 -height 10 -relief sunken
pack .text1 -side left -fill x -expand true

#   create button + procedure captureObstacles
button .run1 -text "OK" -command captureObstacles
pack .run1 -side right -padx 20 -pady 10 

proc captureObstacles {} {
    global text1
    set lines [.text1 get 1.0 end]
    foreach line [split $lines "\n"] {
        if {$line != ""} {
            puts "Add obstacle here $line"
        }
    }
}