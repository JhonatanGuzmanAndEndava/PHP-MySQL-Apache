# AM First Challenge

This repository is for document all work done with PHP7 + MySQL + Apache in AM first challenge - Endava

Bonus: MariaDB + NGINX

## Getting Started

You need to install and configure necessary tools. These instructions are **just for Windows users**

Please download software here: 

* [MySQL 5.7](https://dev.mysql.com/downloads/installer/) - For data persistence
* [Apache Lounge](http://www.apachelounge.com/download/) - Local server in your machine
* [PHP7](http://windows.php.net/download#php-7.2) - Programming Language Thread Safe Version

### MySQL

Just follow the installer instructions. Port default 3306

### PHP7

Unzip all files from **php-7.2.2-Win32-VC15-x64** into **C:\php7**
This is default folder. You will need aditional steps if you want to unzip in another folder

Copy **php.ini-development** and rename to **php.ini** this is the configuration file. If you want to
put in another place you will need aditional steps.

Open file and uncomment the line:

```
extension_dir = "ext"
```

Next, you have to add PDO library adding two lines in file:

```
extension=C:/php7/ext/php_mysqli.dll
extension=C:/php7/ext/php_pdo_mysql.dll
```

### Apache

Be sure you have installed the latest C++ Redistributable Visual Studio 2017

* [vc_redist_x64](https://go.microsoft.com/fwlink/?LinkId=746572) - 64bits version

Unzip all files from **httpd-2.4.29-Win64-VC15.zip** into **C:\Apache24**
This is default folder. You will need aditional steps if you want to unzip in another folder

Open *C:\Apache24\conf\httpd.conf* file and be sure this lines are ok:

* *ServerRoot "c:/Apache24"*
* *Listen 80*

At the end of the file you have to add these lines

```
AddHandler application/x-httpd-php .php
AddType application/x-httpd-php .php .html
LoadModule php7_module "C:/php7/php7apache2_4.dll"
PHPIniDir "c:/php7"
```

In **C:\Apache24\bin** execute the next commands:

```
httpd -k install
httpd -k start
```

To test. Open your browser and go to *http://localhost* You shoud see the message **It works!**

You can use *ApacheMonitor.exe* to shut down and reset the server.

### Running php files

1. Excute *script.sql* in MySQL workbench
2. Copy *.php files into *C:\Apache24\htdocs*
3. Adjust with the password for your MySQL Server
4. Execute in your browser *http://localhost/mysql.php* you should see a list of names

## Authors

* **Jhonatan J. Guzmán**

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgments

* Endava AM Team

