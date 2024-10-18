---
title: "2024 10 18"
date: 2024-10-18T06:37:41-04:00
---

I cut up my kitchen; meta update on this whole micro-blog thing.

### Haphazard reno

That new "beverage refrigerator" came in and it looks nice. This isn't a product
review, though. I pulled out the old one and slid the new one in and realized
that we were going to have a problem.

The slot the builders made for this fridge is really tight, like it's probably
close to 15" exactly, which is the nominal width of most of these things, so
you're already within 1/4" or less side to side. Because this particular fridge
has a door that pivots 1/4" out from the outside edge when opened (due to the
location of the hinge pivot point), the right outside edge of the door digs into
the side wall when opened.

Clearly this will not do!

The cutout for this fridge is in the cabinets to the left of the full-size
fridge, and there is a wall up the middle between them, which helps hide most of
the full-size fridge and blends with the cabinetry. But they put a piece of
molding up the front, which also sticks out maybe 1/4" on both sides of that
wall piece.

It's hard to describe in words but this was all very stupid because it makes it
harder to slide these appliances in and out. I decided to cut some out.

I figured if I just cut back some of that divider wall from the bottom edge of
the countertop to the floor, and back just far enough to reach the edge of the
body of the small fridge, everything would be perfect.

So I pulled both fridges out, dug up the circular saw, some clamps, a level, a
ruler, and my beautiful little finishing saw and I went at it. I think it
probably took me 45 minutes, and I had to hand-saw quite a bit because the
circular saw won't make it all the way to the floor of course.

Anyway it doesn't look "professional" but I think a little edging on the
unfinished front edge will fix that up, and at least now the small fridge slides
in perfectly and the door opens without issue.

### Meta-update

I've been at this for a bit now. I use it as a way to sort of mentally review
what's going on in my life and get more into the habit of writing in general.
I've also enjoyed some of the weird customizations I've made using Hugo to get
this to work the way it does, which is a bit... Nonstandard compared to a
typical blog.

I always use a Makefile in my projects, especially my blogs, mainly so I don't
forget where things get deployed to or how to run their builds. For this one, I
build the Hugo site, deploy the files (with rsync), and then I `curl` a webhook
address on Make.com, which triggers the "scenario" that reads my custom summary
RSS feed and sends it to Buffer to be posted to Bluesky and Mastodon.

This is all working extremely well! Make.com is made for creating high-volume
continuous integrations, so the free account gives you 1,000 "operations" per
month. Each status post takes two, I think; reading the RSS is one, and sending
the post to Buffer is two. I would have to post 500 times in a month to hit that
limit.

Anyway I think I'm going to keep it up.
