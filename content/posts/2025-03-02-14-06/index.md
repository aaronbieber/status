---
title: "2025 03 02 14 06"
date: 2025-03-02T14:06:49-05:00
tags:
 - sends
sends:
 - Yellow V5
 - White project
---

The V5s keep on rollin'! I'll also briefly nerd out about YAML and this blog and
tracking my sends.<!--more-->

#### Climbing

{{< sends >}}

We went to our "home gym" for our "weekend family climb," where we're usually
accompanied by our two closest climbing friends. I had climbed last on Friday
with the boys but we mostly did top rope. Toward the end of that session I took
a few attempts on this yellow V5 that is semi-overhung. It's a very short
problem but quite powerful with a couple of big moves and a forced cut-loose on
fairly small holds.

The second to last move is onto a pretty shallow crimp, probably 10mm or a bit
more, and I can confidently say that there is no chance I could have locked onto
that a few months ago. From there, you need to pull up into the final hold,
which is a generous and juggy one, but also a pocket so you have to be precise.

I got as far as that and missed the last hold at least four times, over the two
sessions. But this time, I *nailed it*! It felt so good to bank another tricky
V5, and one that requires quite a bit of strength, accuracy, and crimp power.

Toward the end of that session I wanted to have another go at a white project
problem (these are marked with "??" grade tags at our gym). I had gotten to the
last hold a couple of times but it's an even less generous crimp so I never
counted any of my finishes as true sends because I slipped off.

This time, though, I did nail it. This climb is pretty wild because it starts
with a dyno where you jump basically toward the wall and I will say, though I
still don't *love* dynos, this one was fun to figure out.

The dyno is onto huge jugs but it still feels awesome to leap and fully lock on
and just swing around.

#### Tracking sends

I use the Pebble app to record my sends because our gym chain participates in
it, and it's really helpful to be able to do that. However, the app is a little
janky and not the best for looking at things in the aggregate or far into the
past (not really what it was designed for, I would say), and of course I can't
use it to track outdoor sends at all.

So I've taken to using this "microblog" as a climbing journal, as you've seen.
Originally, I would just write down a list of what I sent. I figured at least
it's there and I can search for it.

In the second iteration, I added a "sends" tag to posts where I log sends, so
then I can at least find all the related posts at once, if I want to.

But now, in this latest iteration, I've actually moved the list of sends into
structured data in the YAML "front matter" of these post files. I use the Hugo
static site generator to convert all the Markdown into a website and upload the
website to my server where you're reading it.

The first thing I did was implement a Hugo "shortcode" so that I can insert a
little tag `{{</* sends */>}}` in the post and it will spit out the list (as
seen above at the top of the Climbing section).

But now that the data is stored in a semi-structured way, in YAML arrays, and
using a consistent format ("`<color> <grade> <comments>`"), I can use the `yq`
tool and other command-line programs to suck all the sends out of the post files
and aggregate them and play around with them.

#### Pebble backfill

I only started doing this journaled send log last year at some point, so the
counts were super low. I decided to figure out how to get my Pebble sends into
this journal.

This ended up being super tedious, but I basically ran some *ad hoc* Javascript
in the browser console to print out the sends for each short range of time on
the web version of Pebble, got them all into a text file, attempted to
de-duplicate everything, and formatted it so I could write a script to read it.

I ended up writing a zsh script to read the text file and spit out a Markdown
entry for each date, just populating the "sends" data in the front matter. It's
kludgy but it ended up working out pretty well!

So anyway, now there are a bunch of auto-generated posts mostly in 2023 that
complete my overall send log.
