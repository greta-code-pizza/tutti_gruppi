<div align="center">
  <a href="https://github.com/bbatsov/ruby-style-guide">
    <img src="https://img.shields.io/badge/guideline-rubocop-blue.svg?longCache=true&style=flat" alt="Rubocop" />
  </a>

  <img src="https://circleci.com/gh/Kercode/tutti_gruppi/tree/develop.svg?style=svg" alt="Circleci" />

  <a href="https://semver.org/spec/v2.0.0.html">
    <img src="https://img.shields.io/badge/Semver-2.0.0-brightgreen.svg" alt="Semver" />
  </a>

  <a href="https://codeclimate.com/github/Kercode/tutti_gruppi/maintainability"><img src="https://api.codeclimate.com/v1/badges/f69f54a9bebccb345abe/maintainability" /></a>
</div>

This README document whatever steps are necessary to get the application up and running and some useful information about the project.

## Semver & Changelog

Given a version number MAJOR.MINOR.PATCH, increment the:

- MAJOR version when you make incompatible changes
- MINOR version when you add functionality in a backwards-compatible manner
- PATCH version when you make backwards-compatible bug fixes

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format (1.0.0.pre-release).

To store this informations we follow the [Keep A Changelog](https://keepachangelog.com/en/1.0.0/) prescriptions from the [Changelog](CHANGELOG.md) file.

[More informations about Semver](https://semver.org/spec/v2.0.0.html)

## Ruby & Rails versions

Like it's specified into the Gemfile, the ruby on rails version used for this project is `5.2.3` with ruby `2.6.2`.

**Gemfile**

```ruby
source 'https://rubygems.org'

ruby '2.6.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.3'
```

Check your current global version of ruby with `ruby -v` command and adapt it with rbenv for example:

```shell
# Show available versions of ruby
rbenv install --list
# Install expected version
rbenv install 2.6.2
```

Once expected ruby version is installed you have to choose between use it only for this project or define it as default ruby version:

<table>
  <tr>
    <th>Current project</th>
    <th>Default version</th>
  </tr>
  <tr>
    <td>
      <pre class="code highlight js-syntax-highlight sh monokai" v-pre="true"><code>rbenv local 2.6.2</code></pre>
    </td>
    <td>
      <pre class="code highlight js-syntax-highlight sh monokai" v-pre="true"><code>rbenv global 2.6.2</code></pre>
    </td>
  </tr>
</table>

[More informations about rbenv](https://github.com/rbenv/rbenv)

## Dependencies

When the ruby version is correct you can build dependencies with bundler.
First install bundler if it's not already done:

```shell
gem install bundler
```

Then install dependencies with bundler like that:

```shell
bundle install
```
[More informations about bundler](http://bundler.io/)

*requirement: node should be install*
```shell
brew install node
```

If you want to make changes to Stylesheets (compiled from node-sass (SCSS synthax)) You will have to install the Node Modules folders locally, To do so type:
```shell
npm install node-sass    # This should install jquery & node-sass
```
This commande should install node-sass locally on your computer.

Then you'll be able to make changes to SCSS files included in app/assets/stylesheets/sass.
To watch your changes you'll have to run a command to compile from one scss file to a css file:

```shell
npm run compile:sass 
# The above command will start a script from package.json file
# "scripts": {
#    "compile:sass": "node-sass app/assets/stylesheets/sass/main.scss app/assets/stylesheets/application.css -w"
#  }
```
And that's it :D

## Database creation

Before create and migrate database, specify the details of connection.
To do it, you can turn `config/database.yml.example` to `config/database.yml`.
Then, edit the files with your informations !

After that run this commands:

```shell
rake db:create
rake db:migrate
```

To populate the database with its default values, you can run this command:

```shell
rails db:seed
```

Or you can use one command (acting like a macro):

```shell
rake db:db
```
that reproduces these 4 commands:
```shell
rake db:drop        # drops database schema
rake db:create      # create the database
rake db:migrate     # migrate all the migrations
rake db:seed        # populate the database schema from your seeds.rb
```
Right now your database works !


[More informations about database configuration](http://guides.rubyonrails.org/configuring.html#configuring-a-database)
