#default['my_first_oracle_cookbook']['git_installer'] = 'Git-2.12.2.2-64-bit.exe'

default['my_first_oracle_cookbook']['sudo']['groups'] = []
default['my_first_oracle_cookbook']['sudo']['users']  = []


=begin
if node['platform'] == 'ubuntu'

	default['my_first_oracle_cookbook']['dir'] = '/var/www/customers/devops'
	default['my_first_oracle_cookbook']['own'] = 'root'
	default['my_first_oracle_cookbook']['grp'] = 'root'
	default['my_first_oracle_cookbook']['mode'] = '0755'
end

if node['platform'] == 'windows'

	default['my_first_oracle_cookbook']['dir'] = 'd:/devops'
	default['my_first_oracle_cookbook']['own'] = 'Administrator'
	default['my_first_oracle_cookbook']['grp'] = 'Administrator'
	default['my_first_oracle_cookbook']['mode'] = '0755'

end
=end