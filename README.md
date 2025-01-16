# Scheduled Tweets

Welcome to the Scheduled Tweets project!
This project allows users to schedule tweets to be posted at a later time using the Twitter API.
It is built using Ruby on Rails and follows the [GoRails tutorial](https://gorails.com/episodes/scheduled-tweets-with-sidekiq).

## Prerequisites.

Before you get started, you will need to have the following tools installed on your machine:

- Ruby 3.0 or higher
- Rails 7.0.4 or higher
- PostgreSQL or MySQL

You will also need to set up a [Twitter developer account](https://developer.twitter.com/) and create a new app to obtain the necessary API keys. These keys should be added to the `credentials.yml.enc` file using the `rails credentials:edit` command (see below for more details).

## Getting Started

To get started with the project, clone the repository and run the following commands:

```bash
bundle install
rails db:create db:migrate
```


This will install the required dependencies and set up the database.

Next, you will need to create a `master.key` file in the `config` directory. This file is used to decrypt the `credentials.yml.enc` file, which contains your Twitter API keys and other sensitive information.

Once you have created the `master.key` file, you can add your Twitter API keys to the `credentials.yml.enc` file using the `rails credentials:edit` command.

To start the Sidekiq worker, run the following command:

```bash
sidekiq
```


You can then start the Rails server with the following command:

```bash
rails server
```

The application will be available at http://localhost:3000.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributors

We would like to thank the following people who have contributed to this project:

- [Abdullah Hezam](https://github.com/AbdallahMH)
- [Muhannad Alghazali](https://github.com/M-AlGhazali)
- [Abdullah Alsaif](https://github.com/Abdullah-MSA)

## Acknowledgments

* [GoRails](https://gorails.com/)

Thank you!
