# Website from scratch

Create and deploy a Django website with a pretty domain name and https.
* Docker
* Django (Python framework)
* Nginx (a reverse proxy server)
* Gunicorn (Python server)
* SQLite
* AWS EC2 (virtual private machine)
* Google Domains (where you will buy your domain name)


## Deploy on Linode

* Go to www.linode.com

* Create a Linode -> Marketplace -> Select "Docker"

* Select Region = Fremont and Linode Plan = Linode 2GB

* Enter a Linode Label such as example.com and Root Password

* Hit Create and wait for your Linode to boot up

```
# Starting from your local computer
scp -i ~/.ssh/linode_ssh_key_name github_key_name root@101.42.69.777:~/.ssh/          # Send your GitHub SSH key to your Linode
ssh -i ~/.ssh/id_rsa root@101.42.69.777                                               # SSH into your Linode
git clone git@github.com:hongjinn/myproject-docker-django-gunicorn-nginx.git          # Clone this repository into your Linode
cd myproject-docker-django-gunicorn-nginx                                             # Go into the folder you just created
docker-compose up -d                                                                  # Start docker containers

# Done! Open your browser and go to your Linode ip, http://101.42.69.777
```

## Local development

* Follow these steps to run your site on your local computer and start developing

```
# Clone this repository from your personal computer
git clone git@github.com:hongjinn/myproject-docker-django-gunicorn-nginx.git              

# Once cloned, feel free to change the name of the root folder only,
# from "myproject-docker-django-gunicorn-nginx" to "whateveryouwant"

# From the root folder, ie "myproject-docker-django-gunicorn-nginx" or "whateveryouwant"
source .env_local                                                         # Set environmental variables
python3 -m venv venv                                                      # Make a virtual environment
pip install -r requirements.txt                                           # Install dependencies like Django
source venv/bin/activate                                                  # Activate virtual environment
python myapp/manage.py runserver                                          # Open your browser and go to http://localhost:8000
```
