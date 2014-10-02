name             'nginx_fallback_to_apache'
maintainer       'Braulio Bhavamitra'
maintainer_email 'braulio@eita.org.br'
license          'GPLv3+'
description      'Create a default site in Nginx that matches unhandled hosts and proxy them to Apache'
long_description File.read("#{File.dirname __FILE__}/README.md")
version          '1.1.0'

depends         'nginx'
depends         'apache2'


