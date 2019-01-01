name             'snort'
maintainer       'Sous Chefs'
maintainer_email 'help@sous-chefs.org'
license          'Apache-2.0'
description      'Installs Snort IDS packages'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '4.0.1'
chef_version     '>= 13.0'
source_url       'https://github.com/sous-chefs/snort'
issues_url       'https://github.com/sous-chefs/snort/issues'

supports 'centos', '~> 7'
supports 'redhat', '~> 7'
supports 'scientific', '~> 7'
supports 'oracle', '~> 7'

%w(ubuntu debian fedora amazon oracle).each do |os|
  supports os
end

depends 'yum-epel'
depends 'poise-archive'
