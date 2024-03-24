import { defineConfig } from "astro/config";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";
import starlight from "@astrojs/starlight";
import Icons from "unplugin-icons/vite";

/**
 * Generates simple starlight entry
 *
 * @param {string} label - shown in sidebar
 * @param {string} directory - directory in content/docs
 * @returns {any} starlight entry
 */
function starlightPageUtil(label, directory) {
  return { label, autogenerate: { directory } };
}

/**
 * Autogenerates a nice starlight entry from params
 *
 * @example
 * autoStarlight('CSS', '1')
 * // => { label: 'CSS 1', autogenerate: { directory: 'css-01' } }
 *
 * @param {string} name - name of page
 * @param {string} level - level of page
 * @returns {any} starlight entry
 */
function autoStarlight(name, level, icon = name.toLowerCase()) {
  const directory = `${name.toLowerCase()}-${level}`;
  const label = `${level} - ${name}`;
  return {
    label,
    autogenerate: { directory },
    icon,
  };
}

const intro = starlightPageUtil("Introduction", "intro", "");
const http0 = autoStarlight("HTTP", "0");
const css0 = autoStarlight("CSS", "0");
const css1 = autoStarlight("CSS", "1");
const css2 = autoStarlight("CSS", "2");

const html0 = autoStarlight("HTML", "0");
const html1 = autoStarlight("HTML", "1");

const js0 = autoStarlight("JavaScript", "0");
const js1 = autoStarlight("JavaScript", "1");

// https://astro.build/config
export default defineConfig({
  site: "https://blog-eyc.pages.dev",
  integrations: [
    starlight({
      head: [{ tag: "script", attrs: { src: "/scroll.js", defer: true } }],
      title: "NextJS - Zero to Hero",
      // sidebar: [
      //   {
      //     label: "Introduction",
      //     link: "intro/01-intro.md",
      //   },
      // ],
      sidebar: [intro, http0, html0, css0, js0, html1, css1, js1, css2],
    }),
    sitemap(),
  ],
  vite: {
    plugins: [Icons({ compiler: "astro" })],
  },
});
