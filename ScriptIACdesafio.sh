#!/bin/bash

echo "Adicionando os grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os diretorios"
cd /
mkdir public
mkdir adm
mkdir ven
mkdir sec

echo "Adicionando nivel de acesso"
chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 760 /sec

echo "Adicionando usuarios"
useradd carlos -c "lider da equipe de ADMS" -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G  GRP_ADM

useradd maria -m -s /bin/bash -p " $(openssl passwd -crypt senha123)" -G GRP_ADM
useradd joao -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G GRP_ADM

useradd debora  -c "lider da equipe de vendas" -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G  GRP_VEN

useradd sabrina -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G GRP_VEN
useradd roberto -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G GRP_VEN

useradd rafa  -c "lider da equipe de SEC" -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G  GRP_SEC

useradd roger -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G GRP_SEC
useradd gabriele -m -s /bin/bash -p "$(openssl passwd -crypt senha123)" -G GRP_SEC


echo"Permiçoes de diretorio"
chown root: GRP_ADM/adm
chown root: GRP_VEN/ven
chown root: GRP_SEC/sec

echo"fim"
