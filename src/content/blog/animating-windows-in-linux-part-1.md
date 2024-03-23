---
title: "Animating Windows in Linux, Part 1"
description: "How to draw cool looking effects in Linux"
pubDate: "December 09 2023"
heroImage: "/blog-placeholder-3.jpg"
published: false
---

I've always been puzzled by [compiz](https://www.youtube.com/watch?v=kR8x5Wb26ew) effects since I used Ubuntu for the first time in 2010.

My time has come to figure how to do this on my own.

Basically, my starting point is trying to achieve something very similar to what [picom](https://github.com/yshui/picom) does:

picom lets me add some glowing border to my windows. My intention is to make that border be animated.

## Where do I even begin?

The starting point is like walking into a room with the lights and just grasping things.

Eventually, these are cleared out easily by using ChatGPT.

### X11, Wayland

At one point in my search, I noticed I had to pick between these two.
These are different software that draw windows in your screens.

I didn't know which one I was using, and I found this one liner to figure that out:

```
printf 'Session is: %s\n' "${DISPLAY:+X11}${WAYLAND_DISPLAY:+WAYLAND}"
```

Which meant I was using X11. I know I had installed lightdm, so I tried using the Wayland
alternatives of my currently installed desktop managers.

Then I did some googling and noticed
that many people had problems with Wayland on NVIDIA cards (which I have).

So, I stopped trying. This is kind of sad because I was hoping to try out [Hyprland](https://hyprland.org/), a very cool
looking desktop manager for Wayland.

So, X11 it is.

### OpenGL and GLX

I noticed that the effects could be achieved via the GPU or CPU. I'm not gonna care much about the
CPU route, so I'll do this in GPU exclusively.

OpenGL is the interface to GPU for high performance graphics. I had to relearn OpenGL fragment shaders to
draw a [cool looking fire effect](/blog/pixelated-fire/).

I learned that GLX is a C library interface between X11 and OpenGL, so it's just a matter of calling
the right functions to draw OpenGL calls inside X11 windows.
