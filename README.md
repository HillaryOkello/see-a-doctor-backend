![](https://img.shields.io/badge/Microverse-blueviolet)

# Hilnex Hospital - Book appointment with doctor

![Top Page Screenshot](./Screenshot.png)

> This is a backend API for a hospital application for booking appointments with doctors. See frontend project [here](). User can signup and login. Once logged in user is assigned a json web token for authentication/authorization. Only authorized users can see the doctors and book an appointment. Unit tests are written using RSpec and Shoulda matcher.


## Built With

- Ruby v2.7.0
- Ruby on Rails v6.1.4.1
- Gems used for testing: Capybara, Rspec-Rails, and Shoulda-matchers.

## Live Demo
See live demo [here]()

## Getting Started

To get a local copy up and running follow these steps:

### Prerequisites

- Ruby: 2.7.0
- Rails: 6.1.4.1
- Postgres: >=9.5
- Git

### Usage

- Fork/Clone this project to your local machine
- Open folder in your local enviroment and run thes lines of code to get started:

Install gems with:

```Ruby
    bundle install
```

Setup database with:

```Ruby
   rails db:create
   rails db:migrate
   rails db:seed
```

Start server with:

```Ruby
    rails s -p 3001
```

Then open a web page and go to [port 3001 on your local machine.](http://localhost:3001)

### APIs

Public API url is []()
You can test all the API endpoints in any API testing tools like Postman.
See API documentation [here]()

## Running tests

```Ruby
    bundle exec rpsec
```

## Deployment

Follow vendor specific instructions to deploy the application.

## Potential Future Updates
- Add table for departments
- Success email after creating appointment
- Online payment

## Author

👤 **Hillary Okello**

- Github: [HillaryOkello](https://github.com/HillaryOkello)
- Twitter: [@Kellyhillary4](https://twitter.com/kellyhillary4)
- LinkedIn: [HillaryOkello](https://www.linkedin.com/in/shababali/)
- Email: [hillariouskelly@gmail.com](mailto:hillariouskelly@gmail.com)

## 🤝 Contributing

Contributions and feature requests are welcome!

Start by:

- Forking the project
- Cloning the project to your local machine
- `cd` into the project directory
- Run `git checkout -b your-branch-name`
- Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development(or master if not available) branch of the original project for a review

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://www.microverse.org)

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
