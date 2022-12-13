[dots]
# el0 ansible_host=192.168.1.33
wnuc
# amd
# tin1
# tin2
# nuc
# 4port
# fed
# dell
# ell1
# dell2

[insecuressh:children]
dots

[insecuressh:vars]
ansible_ssh_common_args='-o StrictHostKeyChecking=no'
