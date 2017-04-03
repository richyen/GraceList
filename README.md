# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Deploying the environment

  With Docker installed on your local machine, you can quickly deploy this app with the following commands:
  * `git clone https://github.com/GracepointMinistries/GraceList.git`
  * `docker-compose -f docker-compose.development.yml up -d --build`
  * `DB_1_ENV_MYSQL_ROOT_PASSWORD='abc123' docker-compose -f docker-compose.development.yml run web rake db:create db:schema:load db:seed`

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
