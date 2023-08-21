#/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Usuários no sistema..."

useradd beto -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd carlos -e -G GRP_ADM
useradd luciana -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd luciana -e -G GRP_ADM
useradd daniel -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd daniel -e -G GRP_ADM

useradd mariana -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd mariana -e -G GRP_VEN
useradd luana -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd luana -e -G GRP_VEN
useradd rafael -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd rafael -e -G GRP_VEN

useradd marcos -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd marcos -e -G GRP_SEC
useradd maria -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd maria -e -G GRP_SEC
useradd vinicius -m -s /bin/bash -p $(openssl passw -crypt senha1234) psswd vinicius -e -G GRP_SEC

echo "Permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"