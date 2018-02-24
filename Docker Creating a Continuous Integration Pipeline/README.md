
# Docker Continuous Integration Pipeline POC
This poc is for exploring continuous integration pipeline. 

First we compose up our application with

docker-compose up -d

Then we execute a one time run with the following command.

docker-compose run dockerapp python test.py

With this approach we run our tests after the container starts up which makes it possible to run e2e tests.

Pros : A single image is used through development, testing and production, which greatly ensures the reliability of our tests.
Cons: It increases the size of the image.

