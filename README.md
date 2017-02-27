# Welcome to Gains Tracker!

This Sinatra-based Web app is a simple workout tracker with allows you to keep a running journal of your workouts. Provided below is a video walkthrough detailing this functionality. Registered Users are able to:

* Save workouts in a journal that only you can view
* Update or delete previous workouts as you please
* Add helpful notes to each workout
* Create and save custom exercises

## Video Walkthrough

[![Imgur](http://i.imgur.com/uU0cRDB.png)](https://www.youtube.com/watch?v=_NUHQjUVIEM&feature=youtu.be "Gains-Tracker!")

## Installation

First, clone the repository, then execute:

```
$ bundle install
```

## Usage

Clean, then migrate the database:

```
$ rake db:reset  db:migrate
```

To start the server, run:

```
$ shotgun
```

Then, navigate to your provided shotgun server.

## Tech

Gains Tracker uses a number of open source projects to work properly:

* Sinatra - A DSL for quickly creating web applications in Ruby with minimal effort.
* Active Record - Connects classes to relational database tables.
* Bcrypt - A sophisticated and secure hash algorithm designed by The OpenBSD project.

Gains Tracker itself is also an open source project with a public repository on GitHub.

##Todo List

* Add Rep/Set save functionality
* Attach directions/descriptions for each exercise
* Change Add/Remove exercise checkbox list to a dropdown selector with checkboxes
* Add those neat little graphics to username/password/email input fields (twitter bootstrap?)
* Make layout mobile friendly

## Contributing

Bug reports and pull requests are welcome on GitHub at the [Gains-Tracker repository]https://github.com/'Michael Djurdjevic'/gains-tracker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

This Web Application is available as open source under the terms of the MIT License.
