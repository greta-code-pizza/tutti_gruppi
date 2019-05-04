<div align="center">
  <a href="https://github.com/bbatsov/ruby-style-guide">
    <img src="https://img.shields.io/badge/guideline-rubocop-blue.svg?longCache=true&style=flat" alt="Rubocop" />
  </a>

  <img src="https://circleci.com/gh/Kercode/tutti_gruppi/tree/develop.svg?style=svg" alt="Circleci" />
</div>



This README document whatever steps are necessary to get the application up and running.

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

## Database creation

Before create and migrate database, specify the details of connection.
To do it, you can turn `config/database.yml.example` to `config/database.yml`.
Then, edit the files with your informations !

After that run this commands:

```shell
rake db:create
rake db:migrate
```

Right now your database works !

[More informations about database configuration](http://guides.rubyonrails.org/configuring.html#configuring-a-database)
