# Bash-Today
---
>A simple bash script that gives the you info for the day.

###What does it do
---
Bash-Today given a zip code gives the user the month and the day in a readable format along with the weather outlook. 

An example of this would be:

```
today 94091
>Today is September the 10th, in the city of Sunnyvale. The weather is Clouds.
```

Bash-Today uses the openweathermap api that can be found [here](http://openweathermap.org/api)


###Install
---
```
git clone https://github.com/BoredomIncarnate/Bash-Today
```

Bash today requires [jq](https://stedolan.github.io/jq/). On Mac you can install it on [Homebrew](http://brew.sh)

```
brew install jq
```

Make it an executable

```
chmod +x today.sh
```

I prefer my scripts to be in /usr/local/bin and to rename the script to today

```
mv yourFolder/Bash-Today/today.sh today
mv yourFolder/Bash-Today/today /usr/local/bin
```

###How to use it
It is simple just type today and just give the zip code of the city you are in. 

##ENJOY
