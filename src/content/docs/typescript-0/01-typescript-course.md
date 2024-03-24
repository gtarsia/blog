---
title: TypeScript course
---

TypeScript is a great enhancement to JavaScript. It was initially released in 2012 and it has slowly but surely become massively popular within the JavaScript community.
That's not to say it's universally used, some developers prefer not to use it, but its immense popularity is testament to how useful it is.

In

Installing TypeScript provides the `tsc` CLI application, which can:

- Error check TypeScript files.
- Transpile TypeScript files to JavaScript files.

> [!tip] The transpiler in `tsc` is not usually used.
> As of 2024, there's better alternative TypeScript-to-JavaScript transpilers.

The point of TypeScript is that you no longer write code in JavaScript (with the common extension `.js` for js files), but in TypeScript (with files having the `.ts` extension).

TypeScript syntax is JavaScript syntax but with many additions to help catching errors by just looking at the files.

## Does TypeScript code work on browsers?

No.

TypeScript does not run _as is_, as in, without modifications, in browsers, and there doesn't seem to be plans to do so.

Instead, what current tools do is convert your TypeScript files to JavaScript, stripping out all the TypeScript syntax. That resulting JavaScript code is what browsers do end up running.
