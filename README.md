# Cloud-Security
This is an ELK monitoring stack within your virtual networks. This will allow us to monitor the performance of their Web server that is running DVWA. In particular, the ELK stack allows analysts to: Easily collect logs from multiple machines into a single database. Quickly execute complex searches, such as: Find the 12 internal IP addresses that sent the most HTTP traffic to my gateway between 4 a.m. and 8 a.m. in April 2020. Build graphs, charts, and other visualizations from network data. It is a fully functional monitoring solution that lives on the cloud.

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![TODO: Update the path with the name of your diagram](Images/diagram.png)
(https://drive.google.com/file/d/1HJpBRHtr6zmHwfHRupHsfUkd_LtsRca5/view?usp=sharing)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _playbook____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._filebeat-playbook.yml https://docs.google.com/document/d/1mGuldkKBbjS9C0bIFL74YIHlWdIgP_8jJLZN0o8QYuU/edit?usp=sharing

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly __secured and available___, in addition to restricting _access____ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_
Load Balancing plays an important security role as computing moves evermore to the cloud. The off-loading function of a load balancer defends an organization against distributed denial-of-service (DDoS) attacks. It does this by shifting attack traffic from the corporate server to a public cloud provider. is the process of distributing workloads across multiple servers, collectively known as a server cluster. The main purpose of load balancing is to prevent any single server from getting overloaded and possibly breaking down.

A jump box is a secure computer that all admins first connect to before launching any administrative task or use as an origination point to connect to other servers or untrusted environments. It is an intermediary host or an SSH gateway to a remote network, through which a connection can be made to another host in a dissimilar security zone, for example a demilitarized zone (DMZ). It bridges two dissimilar security zones and offers controlled access between them

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the __the logs___ and system __traffic___.
- _TODO: What does Filebeat watch for?_Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. Metricbeat helps you monitor your servers by collecting metrics from the system and services running on the server, such as: Apache
- _TODO: What does Metricbeat record?_Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.1.0.4   | Linux            |
| Web-1    | Configure| 10.1.0.5   | Linux            |
| Web-2    | memory   | 10.1.0.6   | Linux            |
| Web-3    | memory   | 10.1.0.9   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the __Jump Box___ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_162.231.160.216

Machines within the network can only be accessed by _Jump Box____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 10.1.0.5 10.1.0.6 10.1.0.9|
|  Elk-VM  | Yes                 | 10.2.0.4             |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_The primary benefit of Ansible is it allows IT administrators to automate away the drudgery from their daily tasks. That frees them to focus on efforts that help deliver more value to the business by spending time on more important tasks

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ... Install Python3-pip
- ...Install Docker using pip
- ...Install ELK
- ...Enable docker service on restart

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)======

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_filebeat and metricbeat.

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the __Playbook.yml___ file to _the abisble container_in the Jump Box__.
- Update the __the ansible.cfg___ file to include the IPs of the three machines (W2b-1, Web_2, and Web_3)
- Run the playbook, and navigate to _the absible container and the three VM___ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_In the abisble container
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_By adding the ELK's IP to the ansible.cfg file
- _Which URL do you navigate to in order to check that the ELK server is running?
http://52.183.31.107:5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._ansible-playbook /etc/ansible/pentest.yml
