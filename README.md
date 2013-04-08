##What is Chater?
Chater 是一个在线聊天室，一个实时web应用，一个基础实践.....
演示地址：
http://chatter9.herokuapp.com

##How to run Chater?

```
  git clone  git@github.com:songjiayang/chater.git
  cd chater
  bundle 
  rackup faye.ru -E production -s thin       #启动faye
  bundle exec rake db:create
  bundle exec rake db:migrate
  bundle exec rake db:seed #初始化数据需要注入
  rails s

```
##Dependences

* [rails](http://rubyonrails.org/)
* [faye](http://faye.jcoglan.com/)


##参考文档
* [How to Use Faye as a Real-Time Push Server in Rails](http://net.tutsplus.com/tutorials/ruby/how-to-use-faye-as-a-real-time-push-server-in-rails/)

##Preview
* 演示地址:[chater](http://weidaxue.me:4000)
