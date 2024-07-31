

# Proyecto de Ejemplo en Tcl/Tk

Este proyecto es un ejemplo de cómo ejecutar un programa en Tcl/Tk.

## Prerrequisitos

Para ejecutar este proyecto, necesitas tener instalado Tcl/Tk. Puedes instalarlo siguiendo las instrucciones en la [página oficial de Tcl/Tk](https://www.tcl.tk/software/tcltk/).

## Estructura del Proyecto

El proyecto tiene la siguiente estructura:

```
├── src
│   ├── main.tcl
│   └── other_script.tcl
└── README.md
```
- `src/main.tcl`: El archivo principal del programa.
- `src/other_script.tcl`: Otros scripts utilizados por el programa.

## Ejecutar el Proyecto

Para ejecutar el proyecto, sigue estos pasos:

1. Abre una terminal.
2. Navega al directorio `src` del proyecto:

    cd src

3. Ejecuta el script principal `main.tcl` usando el intérprete Tcl:

    tclsh main.tcl
    

Si tu script utiliza Tk para interfaces gráficas, asegúrate de usar `wish` en lugar de `tclsh`:

wish main.tcl


## Notas Adicionales

- Asegúrate de que todos los archivos `.tcl` estén en el directorio `src`.
- Si agregas nuevos archivos o scripts, asegúrate de incluirlos o requerirlos adecuadamente en el archivo principal.

## Problemas Comunes

### Error: `tclsh: command not found` o `wish: command not found`

Si ves este error, significa que Tcl/Tk no está instalado o no está en tu PATH. Revisa la instalación de Tcl/Tk y asegúrate de que el intérprete está correctamente configurado.

### Error de Ejecución

Revisa los mensajes de error en la terminal para identificar y corregir cualquier problema en el script.

## Widgets Comunes

- `button`: Botón.
- `label`: Etiqueta.
- `entry`: Campo de entrada de texto.
- `text`: Área de texto.
- `checkbutton`: Botón de verificación.
- `radiobutton`: Botón de opción.
- `listbox`: Lista.
- `frame`: Organiza otros widgets (IMPORTANTE).
- `canvas`: Superficie de dibujo para formas y gráficos.
- `menus`: Menús.
- `ttk::progressbar`: Barra de progreso.
- `scale`: Control deslizante.
- `ttk::spinbox`: Permite seleccionar un valor de un rango usando flechas arriba/abajo.
- `ttk::notebook`: Organiza múltiples páginas o pestañas.


## Opciones de Bind

### Eventos del Ratón
- `<ButtonPress-1>` o `<Button-1>`: Presión del botón izquierdo del ratón.
- `<ButtonRelease-1>`: Liberación del botón izquierdo del ratón.
- `<Double-Button-1>`: Doble clic con el botón izquierdo del ratón.
- `<Triple-Button-1>`: Triple clic con el botón izquierdo del ratón.
- `<Motion>`: Movimiento del ratón con un botón presionado (arrastrar).

### Eventos del Teclado
- `<KeyPress>` o `<Key>`: Presión de cualquier tecla.
- `<KeyRelease>`: Liberación de cualquier tecla.
- `<KeyPress-A>`: Presión de la tecla 'A'.
- `<Control-KeyPress-C>`: Presión simultánea de Control y C.

### Eventos de Foco
- `<FocusIn>`: Cuando el widget gana foco.
- `<FocusOut>`: Cuando el widget pierde foco.

### Eventos de Ventana
- `<Configure>`: Cuando la ventana es redimensionada o movida.
- `<Destroy>`: Cuando un widget es destruido.
- `<Map>`: Cuando un widget es mostrado en la pantalla.
- `<Unmap>`: Cuando un widget es ocultado de la pantalla.

### Eventos de Listbox
- `<<ListboxSelect>>`: Cuando un elemento en el listbox es seleccionado.
## Recursos

- [Documentación de Tcl](https://www.tcl.tk/doc/)
- [Tutorial 1 de Tcl/Tk](https://www.tcl.tk/man/tcl8.6/tutorial/tcltutorial.html)
- [Tutorial 2 de Tcl/Tk]([https://www.tcl.tk/man/tcl8.6/tutorial/tcltutorial.html](https://www.tutorialspoint.com/tcl-tk/tcl_tk_quick_guide.htm))


Este archivo `README.md` proporciona una guía clara sobre cómo ejecutar tu proyecto en Tcl/Tk. Asegúrate de ajustar las rutas y nombres de archivos según la estructura específica de tu proyecto.
