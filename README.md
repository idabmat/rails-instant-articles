# Integrating a Rails Blog with Facebook's Instant Articles

[Blog post
here](https://codingontheroad.com/code/2016/11/30/integrating-a-rails-blog-with-facebook-instant-articles/)

This is a simple demo with a minimal blog generating a RSS feed of instant
articles.

It uses Rails 5 and a patched version of [trix](https://github.com/basecamp/trix)

## Local development

To play with it:

* `bundle install` the gems
* Create, migrate and seed the database (PG): `rails db:setup`
* Serve: `rails s`

The RSS feed can be found at [localhost:3000/instant_articles.rss](http://localhost:3000/instant_articles.rss)

The generated Instant Article markup can be found at
[localhost:3000/instant_articles/1](http://localhost:3000/instant_articles/1)
