# Veri - Living Design System
This repository features a living design system + style guide with UI/UX directives that can consistenly be applied across different platforms (e.g.: web and mobile).

It uses [Middleman](https://middlemanapp.com) as a framework for easy tapping of key-value design attributes stored on YML files.

### Development
- - -
1. `bundle`
2. `bundle exec middleman server`

### Deployment
- - -
A build task has already been setup so the static files are generated upon deployment on Heroku, therefore there is no need to run a build locally before deploying.

In order to deploy, please make sure you've been granted access to the Heroku app first and then:
1. `heroku git:remote -a veri-lds`
2. git push heroku master

The URL for the Heroku instance is https://veri-lds.herokuapp.com/
