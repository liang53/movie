# Moviebx

This web application is a movie and tv show discovery application built using
[movie database](https://developers.themoviedb.org/3/getting-started/introduction)
![alt text](https://files.tmdb.org/misc/api_step_1-1534865112.png)


## About the Application

### Task
* Create a full-stack application with a backend that communicates with the movie API.
* The front-end should be intuitive to use. Accompany your code with a full test suite.
* Deploy your site to a web host (e.g. on Amazon EC2, Heroku, Netlify, Google AppEngine, etc.).

#### Optional
* Include movies.
* Attach reviews to each show.
* When a user searches an actor or actress, display their biography first.
* Add autocomplete.
* Handle user entry errors.
* Create a similar items feature.


### Solution
* Real time results - The application allows you to discover the most popular tv shows and movies currently in current time. The movie database api is called in real time to display the most updated results. This app will update continuously with minimal maintenance.

* Search - The tool can run any searches on the keywords provided. It can search movies, tv shows, person, etc. It will only display items that are fully prepared for viewers with all information already uploaded. Simplified search functions will improve user experience.

* Detail information - Clicking a single movie or tv show will load the page about the item chosen. There's information on the genre, year released, rating, and total votes. Total votes are included to help pin point the greatest shows from the popular ones.

* The page is scalable. The application features dynamic sizing allowing user to view comfortably while adjusting the size

***

![alt text](https://github.com/sml2008/movie/blob/master/app/assets/images/movie_home.jpg?raw=true)

***

![alt text](https://github.com/sml2008/movie/blob/master/app/assets/images/search.jpg?raw=true)

***

![alt text](https://github.com/sml2008/movie/blob/master/app/assets/images/show_page.jpg?raw=true)


### Technical Details
The web application is built on Ruby on Rails with customized libraries for formatting (bootstrap, ionicons, and jQuery). The results returned are based on the api available on Movie Database. The structure is based on three main pages: welcome, tvshows, and movies.

#### Welcome Page
Welcome page is the landing page when the website is first loaded. Upon loading, it will display the navigation bar that includes a search bar. On the body of the page, it starts off with a photo carousel. Below the carousel, it shows the first page of the most popular tv shows and movies which is grouped under a page called "discover".

#### Search Bar
Search bar has a label search and all results will be directed to the show page under welcome.

#### TV Shows and Movies
The two sections for tv shows and movies will direct you to its specific group for show page. The show page is the movie/tv show/object selected for viewing. For instance, if a tv show was selected, it will direct the user to the tvshow/show page of the tv show. If a movie was selected, it will direct the user to the movie/show page of the movie


#### To Use the Application
Clone the application with

```
git clone https://github.com/sml2008/movie.git
```

In the helpers/movie_db_helper.rb, remove ENV['API_KEY']. The line is below

```
url = URI("#{HOST_URL}#{path}#{ENV['API_KEY']}")

```

Replace it with your movie database api key generated from your account. If you are deploying to a hosting site, go to the hosting site for instructions on how to hide your api key.


#### Hiding API key on Heroku
[Read this](https://devcenter.heroku.com/articles/config-vars ) to understand how to configure your app to for API Keys
