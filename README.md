# spark-basic-structure
This is an axample of one possible way of structuring a Spark application

The application has filters, controllers, views, authentication, localization, error handling, and more. 
It contains the source code for the tutorial found at https://sparktutorials.github.io/2016/06/10/spark-basic-structure.html

## Make it work

```
mvn clean compile assembly:single

java -jar .\target\spark-basic-structure-1.0-SNAPSHOT-jar-with-dependencies.jar
```

And then go to http://localhost:4567/index/.

## Critique welcome
If you find anything you disagree with, please feel free to create an issue.

## Screenshot
![Application Screenshot](https://sparktutorials.github.io/img/posts/sparkBasicStructure/screenshot.png)
