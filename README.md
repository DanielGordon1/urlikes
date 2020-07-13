# LikeMachine

Due to the big success of [Hacker News](https://news.ycombinator.com) it's time to do the most awesome copycat ever. This application needs

- a social login (e.g. Twitter, GitHub, whatever comes to your mind)
- a homepage that has a form for logged in users allowing them to post a link (containing a url and a title)
- a list of posted links on the homepage, grouped by day (newest day first), sorted by highest like-count within each day (visible without login)
    - clicking on a title will open the url in a new window/tab
    - the list should display the like count
- a like button on each link to upvote that url (only visible for logged in users)
    - users will like a lot of links, therefore there should be no page reload after clicking on like
    - a successfull like should be confirmed by a short css-based animation
    - users can like a post only once
    - a user can unlike a liked post
- the owner of a post can delete that post
- (__optional__) display a thumbnail and/or description text in the list if the url contains corresponding open graph and/or twitter card information
- (__optional__) update the like count while the user is browsing the list
    - you can use polling, long polling, SSE or websockets (or whatever else is coming to your mind)
    - due to the change in like count of a post, it might change its position in the ranking. How do you do this in terms of UX?
    - please add a comment to readme or sourcecode why you have chosen that technology instead of others and what drawbacks it has

## Conditions

- The technology stack should be rails. You can chose your favorite version, pre-release is ok as well.
- Do not reinvent the wheel. Using libraries is a good thing!
- The optional tasks are optional. Doing it won't affect your grading. But if you do it, it will be judged as part of the overall application quality.
- Create this app in a your GitHub-Account and deploy a demo version to Heroku.
- Make sure this is _production ready_™️. This means a regular user without any special knowledge or account could start using your page.
