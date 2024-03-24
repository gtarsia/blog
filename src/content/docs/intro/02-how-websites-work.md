---
title: How websites work
---

To teach how websites work, we'll teach these four web technologies:

- HTTP, the communication protocol.
- HTML, the structure of a page.
- CSS, the visual customization a page.
- JS, the functionality of a page.

There's also these other elements, but we won't dive deep into them:

- Browsers, like Chrome.
- Servers.
- DNS, a domain-name-to-IP converter

I'll briefly describe how these elements play with each other:

1. In the address bar of your browser you enter an address, let's say `www.dogs.com/find` and press Enter.
2. Your browser uses the preconfigured DNS to convert `www.dogs.com` to an IP address. Let's assume the invalid ip `1.2.3.4`.
3. Your browser sends an HTTP request to `1.2.3.4` with the path `/find` .
4. Let's assume there's an HTTP server listening in the ip `1.2.3.4`, and it responds with an HTML page.
5. The browser reads and processes this HTML page, displaying on your browser window all the content found inside it. Assume this page also references one CSS file and one JS file. Your browser tries to download both of these files and process them, altering the page in some way.

Web Technologies can also be used to create applications for Mobile (for example: for iPhone and Android).
