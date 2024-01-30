[dots]
# el0 ansible_host=192.168.1.33
# el1
#192.168.0.218
# amd
# tin1
# tin2
# nuc
# 4port
# fed
#dell
dell1
dell2
# 192.168.0.219

[insecuressh:children]
dots

[insecuressh:vars]
ansible_ssh_common_args='-o StrictHostKeyChecking=no'
