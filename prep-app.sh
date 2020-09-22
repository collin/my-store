docker-compose -f $1 run web bundle exec rails db:migrate
docker-compose -f $1 run web bundle exec rails db:seed
docker-compose -f $1 run web bundle exec rake spree_sample:load
docker-compose -f $1 run web bundle exec rails g spree:frontend:copy_storefront
# docker-compose -f $1 run web bundle exec rails assets:precompile
