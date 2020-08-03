class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJwqQLOxEn5HnhX+AMmzL3tYziLRa5zkoijD2KhWb4nBWUAA1Oa1YDEk82NJpL7LPL7ECGlGZJDiRUlMJYbJFOa8FqFnUQbaQfsP8SfB/rlFjWvCGQ1zZ9tHL+d4lHlSmPRLjpCBq7XxIju2O9/u8+aS4UCyH9JfvJHXHoU7UTlYJs1CdFIJpIUDo9T2aPaFP3sLm6MhS5eRTDAURoX1/V7xiVYDrt2BOZbQ3QlVUiy7ZomJaT2B9FTiI6pKneXL3cfm5T2ZuM0jlcl/XRt8RreJvs68Aq3F9CL+1SSkjtsT8y8pzN6qisNwk9MmmG+rBEQ+iQX7g2K3hHJcvTJO5r',
	}  
}
