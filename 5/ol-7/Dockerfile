FROM bitnami/oraclelinux-extras:7-r555
LABEL maintainer "Bitnami <containers@bitnami.com>"

# Install required system packages and dependencies
RUN install_packages bzip2-libs cyrus-sasl-lib expat freetds-libs freetype glibc gmp gnutls keyutils-libs krb5-libs libcom_err libcurl libffi libgcc libgcrypt libgpg-error libicu libidn libjpeg-turbo libmemcached libnghttp2 libpng libselinux libssh2 libstdc++ libtasn1 libtidy libxml2 libxslt ncurses-libs nettle nspr nss nss-softokn-freebl nss-util openldap openssl-libs p11-kit pcre postgresql-libs readline sqlite xz-libs zlib
RUN bitnami-pkg unpack apache-2.4.41-3 --checksum 30ae9f98466bc180ec5b3121b000e0a8ee36ee3434d4645c7c3aa22710cc6166
RUN bitnami-pkg unpack php-7.3.12-1 --checksum c809d01cf8f4542d340dda697674e919a4e96f95c5e409551a21562bc9446afe
RUN bitnami-pkg install wp-cli-2.4.0-0 --checksum 877560924b4eaeba08a4e7086f85495260dce4adc4bbd3a6e876903544912b35
RUN bitnami-pkg unpack mysql-client-10.3.20-0 --checksum 6e895c7c56273bf724d87014c70187045fa0a399d9f24067e84f27475e3c071a
RUN bitnami-pkg install libphp-7.3.12-0 --checksum fc2975089347f4f0b2e6bf404870234bf3e2be7747030f00b061456b49a1445c
RUN bitnami-pkg unpack wordpress-5.3.0-2 --checksum 39b13797b916afd6dcf2fab2f01e02c77db8ad10e47c31cb471f1e0e8d806302

COPY rootfs /
ENV ALLOW_EMPTY_PASSWORD="no" \
    BITNAMI_APP_NAME="wordpress" \
    BITNAMI_IMAGE_VERSION="5.3.0-ol-7-r24" \
    MARIADB_HOST="mariadb" \
    MARIADB_PORT_NUMBER="3306" \
    MARIADB_ROOT_PASSWORD="" \
    MARIADB_ROOT_USER="root" \
    MYSQL_CLIENT_CREATE_DATABASE_NAME="" \
    MYSQL_CLIENT_CREATE_DATABASE_PASSWORD="" \
    MYSQL_CLIENT_CREATE_DATABASE_PRIVILEGES="ALL" \
    MYSQL_CLIENT_CREATE_DATABASE_USER="" \
    PATH="/opt/bitnami/apache/bin:/opt/bitnami/php/bin:/opt/bitnami/php/sbin:/opt/bitnami/wp-cli/bin:/opt/bitnami/mysql/bin:$PATH" \
    SMTP_HOST="" \
    SMTP_PASSWORD="" \
    SMTP_PORT="" \
    SMTP_PROTOCOL="" \
    SMTP_USER="" \
    SMTP_USERNAME="" \
    WORDPRESS_BLOG_NAME="User's Blog!" \
    WORDPRESS_DATABASE_NAME="bitnami_wordpress" \
    WORDPRESS_DATABASE_PASSWORD="" \
    WORDPRESS_DATABASE_SSL_CA_FILE="" \
    WORDPRESS_DATABASE_USER="bn_wordpress" \
    WORDPRESS_EMAIL="user@example.com" \
    WORDPRESS_FIRST_NAME="FirstName" \
    WORDPRESS_HTACCESS_OVERRIDE_NONE="yes" \
    WORDPRESS_HTTPS_PORT="443" \
    WORDPRESS_HTTP_PORT="80" \
    WORDPRESS_LAST_NAME="LastName" \
    WORDPRESS_PASSWORD="bitnami" \
    WORDPRESS_SCHEME="http" \
    WORDPRESS_SKIP_INSTALL="no" \
    WORDPRESS_TABLE_PREFIX="wp_" \
    WORDPRESS_USERNAME="user"

EXPOSE 80 443

ENTRYPOINT [ "/app-entrypoint.sh" ]
CMD [ "nami", "start", "--foreground", "apache" ]
