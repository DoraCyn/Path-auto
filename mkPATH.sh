#!/bin/bash
clear 
echo
echo
echo
echo
echo 			!========== добро пожаловать в создатель ПАТЧ папок и программ ==========!
echo
echo
echo
echo "создание папки с файлом - 1"
echo "создание файла - 2"
read -p "Введите номер действия: " variable

if [ "$variable" == "1" ]; then
    echo "введите имя вашей папки"
    read -p "Имя папки: " dir
    mkdir -p "$dir"
    echo "Папка '$dir' создана."

    # Добавление папки в $PATH
    echo "export PATH=\"\$PATH:$PWD/$dir\"" >> ~/.bashrc
    source ~/.bashrc

    cd $dir
    read -p "Имя файла в папке: " userFile
    touch "$userFile"
    sudo chmod +x $userFile

elif [ "$variable" == "2" ]; then
    echo "введите путь до вашей паки в которой нужно создать файл"
	read -p "путь: " diruser
	cd $diruser
    echo "введите имя вашего файла"
    read -p "Имя файла: " file
    touch "$file"
    echo "Файл '$file' создан."

else
    echo "Неверный выбор. Пожалуйста, выберите 1 или 2."
fi
