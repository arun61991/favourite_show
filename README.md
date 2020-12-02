This app helps user to view their favorite tv channels. User gets email as their show is going to start before half an hour.

Email functionality is implemented using whenever gem, to view more you can visit <a href="https://github.com/javan/whenever">https://github.com/javan/whenever</a>

Ruby version: ruby-2.5.1 , 
Rails version- rails-5.2

Mysql is used for development and Postgresql for production, set their passwords and username according to your credentials in config/database.yml.

Steps to run the app in local:

1. git clone "REPO URL"
2. cd to repo path
3. bundle install
4. rake db:create
4. rake db:migrate
5. rake db::seed
6. rails s


