#!/bin/bash


echo "Criando diretorios"

mkdir /publico; mkdir /adm; mkdir /ven; mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM; groupadd GRP_VEN; groupadd GRP_SEC

echo "Criando usuarios"


useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "Debora da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "Josefina da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio da Silva" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Criando permissões"

chown root:GRP_ADM /adm; chown root:GRP_VEN /ven; chown root:GRP_SEC /sec

chmod 777 /publico; chmod 770 /adm; chmod 770 /ven;chmod 770 /sec


