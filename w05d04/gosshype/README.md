# GossHype

In this program you will find the database schema for a blog. Its name is "The Gossip Program" in which all users can post new gossips, comment them, like them... Gossips can have tags and users can send each other messages too.

Different data bases are necessary to make this program run.
-Users
-Cities
-Gossips
-Likes
-Tags
-Comments
-Private messages
-Tags of gossips

## How to run

After cloning the repo, using rails:

You can check the database from the rails console `rails console`.
You can then inspect the tables with e.g. `tp User.all`
If you would like to rebuild it, you can use the following:

```rails
rails db:drop
rails db:migrate
rails db:seed

rails console
```

Then as above to look at the different tables and all this new data.
