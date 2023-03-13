# # Minefield-Game Ruby

This is an non-interactive game based on ruby. It is similar in functioning to the popular game 'Minesweeper' game.


## Initialization and Running the code
You need to perform various steps in order to initialize the game and correctly install the required packages. Though the game doesn't contain any specific packages it is good practice to install the packages and use the environment. (Please make sure **bundler** is already installed)

```
git clone https://github.com/garvitjain123/minefield-game-ruby.git
```

```
cd minefield-game-ruby
```

*Skip the following step if the bundler is already installed*
``` 
gem install bundler 
```

Now, install the gems
```
bundle install --deployment
```

Finally to run the code, enter the following command to the CLI
```
bundle exec ruby main.rb
```


## Tweaking the settings for Minefield

To tweak the setting for the **length** and **height** of the grid please modify the following `line 6` of code in **main.rb**

You can specify custom height and length of the minefield grid
```
minefield = Minefield.new(4,4)
```

To specify the number of mines in the grid please tweak the following `line 12` of **main.rb**

```
if  minefield.set_mines(4)
```

*Please note that if you try to specify the mines count greater than the size of the grid the program will end with an error message*