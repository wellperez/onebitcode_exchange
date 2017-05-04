# [One Exchange](https://onexchange.herokuapp.com/)

[![Codeship Status for codeship/documentation](https://codeship.com/projects/0bdb0440-3af5-0133-00ea-0ebda3a33bf6/status?branch=master)](https://app.codeship.com/projects/216922)
![ruby](https://img.shields.io/badge/Ruby-2.3.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)

## Sobre

O One Exchange é um app web que permite que usuários de qualquer lugar do mundo possam converter rapidamente seus valores em uma moeda pretendida, podendo ser acessado do desktop ou qualquer outro dispositivo móvel.

## Layout da Aplicação

![One Exchange](https://raw.githubusercontent.com/wellperez/onebitcode_exchange/master/public/demo.png)

## Instalação
* [Docker](https://docs.docker.com/engine/installation/)

Tenha o Docker instalado e execute os seguintes passos dentro do diretório que foi clonado do GitHub, usando um terminal:

```
docker-compose build
docker-compose run --rm website rails db:create db:migrate
```
