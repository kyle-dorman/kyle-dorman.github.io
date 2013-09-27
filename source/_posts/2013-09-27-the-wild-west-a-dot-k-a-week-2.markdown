---
layout: post
title: "the wild west a.k.a 'week 2'"
date: 2013-09-27 10:17
comments: true
categories:
---

{% codeblock metaprograming - .send().rb %}
puts "something meta this way comes" unless hardcoded
{% endcodeblock %}

Week 2!
It might be easier to keep track of weeks than days. So lets say week 2(4) and leave it at that. Topics I want to talk about paired programming and meta programming.

Paired programming is popular programming style (maybe those arn't the right words) where two programmers work together on the same project using 1 computer. In paired programming 1 programmer writes tests they expect the program to pass and then the other programmer takes over an writes code to pass the test. This approach is called ping-pong or red-green programming. Programmers pass the keyboard back and forth, which is where the ping pong comes from. After the first programmer writes the test, all the tests are run and b/c the functionality in the program has not been written yet, the tests fail. Failed tests show up as red in the command prompt (*you have to set the tests to show colors). Then the second programmer writes the code to have the tests pass. Once the code is written the tests are run again and if the program has been written correctly, (sort of an arbitrary idea) the tests will pass. The functionality can then be changed, or 'refactored', to clean it up or just write it better. Having tests written out is really nice bevause it means that if your code changes you will always know if changing one small thing will effect anything else in your code. The ping-pong/red-green process continues until they have competed the project (or atleas thats what I think, but we've only been doing 1-2 day projects).

The downsides of paired programming are obvious. A company could be paying two programmers to do the work of one and the better programmer can dominate the project while the other sits back and doesn't contribute. But the pros far outweigh the cons. My favorite benefit is that it forces eah person to vocalize what they are thinking. ften times I will have an inkling of what I should be doing and then dive into the project without fully fleshing out my idea. In paired programming you normally explain what you think you are about to write to the person you are working with before you write it. If my idea is only partly formed or has some falicy, it becomes obvious while I am speaking. Additioanlly, if I understand a concept, or rather think I understand a concept and my partner does not, I get to explain it to them and along the way learn a little bit more about the concept because I am trying to clearly explain it to someone else. The fli[p side of this is if I don;t understand something I have someone sitting next to me who is willing and able to explain things to me. Other things I benifit from are having a second person around to watch for syntax, typos and gramatical mistakes. Another important benefit which someone mentoned today is that diring paired programing, you can't really goof off. And to be honest, you don't feel the need to goof off nearly as much. Rather than just staring at a screen and feeling the constant need to check if ESPN posted another article about the NHL, I feel fully engaged in the problem I am sovling.

Overall, I feel like I have been the more experienced programmer in the 3 pairs I have been in. Even so, I don't think I would have completed the project much faster if at all, had I been working by myself. My partner has saved me from entering a fruitless rabbit hole many times. Also becasue someone is watching me type my code, I think I write much cleaner code. I used better variable names, space things out better and am more willing to write helper functions.

I'm pretty sure EnerNOC, where I used to work, does not use pair programming at all. I think they do do some type of testing (well ya, obviously they test things kyle) but not exactly the types of things we did here. I know the phrase 'acceptance criteria' was passed around which seems similar to what we are doing in red-green testing, but I don't think use it as liberally as we did in our work.

Ok so thats paired programming.

meta programming:
is probably not the right phrase. but i like it. (also im going to stop capitalizing everything) . meta programming is basically programming code to write more code. it is understanding that whatever code you need may not exist yet but based on a few inputs, we know what functions we might want to create. some people find this very confusing but i love it. for me its just recognizing patterns. i think day-to-day it probably isnt used too often but the few times you need it, it can be super powerful. to me powerful means it can handle many different cases and hopefully cases you dont even conceptualize when you write the code.

im sort of we'blog'ed out for now.

oh one other thing I worked on this week was linking to the facebook api. that was fun. hard because my javascript skills are subpar but its comeing alont. i am trying to create a simple site where people can sign up with facebook. more to come

Cheers,
Kyle

P.S. Please forgive any grammatical or spelling mistakes
