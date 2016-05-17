### Gorilaz!

A small and very simple application made for my friend who is an owner of Academia Gorila, martial arts gym located in Warsaw, Poland.

The gym becomes more and more popular. When the promotion day for Brazilian Jiu Jitsu practitioners is coming, Marcin is having more and more issues with remembering all the details about every single person.

So this tool is a member catalog. It is supposed to store basic information like:
- name, nickname, last name
- belt and stripes
- date of birth
- date of joining the gym
- avatar
- additional notes

The app allows to sort the listing in many ways and use different search methods. It also provides simple statistics and other minor functionalities.. and it keeps growing!

A really cool feature is that the belts and the stripes are being rendered by a nice piece of CSS code thanks to my lovely wife.

There is a working demo linked to the master branch on Heroku. It can be found [here](http://gorilaz.herokuapp.com "Gorilaz test")
Feel free to log in and mess around!

'''
Login:  koci@o2.pl
Pass:   dupadupa
'''

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

9. Wanna know more about Rails?
    * [Getting Started with Rails](http://guides.rubyonrails.org/getting_started.html)
    * [Ruby on Rails Guides](http://guides.rubyonrails.org)
    * [The API Documentation](http://api.rubyonrails.org)
    * [Ruby on Rails Tutorial](http://www.railstutorial.org/book)


If you want to know more about us, check our [website](https://www.gorila.pl "Gorila's Homepage") or [Facebook page](https://www.facebook.com/GorilaAkademia/?fref=ts "FB") page!
