Finally, all my dot files and usual install repos are gathered together for easy deployment.

Look around on github or in the files to see what will be downloaded to a new (or old) host.

Then edit to 'hosts' file to reflect the host(s) you want to deploy to.  Then run this ansible command:  ansible-playbook -i hosts dots-deploy.yml

It might take a few passes to insure the host is ready for ansible to push to it. 
