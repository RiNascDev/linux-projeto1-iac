!/bin/bash

echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos dos usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários..."

useradd carlos -c "Carlos Souza" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -c "Maria Souza" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -c "João Souza" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM

useradd debora -c "Débora da Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN

useradd josefina -c "Josefina Pereira" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -c "Amanda Pereira" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -c "Rogério Pereira" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 
chmod 777 /publico

echo "Finalizado ... Obrigada!"
