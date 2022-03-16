#!/usr/bin/env bash

echo -n "Introduce el nombre de la máquina: "
read nombreMaquina

echo -n "Introduce la ip de la máquina: "
read ip

mkdir $nombreMaquina
cd $nombreMaquina

mkdir nmap 
cd nmap
nmap $ip -open -Pn > reporte

cd -

mkdir explotation
mkdir data

cd -

cd nmap
echo ""
echo ""
echo ""
echo "-----------------------------------------------------------------------"
echo "REPORTE DE NMAP"
echo "-----------------------------------------------------------------------"
cat reporte
echo "-----------------------------------------------------------------------"
