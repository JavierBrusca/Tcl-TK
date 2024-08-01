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
frame .button_frame
pack .button_frame -side right -padx 20 -pady 10
button .button_frame.run1 -text "Delete" -command deleteEntry
pack .button_frame.run1 -side top -padx 20 -pady 10

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
    if {[string length [.text1 get]] >= 10} {
        focus .button_frame.run1
    }
    highlightListboxItem
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
    global selectedIndex
    set selectedIndex [.listbox1 curselection]
    #puts $selectedIndex
    set selectedItem [.listbox1 get $selectedIndex]
    #puts $selectedItem
    set text1 $selectedItem
}

#   10. Procedimiento para resaltar el elemento del listbox que coincide con el texto del entry
proc highlightListboxItem {} {
    global text1
    set itemCount [.listbox1 size]
    for {set i 0} {$i < $itemCount} {incr i} {
        if {[string compare -nocase [.listbox1 get $i] $text1] == 0} {
            .listbox1 selection clear 0 end
            .listbox1 selection set $i
            .listbox1 see $i
            break
        }
    }
}

#   11. Botón para "comprar" las frutas
button .button_frame.comprar -text "Buy" -command buyfruits
pack .button_frame.comprar -side top -padx 20 -pady 10

#   12. Procedimiento para manejar la compra de frutas (puedes definirlo según tus necesidades)
proc buyfruits {} {
    global text1
    global fruitPrices
    
    #   crear diccionario con precios de cada fruta
    set fruitPrices {
        "Apple" 1
        "Banana" 2
        "Orange" 3
        "Strawberry" 4
        "Grape" 5
        "Melon" 6
        "Mango" 7
        "Kiwi" 8
        "Papaya" 9
        "Pineapple" 10
    }

    # crear nueva ventana
    set newWindow [toplevel .newWindow]
    wm title $newWindow "Buy Fruits"
    
    # Etiqueta en la nueva ventana
    label $newWindow.label -text "How much $text1 do you want?"
    pack $newWindow.label -padx 20 -pady 20
    
    entry $newWindow.entry1 -width 20
    pack $newWindow.entry1 -padx 20 -pady 10

    button $newWindow.buy -text "Confirm" -command [list confirmfruits $newWindow.entry1]
    pack $newWindow.buy -padx 20 -pady 20

    # Botón para cerrar la nueva ventana
    button $newWindow.close -text "Close" -command "destroy $newWindow"
    pack $newWindow.close -padx 20 -pady 20

    # procedure para confirmar la fruta y el precio
    proc confirmfruits { entry } {
        global fruitPrices
        global text1
        set number [ $entry get ]
        #puts $text1
        #puts $number

        set price [ dict get $fruitPrices $text1]
        #puts $price

        #puts $number
        if { [string is integer $number] && $number != ""} {
            set successWindow [toplevel .success]
            set total [expr $number * $price ]
            label $successWindow.label -text "It will be $number x $price = $total euros"
            pack $successWindow.label -padx 20 -pady 20

            label $successWindow.label1 -text "How much do you pay me?"
            pack $successWindow.label1 

            entry $successWindow.entry1 -width 20
            pack $successWindow.entry1 -padx 20 -pady 10

            button $successWindow.finish -text "Ok" -command [list finishPayment $successWindow.entry1 $total]
            pack $successWindow.finish -padx 20 -pady 20

            button $successWindow.close -text "Close" -command "destroy $successWindow"
            pack $successWindow.close -padx 20 -pady 20

        } else {
            set errorWindow [toplevel .error]
            label $errorWindow.label -text "Error, it must be an integer"
            pack $errorWindow.label -padx 20 -pady 20
            bell
        }
    }

    # procedure para calcular si el dinero recibido es mayor al total 
    proc finishPayment { entry total } {
        set number [ $entry get ]
        set diff [ expr $number - $total]

        if { $diff >= 0 } {
            set finishWindow [toplevel .finishWindow]

            label $finishWindow.label1 -text "Here you have, $diff"
            pack $finishWindow.label1 

            button $finishWindow.close -text "Pay me" -command exit
            pack $finishWindow.close -padx 20 -pady 20
        } else {
            set finishWindowError [toplevel .finishWindowError]

            label $finishWindowError.label1 -text "Dont play with me"
            pack $finishWindowError.label1        

            button $finishWindowError.close -text "Pay me" -command "destroy $finishWindowError"
            pack $finishWindowError.close -padx 20 -pady 20

        }
    }   
}


# BIND OPTIONS
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
#    <Control-KeyPress-C>: Pressing Control and C together.
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
