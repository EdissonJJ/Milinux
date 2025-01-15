#!/bin/bash

# Definir la ruta base
base_dir="/home/egonzalez/Escritorio"

# Obtener la lista de archivos .ovpn de las subcarpetas
opciones=($(find "$base_dir" -name "*.ovpn"))

# Verificar que se encontraron archivos .ovpn
if [ ${#opciones[@]} -eq 0 ]; then
    echo "No se encontraron archivos .ovpn en $base_dir"
    exit 1
fi
