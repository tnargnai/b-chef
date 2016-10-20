name 'app_nginx'
maintainer 'Barclays'
maintainer_email 'ian.grant@barclayscorp.com'
license 'all_rights'
description 'Installs/Configures app_nginx'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'b-nginx', '>= 0.1.1'
# depends 'b_helpers', '>= 0.1.0'
