# Part 7 - Deploy and manage Prometheus and Grafana

First we install ansible.

        $ sudo apt install ansible

We created the yml files to install prometheus, grafana and node-exporter, each with their their respective container and volume.

We created the ansible playbooks for all of them.

We ran the volumes.

We ran all the playbooks at the same time importing them in all-playbooks.yml 

        $ ansible-playbook all-playbooks.yml

        