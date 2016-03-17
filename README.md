#App Deployment with Heroku

[This](https://devcenter.heroku.com/articles/getting-started-with-ruby#introduction) should be everything you need to deploy for the first time.

Basic summary:
- Install the [Heroku Toolbelt](https://toolbelt.heroku.com/)
- Run `heroku create`
- Run `git push heroku master`
- Don't forget to `heroku run rake db:migrate` if you have db changes! (Or, the first time, to `rake db:create`)

From now on, daily or even whenever you have a few feature branches merged into `master`, you should `git checkout master`, `git pull origin master`, and then `git push heroku master` from your app directory. You should *only* be pushing your master branch up to production (Heroku).

Then `heroku open` to check out your handiwork!

#Debugging Deployment

- Run `heroku logs --tail` to see the log for your app in real time. This helps you assess if an error is occurring. Read the error the same way that you would read one in your Terminal buffer while the app is running--it has valuable information!
- If you're hitting an error in your application, take some time to try to reproduce the problem locally in your development environment. If you cannot, ask yourself what is different. Are there environmen variables that you need to add to your Heroku settings? Are you missing data in your production environment that you have locally because you created records via a form or console?
- Make sure no errors popped up when you ran `git push heroku master`! Read the messages carefully and review the log from each deploy after it occurs. If you see an error and you don't know what it means, paste it into Google and try to find out.
