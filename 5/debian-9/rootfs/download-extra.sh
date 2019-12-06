#!/bin/bash
curl -o /tmp/bbpress2.5.14.zip https://downloads.wordpress.org/plugin/bbpress.2.5.14.zip
curl -o /tmp/gambit.1.5.3.zip https://downloads.wordpress.org/theme/gambit.1.5.3.zip
unzip /tmp/bbpress.2.5.14.zip -d /opt/bitnami/wordpress/wp-content/plugins
unzip /tmp/gambit.1.5.3.zip -d /opt/bitnami/wordpress/wp-content/themes
