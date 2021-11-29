#!/bin/bash
sudo apt install figlet -y
echo "======================================================="
echo " "
figlet Edutec || echo "Edutec"
echo " "
echo "======================================================="
echo " "

echo " Bem-vindo ao assistente de instalação do Class Sight"
echo " "

echo "Durante o processo de instalação iremos atualizar seus pacotes e tambem baixar alguns software(Java e Maven) nescessarios para nossa aplicação rodar perfeitamente"

echo " "
echo " "
echo "Podemos dar inicio a instalação?"
echo "1 - SIM"
echo "2 - Não"
read resposta

if [ "$resposta" -eq "1" ];
then

sudo apt-get update
sudo apt-get upgrade

else

exit

fi

echo " "
echo " "
java -version || sudo apt-get install default-jdk -y

echo " "
echo " "

mvn -version || sudo apt install maven

echo " "
echo " "
echo "Agora iremos baixar a aplicação"
echo " "
echo "Iremos criar um diretorio para armazenar nossa aplicação"

git clone https://github.com/Ricardobrito1/jar-edutec.git

cd  jar-edutec

echo " "
echo "diretorio criado com a aplicação >>>>"
pwd

echo " "
echo "Deseja iniciar o programa?"
echo "1 - SIM "
echo "2 - NÃO"
read start

if [ "$start" -eq "1" ];
then
java -jar Edutec-Vm.jar
else
exit
fi
