# GitHub Template Tester

This repository is used to test GitHub Issue and Pull Request templates for multiple projects.

## Structure

Templates are organized within the `.github/` directory:

- `.github/ISSUE_TEMPLATE/`: Contains issue templates for different projects.
  - `bambu-bug-report.md`
  - `bambu-feature-request.md`
  - `isoquant-bug-report.md`
  - `isoquant-feature-request.md`
- `.github/PULL_REQUEST_TEMPLATE/`: Contains pull request templates for different projects.
  - `bambu-pr-template.md`
  - `isoquant-pr-template.md`

## How to Test

1. Push this repository to GitHub.
2. Go to the "Issues" tab and click "New Issue". You should see options for both Bambu and IsoQuant.
3. Create a new Pull Request. GitHub should allow you to choose between the different PR templates (usually via the URL or by selecting them if multiple are present).

*Note: For Pull Request templates, if multiple templates exist in the directory, you can select them by adding `?template=file_name.md` to the PR creation URL, or GitHub may show a selector in some contexts.*
