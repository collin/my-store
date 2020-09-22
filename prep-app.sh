docker-compose -f $1 run web bundle exec rails db:drop db:create db:migrate db:seed
docker-compose -f $1 run web bundle exec rake spree_sample:load
docker-compose -f $1 run web bundle exec rails g spree:frontend:copy_storefront
