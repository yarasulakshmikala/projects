# Makefile to generate README.md

README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "Date and Time: $(shell date)" >> README.md
    echo "Number of lines of code: $(shell wc -l < guessinggame.sh)" >> README.md

clean:
    rm -f README.md
