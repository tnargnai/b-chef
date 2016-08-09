name 'app-cookbook'
maintainer 'Barclays'
maintainer_email 'ian.grant@barclays.com'
license 'all_rights'
description 'Installs/Configures app-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'b-nginx' '>= 0.1.0'
depends 'b-goapp' '>= 0.1.0'
depends 'app-helper' '>= 0.1.0'
