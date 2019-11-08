# Robot Framework Sample Application

This project is sample for using robotframework with Selenium2Library.

## Preparation

Install Selenium2Library

```sh
pip install robotframework-selenium2library
```

Please see [robotframework/Selenium2Library](https://github.com/robotframework/Selenium2Library) for more details.

Older library might not work for new firefox.
At that time please run the following command:

```sh
pip install --upgrade robotframework-selenium2library
```

## Run Example

Start Jetty.

```sh
mvn jetty:run
```

Run Test

```sh
robot ./src/test/resources/scenarios/
```

Or specify host/port(default: `localhost:5050`)

```sh
robot --variable HOST:192.168.1.2:8080 ./src/test/resources/scenarios/
```

Stop Jetty

```sh
mvn jetty:stop
```
