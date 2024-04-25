#!/bin/bash

# Array con los nombres de las bibliotecas
libraries=(
  "libglib-2.0.so.0"
  "libgobject-2.0.so.0"
  "libgstreamer-1.0.so.0"
  "libgstsdp-1.0.so.0"
  "libgstwebrtc-1.0.so.0"
  "libgio-2.0.so.0"
  "libgmodule-2.0.so.0"
  "libgstrtp-1.0.so.0"
  "libgstpbutils-1.0.so.0"
  "libgstbase-1.0.so.0"
  "libgstvideo-1.0.so.0"
  "libgstaudio-1.0.so.0"
  "libgsttag-1.0.so.0"
  "liborc-0.4.so.0"
)

# Loop para crear los enlaces simbólicos
for lib in "${libraries[@]}"; do
    ln -sf "/usr/lib/x86_64-linux-gnu/$lib" /opt/resolve/libs/
done
