#App Deployment with Heroku

[This](https://devcenter.heroku.com/articles/getting-started-with-ruby#introduction) should be everything you need to deploy for the first time.

Basic summary:
- Install the [Heroku Toolbelt](https://toolbelt.heroku.com/)
- Run `heroku create`
- Run `git push heroku master`
- Don't forget to `heroku run rake db:migrate` if you have db changes!

From now on, daily or even whenever you have a few feature branches merged into `master`, you should `git checkout master`, `git pull origin master`, and then `git push heroku master` from your app directory. You should *only* be pushing your master branch up to production (Heroku).

Then `heroku open` to check out your handiwork!

#Debugging Deployment

- Run `heroku logs --tail` to see the log for your app in realtime. This helps you asses if an error is occurring.
- Make sure no errors popped up when you ran `git push heroku master`! Read the messages carefully and review the log from each deploy after it occurs.
