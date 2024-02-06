#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria de Oliveira" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João Almeida" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM


useradd debora -c "Débora Aparecida" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana das Dores" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Paiva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina Josefa" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda Conceição" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Paixão" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
