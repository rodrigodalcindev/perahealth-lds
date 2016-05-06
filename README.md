# Veri - Living Design System
This repository features a living design system + style guide with UI/UX directives that can consistenly be applied across different platforms (e.g.: web and mobile).

It uses [Middleman](https://middlemanapp.com) as a framework for easy tapping of key-value design attributes stored on YML files.

### Setup
- - -
1. `git clone https://github.com/DynamoMTL/veri-lds.git`
2. `bundle install`
3. `npm rm --global gulp`
4. `npm install`
5. `bundle exec middleman server`

### Development
- - -
Each page representing a design element or UI/UX component is automatically generated and based upon the creation of a YML file under `data/design_tokens`. The design token files contain key-value pairs that get parsed into a collection of properties describing elements or components. It is important to respect the syntax so the parsing works properly.

#### Example
In order to generate or update a Sass file listing the color swatches for the application, the corresponding design token YML would read:
```
---
  props:
    black:
      name:     "black"
      value:    "#000"
      type:     "color"
      category: "color"
    white:
      name:     "white"
      value:    "#FFF"
      type:     "color"
      category: "color"
```

Which when parsed would result in:
```
$black: #000000
$white: #ffffff
```

#### Parsing
Design tokens are parsed via a Gulp-based task that uses Saleforce's [Theo](https://www.npmjs.com/package/theo) plugin. The plugin can parse design tokens in a variety of formats including `.sass` (web), `.json` (iOS) and `.xml` (Android). Once a design token is ready to be exported, run `gulp` on your command line. The corresponding output files will be place under the `dist` directory.

### Deployment
- - -
A build task has already been setup so the static files are generated upon deployment on Heroku, therefore there is no need to run a build locally before deploying.

In order to deploy, please make sure you've been granted access to the Heroku app first and then:
1. `heroku git:remote -a veri-lds`
2. git push heroku master

The URL for the Heroku instance is https://veri-lds.herokuapp.com/
