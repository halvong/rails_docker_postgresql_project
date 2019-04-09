RoR - Lynda.com
04/07/2019 mon.

chp5, Model naming 

#tutorial
docker-compose exec web rails g migration AlterUsers
docker-compose exec web rails g model Subject
docker-compose exec web rails g model Page
docker-compose exec web rails g model Section
docker-compose exec web rails db:migrate


#notes
redirect_to(:controller => 'demo', :action => 'index')

#db commands
docker-compose exec web rails db:migrate
docker-compose exec web rails db:migrate VERSION=0
docker-compose exec web rails db:migrate:status

rails g migration <Migration_name> 
rails g model <Name>  - model is singular and table name is plural 
up - change table
down - reverse

#test database connection
docker-compose exec web rails db:schema:dump


#----
docker-compose up
docker build -t docker_rails .
docker run -p 3000:3000 docker_rails rails s -b 0.0.0.0
docker-compose logs -f web
docker-compose build web #rebuilding image
#redis
docker run --name redis-container redis
docker-compose run --rm redis redis-cli -h redis #connects to redis cli 

docker-compose stop
docker-compose ps
docker-compose up -d database
docker-compose run --rm database psql -U postgres -h database
#logs
    docker-compose logs redis
    docker-compose up logs -f database
    docker-compose up logs -f web
#env    
mkdir -p .env/development, pg77
docker-compose run --rm web bin/rails db:create, pg78
docker-compose up -d --force-recreate web   --recreate container web
docker-compose exec web rails g scaffold User first_name:string last_name:string, pg80
docker-compose exec web rails db:migrate
http://localhost:3000/users
docker-compose stop database
docker-compose rm -f database  - removes database from container, wipes out database and data, pg83
docker-compose up -d database
docker-compose up -d web
#webpacker/react
docker-compose run web rails webpacker:install
docker-compose run web rails webpacker:install:react, pg 95
docker-compose up -d --force-recreate web, pg97
#rspec
docker-compose exec web rails generate rspec:install
docker-compose exec web rails spec
docker-compose exec web rails generate rspec:model user
docker-compose exec web rails spec, pg98
docker-compose exec web rspec spec/system/, pg101
docker-compose up -d selenium_chrome, pg 104
IN vnc client: #107
    localhost:5900
   

#-----------
#Steps
1. rails g model User
2. rails db:migrate, chp 4.6
3.


#
rbenv install --list

#tests connection
rails db:schema:dump

#path
cd /mnt/c/Users/Hal/Documents/projects/rails/demo_project

#-------- deprecated ----
#mysqsl
sudo service mysql start

#cmd
#hal:hal
export MYSQL_HOST=tcp://127.0.0.1

#database
demo

