

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

## Recursos

- [Documentación de Tcl](https://www.tcl.tk/doc/)
- [Tutorial de Tcl/Tk](https://www.tcl.tk/man/tcl8.6/tutorial/tcltutorial.html)


Este archivo `README.md` proporciona una guía clara sobre cómo ejecutar tu proyecto en Tcl/Tk. Asegúrate de ajustar las rutas y nombres de archivos según la estructura específica de tu proyecto.
