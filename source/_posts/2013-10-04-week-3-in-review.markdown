---
layout: post
title: "week 3 in review"
date: 2013-10-04 09:16
comments: true
categories:
---

{% codeblock pis_in_the_sky - api.rb %}
puts "a website I will build today" unless web_crawlers
{% endcodeblock %}

Week 3!

Hello World. Week 3 is almost over. During the week it felt like we were moving slowly but now that I'm reflecting on what I learned, it feels like a lot. Monday we practiced designing a database for different website. That was a really fun exercise for me. I have a really easy time understanding how different tables connect together. We then moved on to ActiveRecord. ActiveRecord is a gem that amount other things communicated between ruby and sql. Basically it takes in ruby code and converts it to sql select, update, ect. statements. This is really useful because it allows developers to work in ruby and rails (ActiveRecord is included in rails) while trying to fetch data fro the database. I struggled with this a little because SQL has become so intuitive to me and ActiveRecord required a weird SQL-Ruby combo syntax which I wasn't use to. Not too big of a deal though, for the most part I will always know what SQL statement I want and can work backwards to get the ruby/ActiveRecord statement I need. After this we worked on connecting tables with ActiveRecord. Also very useful. There were a few funky relationships which I could conceptually understand but transforming that into ruby/ActiveRecord felt a little funny.

On Wednesday we started working with Sinatra. Sinatra is basically Rails-lite. It works with ActiveRecord but doesn't have all the ActionController stuff. This was great for two reasons. 1. It makes Sinatra smaller and easier to use on smaller projects which require less pages. 2. It was a great to learn Routes.
Routes, in my words, are the combination or HTTP requests and web addresses which tell a web server what a user wants to do. When you visit a websites homepage you are probably using the GET HTTP verb and visiting the '/' page. If you are signing up for a website you are probably on a '/signup' page (or whatever name the website decides to use) and when you click the 'sign up' button you are using either the POST or PUT HTTP verb. A POST verb will tell a web server that you are sending it data and are asking to make an update or insert into the database.

After we played with Sinatra I decided to update my applepicking website to use Sinatra and build a form of my own instead of cheating and using a google form. Part of the reason I used a google form was because I didn't know how to create a database on Heroku (a free website hosting service) but we covered how to do this while doing the Sinatra tutorial. While going over how to update my website with David, he showed me how to use a new site.gem/api called Stripe to allow users to pay for the applepicking trip while signing up using my site. How cool is that?! 'So cool, Kyle.' Awe thanks anonymous reader. So basically my site can go from a clunky single page to a full fledged sign-up site this weekend. Boom its happening.

Today we are going to start building a web scraper. Web scrappers, also called web crawlers, move around websites on their own reading html text and navigating pages to pull useful information. I'm really excited about this project because I actually had a plan for a website built around a web scrapper fetching university academic calendars and then aggregating then in one site. Be on the look out for springbreak.io, its gunna be big.

> springbreak.io, its gunna be big

So thats the week. We also learned about the internet on Wednesday. I am going to try and write a full post about the internet (its a big deal) tomorrow to explain it to all my faithful we'blog' followers and to wrap my own head around it.

Cheers,
Kyle

P.S. I found out sublimetext2 has a spell check, all spelling mistakes are no longer forgivable.
