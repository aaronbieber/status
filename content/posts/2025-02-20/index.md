---
title: "2025 02 20"
date: 2025-02-20T09:32:02-05:00
tags:
 - sends
sends:
 - Black V2 (on the new wave, not in the app)
 - Dark pink V3
 - Pink V3
 - White V3
 - White V4 (ends with the V3 part)
 - Yellow V4 (blobby)
 - Yellow V4 (pinchy)
 - Orange V5 (crimpy + dyno)
 - Purple V5 (not my project one)
 - Blue Project (graded as "??")
---

SEND TRAIN! Plus, fun web stuff and home automation.<!--more-->

#### Send log

Holy hell did I have a session yesterday. I went almost two hours early to pick
up `$KID` from camp/pre-team practice and just got crazy on the new boulders. I
flashed all of them except for the V5s, but it's pretty awesome that I can flash
some V4s now.

{{< sends >}}

I also did a little TR.

 - Orange 5.11- (big dyno that I can static, terrible ending for tall people)
 - Green 5.11 (flashed it, come on)

My back felt about 90% when I got there and I made sure to do some jumping jacks
and my mobility movements to warm up, and I always start on the lowest grades
and work up. I think I sent a V1 that isn't on the list, too.

Toward the end of the session, though, it was starting to pinch again, so I
cooled off with the dark pink V3 and a V2 that isn't in the Pebble app because
our setters frequently just don't add things, and called it quits.

Today it's pinching a little, I took 800mg ibuprofen and right now it's feeling
pretty dang good. I'm still on this "anti-inflammatory" stack and I'll write
more about that when I feel like I have something new to say.

#### Home dashboard

Thanks to a friend of mine I discovered [homepage][hp], which is a "modern,
fully static, fast, secure fully proxied, highly customizable application
dashboard." I have slammed into this thing at mach one and it's really fucking
cool, I just have no idea how I'm actually going to use it.

[hp]: https://gethomepage.dev/

I'm using it to observe a few things from Home Assistant, the uptime and free
space on my local and remote Synology NAS arrays, three of my locally running
Docker apps (Pihole, Changedetection, Navidrome), and my remote Deluge.

I also wanted to see what I had recently added to Plex, so I created a Node-Red
flow that hits the local API on my Plex server and spits out an HTML page. I
actually had no idea that you could do this with Node-Red but it felt like the
right tool for the job and I was right.

#### Home automation

Another thing that happened this week was that I saw [this YouTube video][shs]
about "unique smart home sensors" wherein the guy (Reed is his name) implements
a notification for his laundry machines using Zigbee vibration sensors.

[shs]: https://youtu.be/OWiPaKARNcU?si=2gHA9cxHb2gyD8_e

So of course I had to have them. I ordered two and implemented the same
automation for the washing machine and dryer. I haven't been able to do a full
real-world test yet, but I think it's going to be pretty cool.

Phew I think that's all for now.
