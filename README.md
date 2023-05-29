# Coding Challenge - Senior Backend Developer

This is a project to testing my skills for a position on getsafe.

## Installation

### Application

Let's start by installing the ruby dependencies

```bash
git clone git@github.com:owalmirneto/getsafe-coding-challenge.git

bundle install
```

## Run

### Application

You can put your file on the project:

```bash
bin/dowload_images path/to/you/file.ext
```

or use the example in `spec/factories/images.txt`

```bash
bin/dowload_images spec/factories/images.txt
```

or pass the full path file

```bash
bin/dowload_images /full_path/to/you/file.ext
```

All valid image urls will be saved in the `downloads` folder. The invalid urls will be ignored

### Test suite

You can run tests with

```bash
bin/ci
```

The test suite runs Rubocop and RSpec :)
