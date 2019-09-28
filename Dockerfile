FROM php:7.3.9-fpm-alpine3.10
RUN apk add bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
#apagar a pasta original do meu container
RUN rm -rf /var/www/html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#copia tudo meu meu diretorio raiz e joga no diretorio www do meu container
#COPY . /var/www/
#criando link simbolico... apontando o html para o public.. A maioria dos servidores aponta para o html
RUN ln -s public html

EXPOSE 9000
#COMANDO PARA PHP FICAR EXECUTANDO
ENTRYPOINT ["php-fpm"]