## setup mindmapping

install xmind 8

install visual stludio code

clone the product-development repository `https://github.com/openidl-aais/product-development`

open visual studio code on that directory

## setup tech tools

install deltaxml xslt/xpath plugin

install xslt-js node `npm install xslt-js`

## setting up pentaho

download the latest communit edition

find the home of the appropriate java jdk

`/usr/libexec/java_home -V`

returns the jdk locations

```
kennethwsayers@Kenneths-MacBook-Pro-3 data-integration % /usr/libexec/java_home -V
Matching Java Virtual Machines (3):
    14.0.1 (x86_64) "Oracle Corporation" - "OpenJDK 14.0.1" /Users/kennethwsayers/Library/Java/JavaVirtualMachines/openjdk-14.0.1/Contents/Home
    11.0.2 (x86_64) "Oracle Corporation" - "OpenJDK 11.0.2" /Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home
    1.8.0_265 (x86_64) "Amazon" - "Amazon Corretto 8" /Users/kennethwsayers/Library/Java/JavaVirtualMachines/corretto-1.8.0_265/Contents/Home
/Users/kennethwsayers/Library/Java/JavaVirtualMachines/openjdk-14.0.1/Contents/Home
```

export the JAVA_HOME to the one you want. For pentaho it is the 1.8

`export JAVA_HOME=/Users/kennethwsayers/Library/Java/JavaVirtualMachines/corretto-1.8.0_265/Contents/Home`

change directory into the Data Integration.app/Contents/MacOS

run the fil there `./JavaApplicationStub`

i see errors in the command window, but the application comes up

get the ojdbc8.jar file from box/PDP Shared and put it into the lib folder in data-integration

restart pentaho
