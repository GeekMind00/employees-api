Employee-API

## About The Project

> Employee-API is an API that provides endpoints for managing employees information.

### Built with

- main project [RoR](https://rubyonrails.org/)
- testing: [Rspec](https://rspec.info/).


## Getting Started

> This is an list of needed instructions to set up your project locally, to get a local copy up and running follow these instructions.

### Installation

1. **_Clone the repository_**

```sh
git clone git@github.com:GeekMind00/employees-api.git
```

2. **_Navigate to repository directory_**

```sh
$ cd employees-api
```

3. **_Install dependencies_**

```sh
$ bundle install
```

### Running

1. **_Running the application_**

```sh
$ rails s
```
- Routes:
    - To get the name and uin of every employee:
   ```sh 
   get /employees
   ```