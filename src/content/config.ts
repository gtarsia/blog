import { docsSchema } from "@astrojs/starlight/schema";
import { defineCollection, z } from "astro:content";

const blog = defineCollection({
  // Type-check frontmatter using a schema
  schema: z.object({
    title: z.string(),
    description: z.string(),
    // Transform string to Date object
    pubDate: z.coerce.date(),
    updatedDate: z.coerce.date().optional(),
    heroImage: z.string().optional(),
    published: z.boolean().optional(),
  }),
});

const docs = defineCollection({ schema: docsSchema() });

export const collections = { blog, docs };
