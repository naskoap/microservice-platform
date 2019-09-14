# microservice-platform

![Demo System Schematic](https://github.com/paulc4/microservices-demo/blob/master/mini-system.jpg)

## Versions

Current version (June 2018) v2.0.0 corresponds to Spring Boot 2 and Finchly release train.

**WARNING:** Only maven build has been updated.  Gradle build still to be done.

Previous versions have been tagged and can be accessed using the `Branch` button above or using `git checkout <version>` - for example `git checkout v1.2.0`.

Tagged versions are:

* v2.0.0 - Spring Boot 2.0 and Spring Cloud release-train Finchley
* v1.2.0 corresponds to Spring Boot 1.5 and Spring Cloud release-train Edgeware
* v1.1.0 corresponds to Spring Cloud release-train Brixton
* v1.0.0 corresponds to Spring Cloud release-train Angel.SR6

### Procedure

To run the microservice system from the command-line, open three CMD windows (Windows) or three Terminal windows (MacOS, Linux) and arrange so you can view them conveniently.

 1. In each window, change to the directory where you cloned the demo.
 1. In the first window, build the application using either `mvn clean package` or `gradle clean assemble`.  Either way the
    generated file will be `target/microservice-platform-2.0.0.RELEASE.jar` (even if you used gradle).
 1. In the same window run: `java -jar target/microservice-platform-2.0.0.RELEASE.jar registration`
 1. Switch to the second window and run: `java -jar target/microservice-platform-2.0.0.RELEASE.jar accounts`
 1. In the third window run: `java -jar target/microservice-platform-2.0.0.RELEASE.jar web`
 1. In your favorite browser open the same two links: [http://localhost:1111](http://localhost:1111) and [http://localhost:3333](http://localhost:3333)

You should see servers being registered in the log output of the first (registration) window.
As you interact wiht the Web application, you should logging in the both the second and third windows.

For a list of valid accounts refer to the [data.sql](https://github.com/paulc4/microservices-demo/blob/master/src/main/resources/testdb/data.sql) that is used by the Account Service to set them up.

 1. In a new window, run up a second account-server using HTTP port 2223:
     * `java -jar target/microservice-platform-2.0.0.RELEASE.jar accounts 2223`
 1. Allow it to register itself
 1. Kill the first account-server and see the web-server switch to using the new account-server - no loss of service.

