alias cdp='cd ~/Documents/olaide/workspace/simulation'
alias gp='git push'
alias migrate='bundle exec rake db:migrate && bundle exec rake d
ndle exec rake db:migrate'
alias rs='bundle exec rake spec'
alias rt='bundle exec rake test'
alias subl='"/c/Program Files (x86)/Sublime Text 2/sublime_text.exe"'
​
function gcp() {
  git add .
  git commit -m $1
  git push origin master
}
​
function rails_new() {
  rails new $1
  cd $1
  git init
  git add .
  git commit -m 'Initial commit'
  subl .;
}
​
function rails_pg() {
  rails new $1 -T -B --database=postgresql
  cd $1
​
  # configure postgres
  echo /config/database.yml >> .gitignore
  mv config/database.yml config/database.example.yml
  sed "s/username: "$1"/username: /g" config/database.example.yml > config/database.yml
  rake db:create
​
  add_rails_gems
​
  cd .. && cd $1
  bundle
  cd .. && cd $1
  rails generate rspec:install
​
  # save progress
  git init
  git add .
  git commit -m 'initial commit'
​
  subl .
}
​
function rails_r() {
  rails new $1 -T -B
  cd $1
​
  add_rails_gems
​
  cd .. && cd $1
  bundle
  cd .. && cd $1
  rails generate rspec:install
​
  # save progress
  git init
  git add .
  git commit -m 'initial commit'
​
  subl .
}
​
​
​
function add_rails_gems() {
​
  echo "
#gem 'acts-as-taggable-on'
#gem 'carrierwave'
#gem 'devise'
#gem 'kaminari'
#gem 'ransack'
#gem 'simple_form'
#gem 'state_machine'
#gem 'stringex'
​
group :test, :development do
  gem 'capybara'
  #gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'pry-rails'
  #gem 'quiet_assets'
  gem 'rspec-rails'
  #gem 'shoulda-matchers'
  #gem 'valid_attribute'
end
​
" >> Gemfile
​
}
