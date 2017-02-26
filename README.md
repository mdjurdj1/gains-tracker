# Welcome to Gains Tracker!

This Sinatra app will allow you to create, save, and edit your workouts in a persisted journal. You can also add/save your own custom exercises!

## Installation

First, clone the repository, then execute:

'$ bundle install'

## Usage

Clean, then migrate the database:

`rake db:reset  db:migrate`

To start the server, run:

'$ shotgun'

Then, navigate to your provided shotgun server.

## Tech

Gains Tracker uses a number of open source projects to work properly:

Sinatra - A DSL for quickly creating web applications in Ruby with minimal effort.
Active Record - Connects classes to relational database tables.
Bcrypt - A sophisticated and secure hash algorithm designed by The OpenBSD project.

Gains Tracker itself is also an open source project with a public repository on GitHub.

## Contributing

Bug reports and pull requests are welcome on GitHub at the [Gains-Tracker repository]https://github.com/'Michael Djurdjevic'/gains-tracker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
