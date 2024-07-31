package require Tk
package require Ttk


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



wm title . "Attributes"

# Set the window size
wm geometry . 1800x1200

# Variable to store the selected option
set widget_option .button1

# Create an OptionMenu with different widget options
label .label_optionMenu -text "Select a widget:"
pack .label_optionMenu -padx 20 -pady 10
tk_optionMenu .optionMenu widget_option .button1 .label1 .entry1 .text1 .checkbutton1 .radiobutton1 .listbox1 .frame1 .canvas1 .progressbar1 .scale1 .spinbox1 .notebook1
pack .optionMenu -padx 20 -pady 10

# Create a label to display the configuration text
label .label2 -text "Button:"
pack .label2 

# Create a button
button .button1 -text "ClickMe" -command {show_attributes $widget_option}
pack .button1 -padx 20 -pady 10

# Create a frame to contain the text widget with scrollbar
frame .text_frame
pack .text_frame -padx 20 -pady 10

# Create a scrollbar and associate it with the text widget
scrollbar .text_scroll -orient vertical -command ".text_output yview"
text .text_output -width 60 -height 20 -wrap none -yscrollcommand ".text_scroll set"
pack .text_scroll -side right -fill y
pack .text_output -side left -fill both -expand true

# Create additional widgets to select their attributes
label .label_entry1 -text "Entry:"
pack .label_entry1 -padx 20 -pady 10
entry .entry1 -width 20
pack .entry1 -padx 20 -pady 10

label .label_text1 -text "Text:"
pack .label_text1 -padx 20 -pady 10
text .text1 -width 20 -height 5
pack .text1 -padx 20 -pady 10

label .label_checkbutton1 -text "Checkbutton:"
pack .label_checkbutton1
checkbutton .checkbutton1 -text "Check Me"
pack .checkbutton1 

label .label_radiobutton1 -text "Radiobutton:"
pack .label_radiobutton1
radiobutton .radiobutton1 -text "Option 1" -value 1 -variable rb_var
pack .radiobutton1 -padx 20 -pady 10

label .label_listbox1 -text "Listbox:"
pack .label_listbox1 
listbox .listbox1 -height 5
pack .listbox1 -padx 20 -pady 10

label .label_frame1 -text "Frame:"
pack .label_frame1 
frame .frame1
pack .frame1 

label .label_canvas1 -text "Canvas:"
pack .label_canvas1 
canvas .canvas1 -width 10 -height 10
pack .canvas1 

# Create a progress bar
label .label_progressbar1 -text "Progressbar:"
pack .label_progressbar1 
ttk::progressbar .progressbar1 -length 200 -mode determinate
pack .progressbar1 -padx 20 -pady 10

# Create a scale (slider)
label .label_scale1 -text "Scale:"
pack .label_scale1 
scale .scale1 -from 0 -to 100 -orient horizontal
pack .scale1 -padx 20 -pady 10

# Create a spinbox
label .label_spinbox1 -text "Spinbox:"
pack .label_spinbox1 
ttk::spinbox .spinbox1 -from 0 -to 10
pack .spinbox1 -padx 20 -pady 10

# Create a notebook (tabs)
label .label_notebook1 -text "Notebook:"
pack .label_notebook1 
ttk::notebook .notebook1 -width 50 -height 50
pack .notebook1  -padx 20 -pady 10 

# Procedure to show the attributes of the selected widget in two columns
proc show_attributes {widget} {
    .text_output delete 1.0 end
    .text_output insert end [format "%-20s %-20s\n" "Attribute" "Value\n"]
    .text_output insert end [string repeat "=" 40] "\n\n"
    foreach item [$widget configure] {
        .text_output insert end [format "\n%-20s %-20s" \
            [lindex $item 0] [lindex $item 4]]
    }
}
