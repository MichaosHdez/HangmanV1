# HangmanV1

Hangman is a CLI word game implementation of the classic hangman game.

#Installation

 - Clone using git from desired directory
 `git clone https://github.com/MichaosHdez/HangmanV1.git`
    OR
 - Download the ZIP file and uncompress it
 https://github.com/MichaosHdez/HangmanV1/archive/master.zip



# What you will need

  - Ruby Version 2.3 or later
  - Knowledge of cli directory navigation
  - Good guessing skills

# How to play
 - Navigate to the HangmanV1 directory
 - Run the config.rb file to configure your game (Optional)
 `ruby config.rb`
 - Run the play_hangman.rb file to play the game
 `ruby play_hangman.rb`

### Tech
 - Ruby
 - CSV gem
 - Open-URI gem
 - Reach Word Dictionary API

### Development
When creating the app, the first choice I made was that it was going to be a CLI game.

I then decided to write the program using Ruby, because of my familiarity with built in methods.

The first thing I worked on was the process of generating a single word leveraging the provided API. I used the Open URI gem to send a get request and receive a list of words. I then converted the response to a more useable array of words. I selected a random word from the array by generating a random number to use as the index.

Then I got to work on the user interaction aspect of getting input from the user as well as communicating the state of the game (guesses remaining, guessed letters). I then added visual representation of the state of the hidden word using underscores filling in the letters correctly guessed.

The above was done in a single page, so I started to separate the program into files that performed specific functions. I create a visuals file that held the visual aspect of the hangman and hidden word. I created the word_gen file to take care of generating words for the user to guess. This made it easier to work on the word generation process once I’d added configurable difficulty and the option to use phrases. The initial game logic I wrote at the beginning remained the same for the most part throughout the making of. I created the config.rb file to allow user to configure difficulty. I saved the game config in the form of a CSV file that is re written every time config.rb is run. The word generator runs based the settings found in settings.conf.

Finally I did some file/folder restructuring storing the game files in a folder called game. I only left the config, play_hangman, and README files at the top. Play hangman runs the game until the user no longer wishes to play.

### Todos

 - Leaderboard API
