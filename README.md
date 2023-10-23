# Davinci Resolve Linux

Todo la instalación que verás en esta guía esta hecha sobre una Lap con Ubuntu 23.10 mantic

```bash

            .-/+oossssoo+/-.               user@ub2310-520 
        `:+ssssssssssssssssss+:`           ----------------- 
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 23.10 x86_64 
    .ossssssssssssssssssdMMMNysssso.       Host: 80WK Lenovo Y520-15IKBN 
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 6.5.0-9-generic 
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime:  
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 2348 (dpkg), 22 (snap) 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: bash 5.2.15 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Resolution: 1920x1080, 1920x1080 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   DE: GNOME 45.0 
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   WM: Mutter 
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   WM Theme: Adwaita 
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Theme: Yaru-prussiangreen-dark [GTK2/3] 
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/    Icons: Yaru-prussiangreen [GTK2/3] 
  +sssssssssdmydMMMMMMMMddddyssssssss+     Terminal: tilix 
   /ssssssssssshdmNNNNmyNMMMMhssssss/      CPU: Intel i7-7700HQ (8) @ 3.800GHz 
    .ossssssssssssssssssdMMMNysssso.       GPU: NVIDIA GeForce GTX 1050 Mobile 
      -+sssssssssssssssssyyyssss+-         GPU: Intel HD Graphics 630 
        `:+ssssssssssssssssss+:`           Memory: 3041MiB / 15875MiB 
            .-/+oossssoo+/-.
                                                                   
                                                                   





```

## Instalación Davinci Resolve 18

#### Instalación Paquetes:
La istalación no será mucho problema, solo me pidio instalar las siguientes librerias extras en el sistema
abres un terminal ejecutas la siguiente linea y listo:

```bash
sudo apt install libapr1 libaprutil1 libxcb-cursor0

```
### Descomprimir pre-instalación
El fichero .run es un fichero tipo AppImage que la forma mas facil y práctica que encontré fue descomprimir el zip y a su vez el paquete .run:
```bash
# descomprimes el .zip descargado y en el mismo directorio ejecutamos:
./DaVinci_Resolve_18.6.2_Linux.run --appimage-extract

cd ./squashfs-root
# ejecuta el asistente de instalación y sigue los pasos
sudo ./AppRun
```

## Problemas encontrados y solucionados
el descrito anteriormente, y que hay que saber como extrar ficheros AppImage, pero en el video verás todo claro y paso a paso.

### 1 Errores al abrir Davinci

```bash
1). resolve: symbol lookup error: /lib64/libgdk_pixbuf-2.0.so.0: undefined symbol: g_task_set_stati c_name
```

### 2 Aviso Memoria esta Full (Error memoria Nvidia GPU)
Si tienes una grafica nvidia seguro te puede aparecer este problema, 
lo que hice fué ver un video en youtube y los pasos que indicaban son los siguientes:

1. abrir en un terminal o buscador nvidia-settings
2. Lateral Izquierda > Abajo del todo > Prime Profiles y marcar la opción (Performance Mode)
3. Reiniciar tu PC

Listo!

### 3 Error al importar videos MP4
Todo este tema te recomiendo revisar el link que te dejo al final, ahi enseña como config, obs studio por ejemplo que es algo
que uso mucho yo para hacer tutoriales, convertir videos compatibles para editarlos en Davinci, etc etc.

## Tips ayuda

Hay una serie de problemas que me encontré cuando empece a editar en Davinci como:

1. ### Como convertir tus videos a .mov con ffmpeg.
   pues Davinci version free no soporta mp4, acc ni h265 en Linux

2. ### Como configurar OBS studio
   para no tener que estar convietiendo  a cada rato si usas OBS es mejor configirarlo para que directo exporte en MOV con calidad y poco peso.

3. ### Como exportar a máxima calidad en Davinci
   Otro problema, al no tener capacidad de exportar en mp4 en Linux, esta guía me ayudo a encontrar la mejor configuracion para exportar los videos editados en maxima calidad y poco peso. Agredecimientos al autor que se tomó la molestia de hacer todas las pruebas, es una pesadilla teniendo tantos formatos y tantos presets.

Todo lo encontrarás [en este link](https://github.com/flolu/davinci-resolve-linux)