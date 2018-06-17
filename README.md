#### install
```
bundle install
```
#### running 
```
bundle exec cucumber features/*.feature
```

### running different browsers
```
bundle exec cucumber  features/search.feature BROWSER=ff
bundle exec cucumber  features/search.feature BROWSER=chrome
```

### running api test
```
bundle exec cucumber  features/api.feature
```
![results output](img/output.png)

### java version of the same tests
https://github.com/arunasri/cucumber-test/tree/java
