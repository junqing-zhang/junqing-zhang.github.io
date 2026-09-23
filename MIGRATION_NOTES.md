# Migration notes

This repository uses the `academic-website-template` design and build system,
with the content migrated from `junqing-zhang.github.io`.

## Current URLs

The current public page paths include `/research/`,
`/publications/`, `/people/`, `/opportunities/`, `/funding-and-awards/`,
`/professional-activities/`, `/resources/`, `/teaching/`, and their nested
research, resource, project, and demonstration pages.

Legacy research landing-page URLs, `/resources/deep-learning/dl/`,
`/demo-keygen-heartbeat-ppg/`, and `/demo-keygen-warp/` are retired.
Their redirect pages have been removed, and internal links use the current
destinations. External links and bookmarks to these retired URLs will return 404.

## Publications

Publication entries are generated from `assets/ref.bib` using Jekyll Scholar.
Update that file to update the publication list.

## Local preview

The supported Docker workflow is:

```bash
docker build -t junqing-academic-site .
docker run --rm -p 4000:4000 -v "${PWD}:/srv/jekyll" junqing-academic-site \
  bundle exec jekyll serve --host 0.0.0.0 --livereload
```

Then open <http://localhost:4000>.

Alternatively, with Ruby and Bundler installed:

```bash
bundle install
bundle exec jekyll serve --livereload
```

The included GitHub Actions workflows perform build validation and deployment.
# Optional last-updated dates

Page update dates are hidden by default. To show the most recent Git commit
date beneath a page title, add this to the page's front matter:

```yaml
show_last_updated: true
```

To override the automatic date for a particular page, also add:

```yaml
last_updated: 2026-09-21
```

The deployment and CI workflows fetch the full Git history so automatic dates
remain accurate. When a downloaded archive is built outside a Git repository,
the page's existing `date` field is used as a fallback when available.
# Version 5.1 refinements

- `_site/` is no longer included in the source archive; GitHub Actions rebuilds it for deployment.
- Nested pages now display breadcrumbs.
- All five main research areas use a shared, data-driven subsection navigation.
- Repeated `pubList` IDs were replaced with the reusable `pub-list` class.
- Common terminology and generic link labels were standardised across Markdown content.
- Six large demonstration images now load as WebP assets.
- Local HTML images use explicit dimensions where their source dimensions can be determined.
