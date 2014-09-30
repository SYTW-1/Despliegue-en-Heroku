### Sistemas y Tecnologías Web:
##Práctica: Práctica: Despliegue en Heroku

Integracion continua en Travis 

[![Build Status](https://travis-ci.org/SYTW-1/Despliegue-en-Heroku.svg?branch=master)](https://travis-ci.org/SYTW-1/Despliegue-en-Heroku)

**Autor:** Eliezer Cruz Suárez: alu0100611298
**Autor:** Nestor Alvarez Díaz: alu0100594973

## Objetivo
-----------

Partiendo de la aplicación anterior que cuenta nuestros usuarios, seguir esta guía:

See [Build a Sinatra API Using TDD, Heroku, and Continuous Integration with Travis
by Darren Jones.  Published December 9, 2013](http://www.sitepoint.com/build-sinatra-api-using-tdd-heroku-continuous-integration-travis/)

En la cual se tratan los siguientes puntos:


* Writing tests using MiniTest
* Building a Sinatra API that returns information in JSON format
* Using Bundler to manage dependencies
* Using Git to manage version control
* Hosting Code on GitHub
* Deploying and host the site on Heroku
* Performing Continuous Integration with Travis CI


## Instalación
--------------

1. Instalaremos las gemas necesarias: `bundle install` o `rake bundle`
2. Configuraremos el fichero `configure.rb` siguiendo las directrices del fichero `configure.rb.example`


## Ejecución
------------

### Local

Podemos ejecutarlo de dos formas:

1. `rake server` o `ruby twitter.rb`
2. Iremos a [http://localhost:4567/](http://localhost:9393/) para poder usar la aplicación

### Web

Podemos acceder a la aplicación [aquí](http://ancient-sands-4653.herokuapp.com/).

#### Nota:

Se puede acceder mediante url poniendo: `url/nombre/número`.

## Test
-------

Podemos ejecutarlo de dos formas:
`rake test` , `ruby ./test/test.rb` , `rake`
