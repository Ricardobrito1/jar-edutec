#!/bin/bash
sudo apt install figlet -y
echo "======================================================="
echo " "
figlet Edutec || echo "Edutec"
echo " "
echo "======================================================="
echo " "

echo " Bem-vindo ao assistente de instalação da Edutec"
echo " "

echo "Iremos instalar alguns itens necessarios para a inicialização da nossa aplicação"
echo " "

echo "Em alguns momentos iremos solicitar que você responda com 'Y ou N' ou caso esteja em portugues 'S ou N'"
echo " "

echo "Antes de começar iremos atualizar os pacotes do seu pc"
echo " "
echo " "
echo "Podemos dar inicio a instalação?"
echo "1 - SIM"
echo "2 - Não"
read comecar

if [ "$comecar" -eq "1" ];
then

sudo apt-get update
sudo apt-get upgrade

else

exit

fi

echo " "
echo " "

echo "=========================================================================================================="
echo " "
echo "Realizando o download do  java (Se ja estiver instalado ele irá mostrar a versão)"
echo " "
echo "=========================================================================================================="
java -version || sudo apt-get install default-jdk -y

echo " "
echo " "

echo "=========================================================================================================================="
echo " "
echo "Instalando o maven (Se ja estiver instalado ele irá mostrar a versão)"
echo " "
echo "==========================================================================================================================="
mvn -version || sudo apt install maven

echo " "
echo " "
echo "Está quase tudo pronto agora iremos instalar nossa aplicação"
echo " "
echo "No meio da instalação será criada uma pasta para onde terá nossos arquivos"

git clone https://github.com/Ricardobrito1/jar-edutec.git

cd  jar-edutec

echo " "
echo "$estamos nesse caminho do seu computador "
pwd

echo " "
echo "Deseja iniciar o programa?"
echo "1 - SIM "
echo "2 - NÃO"
read ini

if [ "$ini" -eq "1" ];
then
java -jar jar-edutec.jar
else
exit
fi
