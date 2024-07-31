#!/usr/bin/wish
package require Tk


frame .kernel
pack .kernel -side top

#   1. Cambia el nombre a la ventana  (wm)
wm title . "Welcome to Fruit Store"

#   2. Crea un label top (label)
label .label1 -text "Fresh Fruits: " -padx 0
pack .label1 -side top

#   3. Crea un entry left (entry)
entry .text1 -width 30 -relief sunken -textvariable text1
pack .text1 -side left -fill x -expand true

#   4. Crea un boton right (button)
button .run1 -text "Delete" -command deleteEntry
pack .run1 -side right -padx 20 -pady 10

#   5. Haz que pulsando el botón se borre el texto que se ponga en el entry (procedure)
proc deleteEntry {} {
    global text1 
    # puts $text1
    if { [ info exists text1 ] && $text1 != "" } {
        set text1 ""
    } else {
        bell
    }
}

#   6. Haz que el entry salte el foco cuando llegue al máximo de su longitud (bind)
bind .text1 <KeyRelease> {
    if {[string length [.text1 get]] >= 20} {
        focus .button1
    }
}

#   7. Crea un listbox
listbox .listbox1 -height 5 
pack .listbox1 -padx 20 -pady 10

#   8. Rellena con varios elementos la list box
.listbox1 insert end "Apple"
.listbox1 insert end "Banana"
.listbox1 insert end "Orange"
.listbox1 insert end "Strawberry"
.listbox1 insert end "Grape"
.listbox1 insert end "Melon"
.listbox1 insert end "Mango"
.listbox1 insert end "Kiwi"
.listbox1 insert end "Papaya"
.listbox1 insert end "Pineapple"

#   9. Haz que cuando se haga click en un elemento de la listbox aparezca el texto en el entry
bind .listbox1 <<ListboxSelect>> {
    global text1
    set selectedIndex [ .listbox1 curselection]
    #puts $selectedIndex
    set selectedItem [.listbox1 get $selectedIndex]
    #puts $selectedItem
    set text1 $selectedItem
}

#   BIND OPTIONS
# Mouse Events
#    <ButtonPress-1> or <Button-1>: Left mouse button press.
#    <ButtonRelease-1>: Left mouse button release.
#    <Double-Button-1>: Double-click with the left mouse button.
#    <Triple-Button-1>: Triple-click with the left mouse button.
#    <Motion>: Mouse movement with a button pressed (dragging).
# Keyboard Events
#    <KeyPress> or <Key>: Any key press.
#    <KeyRelease>: Any key release.
#    <KeyPress-A>: Pressing the 'A' key.
#   <Control-KeyPress-C>: Pressing Control and C together.
# Focus Events
#    <FocusIn>: When the widget gains focus.
#    <FocusOut>: When the widget loses focus.
# Window Events
#    <Configure>: When the window is resized or moved.
#    <Destroy>: When a widget is destroyed.
#    <Map>: When a widget is shown on the screen.
#    <Unmap>: When a widget is hidden from the screen.
# Listbox Events
#    <<ListboxSelect>>: When an item in the listbox is selected.