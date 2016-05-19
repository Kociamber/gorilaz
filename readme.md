### Gorilaz!

A small and very simple application made for my friend who is an owner of Academia Gorila, martial arts gym located in Warsaw, Poland.

The gym becomes more and more popular, number of people attending Brazilian Jiu Jitsu classes in the gym and all it's branches is growing vastly. Our professors needed a tool for gathering some some basic details about the members, this particularly becomes handy when a promotion day is coming ;-)

So this application is a members catalog. It is supposed to store basic informations like:
- name, nickname, last name
- belt and stripes
- date of birth
- date of joining the gym
- avatar
- additional notes

The tool allows to sort the listing in many ways and use different search methods. It also provides simple statistics and other minor functionalities.. and it keeps growing!

A really cool feature is that the belts and the stripes are being rendered by a nice piece of CSS code contributed by my lovely wife.

There is a working demo linked to the master branch on Heroku. It can be found [here](http://gorilaz.herokuapp.com "Gorilaz test")
User limit is set to 2, you will have to log in via my account. Feel free to sign in and mess around!

```
Login:  koci@o2.pl
Pass:   dupadupa
```

Please just remember it's Heroku - if you will upload your picture, it will disappear after a short while.

## Installation
If you want to run it on local system.

1. Make sure Ruby is installed on your system with following command:

        $ ruby -v

2. Make sure Rails is installed:

        $ rails -v

3. Enter your projects folder and clone Gorilaz git repository:

  $ git clone git@github.com:Kociamber/gorilaz.git

4. Enter Gorilaz folder and install all dependencies:

        $ cd gorilaz
        $ bundle install

5. Create db and migrate schema:

        $ rake db:create
        $ rake db:migrate

6. Populate db with 100 random generated members (optional step):

        $ rake db:seed

7. Start the web server:

        $ rails server

8. Using a browser, go to `http://localhost:3000`

9. Sign up, log in and have fun :) Please remember that you may create only two accounts!

If you would like to know more about us or join the classes, check our [website](https://www.gorila.pl "Gorila's Homepage") or [Facebook page](https://www.facebook.com/GorilaAkademia/?fref=ts "FB")!
