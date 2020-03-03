#!/bin/bash

directory=$1
format=$2
fol_name=$3
arch_name=$4

mkdir $fol_name

find $directory -name "*.$format" -exec cp —backup=t {} $fol_name > /dev/null 2>&1 \; 

tar -zcf $arch_name $fol_name

echo 'done'