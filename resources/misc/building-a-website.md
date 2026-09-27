---
layout: page
title: "How to Build a Personal Website"
show_last_updated: true
permalink: /resources/misc/building-a-website/
---

This page shares my experience of choosing a platform for a personal website, along with templates and a practical starting workflow for GitHub Pages.

{% include toc title="On this page" %}

## Why I Chose GitHub Pages

When choosing a website platform, I considered its appearance, layout, ease of editing, customisation options, and whether it displayed advertisements.

I initially used WordPress.com for my personal website. It worked well, but I later noticed advertisements on the pages. At the time, removing them required upgrading to a paid plan. See the current [WordPress.com advertising guidance](https://wordpress.com/support/no-ads/){:target="_blank"} and [plans](https://wordpress.com/pricing/){:target="_blank"} for details. This experience concerns the hosted WordPress.com service, rather than self-hosted WordPress software.

I switched to GitHub Pages because it suited my personal website and provided hosting without platform-inserted advertisements. I also liked being able to maintain the content as plain-text files.

## Platform Choices

Choose a platform based on how you want to edit and maintain your site. Check the current plans for advertising, custom domains, storage, and other features before committing to one.

- [WordPress.com](https://wordpress.com/){:target="_blank"}: a hosted service for websites and blogs, with browser-based editing.
- [Weebly](https://www.weebly.com/){:target="_blank"}: a visual website builder for arranging content without editing source files.
- [Google Sites](https://sites.google.com/){:target="_blank"}: a browser-based option for creating straightforward informational websites.
- [GitHub Pages](https://pages.github.com/){:target="_blank"}: hosting for static websites maintained in GitHub repositories.

GitHub Pages works well for personal profiles, publication lists, and project pages. It serves static files such as HTML, CSS, and JavaScript; it does not run server-side application code such as PHP or Python. GitHub Free supports Pages sites from public repositories. See the [GitHub Pages setup documentation](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site){:target="_blank"} for availability and publishing options.

If you are comfortable editing plain-text files, you may find a Markdown-based website convenient. You will also need to learn a few GitHub concepts, such as repositories, commits, and publishing. Familiarity with LaTeX may make this style of editing feel familiar, but it is not a prerequisite.

## Templates

Starting with a template gives you an existing layout and example content to adapt. Follow the setup instructions for the template you choose, since publishing methods and configuration files differ.

- [Academic Website Template](https://github.com/sbryngelson/academic-website-template){:target="_blank"}: a static website template for academics and research groups, with setup instructions in its repository. My web design is adapted from this template.
- [al-folio](https://github.com/alshedivat/al-folio)
- [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/docs/quick-start-guide/){:target="_blank"}: a configurable Jekyll theme for personal websites, blogs, and other content, with a detailed quick-start guide.
- [Academic Pages](https://academicpages.github.io/){:target="_blank"}: an academic website template with sections for publications, talks, teaching, and a CV.


## Getting Started with GitHub Pages

For a personal site at `https://<username>.github.io/`:

1. **Choose a template.** Read its setup instructions and create a GitHub account if needed.
2. **Create the site repository.** Use the template's recommended method, such as **Use this template** or a fork. Name your repository `<username>.github.io`, replacing `<username>` with your GitHub username in lowercase. Use a public repository if you are using GitHub Free.
3. **Personalise the site.** Replace the example biography, images, publications, and contact details. For Jekyll templates, site-wide settings are commonly stored in `_config.yml`; follow the template's instructions for the site URL, navigation, and content folders.
4. **Configure publishing.** Open the repository's **Settings → Pages** and select the publishing source required by your template. Some templates publish from a branch and folder; others use a GitHub Actions workflow.
5. **Check the deployment.** Review the build or deployment status in GitHub, then open the published URL shown under **Settings → Pages**. Check navigation, images, downloads, and the layout on a phone as well as a desktop.
6. **Make future updates.** Edit your content and commit the changes. If working locally, push them to GitHub to trigger the configured publishing workflow. You can use GitHub's web editor or a desktop Git client; see my [tools guide](/resources/misc/tools/) for GitHub Desktop.

The [official guide to creating a GitHub Pages site](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site){:target="_blank"} explains repository naming and publishing in more detail. The steps above describe a personal site; a project site can use a different repository name and URL structure.

## Writing in Markdown

Many GitHub Pages templates use Jekyll to turn Markdown files into HTML pages during the build. Markdown lets you write headings, lists, links, and other content using plain text. GitHub Pages does not require Markdown or Jekyll, but both are common in personal-site templates.

In a Jekyll template, a Markdown page may also begin with YAML front matter between two `---` lines. This supplies metadata such as the page title and layout. Use an existing page in your chosen template as a starting point and follow its conventions.

For syntax examples, see [GitHub's basic writing and formatting guide](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax){:target="_blank"} or the [Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet){:target="_blank"}. Preview your published pages, since the template's Markdown settings may differ from GitHub's repository preview.

## Further Reading

Start with the official GitHub Pages documentation and your template's setup guide. These personal accounts provide additional background, although their interface details and setup steps may reflect older versions:

- [Building an academic website — Jordi Pont-Tuset](https://jponttuset.cat/building-an-academic-website/){:target="_blank"}.
- [Creating and hosting a personal site on GitHub — Jonathan McGlone](http://jmcglone.com/guides/github-pages/){:target="_blank"}.

## Acknowledgement
Some content on this page was prepared or edited with assistance from ChatGPT.
