# Задача: Разработать ansible, запускающий докеризированное веб приложение (nginx, php, mysql) с использованием docker-compose.yml на удалённом сервере.

Этот проект разворачивает и запускает контейнеры PHP8-FPM, Nginx, MySQL, используя Ansible + Docker.

## Как это работает?

В проекте есть Dockerfile, который собирает образ PHP, устанавливая модуль MySQL.

Переходим к docker-compose. Он запускает Docker-приложение, состоящее из 3 контейнеров.

• PHP-FPM
• Nginx
• MySQL

Наконец Ansible шаблон playbook.yml, задачей которого является установка docker и docker-compose, копирование nginx-php.conf из template, не забывая о рестарте самого Nginx, и проверка работоспособности самих контейнеров.
