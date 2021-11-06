![](https://img.shields.io/badge/Microverse-blueviolet)

# Hilnex Hospital - Book appointment with doctor

![Top Page Screenshot](./Screenshot.png)

> This is a backend API for a hospital application for booking appointments with doctors. See frontend project [here](https://github.com/HillaryOkello/see-a-doctor-frontend). User can signup and login. Once logged in user is assigned a json web token for authentication/authorization. Only authorized users can see the doctors and book an appointment. Unit tests are written using RSpec and Shoulda matcher.


## Built With

- Ruby v2.7.0
- Ruby on Rails v6.1.4.1
- Gems used for testing: Capybara, Rspec-Rails, and Shoulda-matchers.

## Live Demo
See live demo [here]()

## Description

There are three different models in the application:

- User: The User model represents a user of the application.

- Doctor: The Doctor model represents a doctor in the application.

- Appointment: The Appointment model represents an appointment that belongs to the user and the doctor.

These are the methods available in each controller:
- Users:
    * create: To sign up a user in the backend( POST /users)
    * show: To show a user in the backend( GET /users/:id)
    * user_params: To validate the parameters of the user in the backend( POST /users)
    * encode_token: To encode the json web token( POST /users)
    * secret_key: To encode the json web token( POST /users)
- Sessions:
    * create: To sign in a user in the backend( POST /sessions)
    * session_params: To validate the parameters of the session in the backend( POST /sessions)
    * encode_token: To encode the json web token( POST /sessions)
    * secret_key: To encode the json web token( POST /sessions)
- Doctors:
    * index: To show all doctors in the backend( GET /doctors)
    * show: To show a doctor in the backend( GET /doctors/:id)
    * set_doctor: To set the doctor in the backend( GET /doctors/:id)
- Appointments:
    * index: To show all appointments in the backend( GET /appointments)
    * show: To show an appointment in the backend( GET /appointments/:id)
    * create: To book an appointment in the backend( POST /appointments/new)
    * appointment_params: To validate the parameters of the appointment in the backend( POST /appointments)
    * set_appointment: To set the appointment in the backend( GET /appointments/:id)
    * destroy: To cancel an appointment in the backend( DELETE /appointments/:id)
    * update: To update an appointment in the backend( PATCH /appointments/:id)

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

Public API url is [here](https://see-a-doctor-backend.herokuapp.com/)
You can test all the API endpoints in any API testing tools like Postman.

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
- LinkedIn: [HillaryOkello](https://www.linkedin.com/in/hillary-okello/)
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
- [Ruby on Rails](https://rubyonrails.org/)

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
