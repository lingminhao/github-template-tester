# GitHub Template Tester

This repository is used to test GitHub Issue and Pull Request templates for multiple projects before publishing publicly in the main repository.

## Structure

Templates are organized within the `.github/` directory:

- `.github/ISSUE_TEMPLATE/`: Contains issue templates for different projects. For example,
  - `bambu-bug-report.md`
  - `bambu-feature-request.md`
  - `isoquant-bug-report.md`
  - `isoquant-feature-request.md`
- `.github/PULL_REQUEST_TEMPLATE/`: Contains pull request templates for different projects.
  - `bambu-pr-template.md`
  - `isoquant-pr-template.md`

## How to Test

### 1. Issues 
Go to the **"Issues"** tab and click **"New Issue"**. GitHub automatically displays the list of templates for you to choose from.

### 2. Pull Request
GitHub does not automatically show a selection menu for PR templates. To use a specific template, you must specify it in the URL via the `?template=` parameter.

**Direct Test Links:**
(Replace `YOUR_USERNAME` and `YOUR_REPO` in the URL after pushing)

- [Create Bambu PR](https://github.com/lingminhao/github-template-tester/compare/main...PR223?template=bambu-pr-template.md)
- [Create IsoQuant PR](https://github.com/lingminhao/github-template-tester/compare/main...PR223?template=isoquant-pr-template.md)

### Step-by-Step for PR Testing:
1.  **Create a Branch:** `git checkout -b PR223`
2.  **Make a Change:** Add a dummy file or edit the README.
3.  **Push:** `git push origin PR223`
4.  **Open PR:** Use the links above, ensuring the branch name matches the one you pushed.

**Last Test Update:**
- Test branch: `PR223`
- Update time: 2026-04-13 14:00 (for branch diff purposes)
