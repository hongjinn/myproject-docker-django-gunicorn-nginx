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

* Follow these steps to deploy immediately on Linode and see your site

* 


* Start an EC2 on AWS

* SSH into your EC2

* Clone this repository

* Run the command ```docker-compose up```

* Visit your EC2 ip address in your browser

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
