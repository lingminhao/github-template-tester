# GitHub Template Tester

This repository is used to test GitHub Issue and Pull Request templates for multiple projects before publishing publicly in the main repository.

## Repository Structure

Templates are organized within the `.github/` directory:

- `.github/ISSUE_TEMPLATE/`: Contains issue templates for different projects in format: `<main-repo-name-category>.yml`. For example,
  - `bambu-bug-report.yml`
  - `bambu-feature-request.yml`
- `.github/PULL_REQUEST_TEMPLATE/`: Contains pull request templates for different projects in format: `<main-repo-name>-pr-template.md`. For example,
  - `bambu-pr-template.md`

## Adding Github Issue and Pull Request templates for testing
The project handler has to design a set of github issue and pull request templates for testing before publishing them publicly to the main repository. To do this, the project handler only needs to add the issue template under the `.github/ISSUE_TEMPLATE` or `.github/PULL_REQUEST_TEMPLATE` folder in this repository following the format specified in the Structure section. You may find some example templates there and customize accordingly for your project. 

## How to Test As An User

### 1. Issue Template
Go to the **"Issues"** tab and click **"New Issue"**. GitHub automatically displays the list of templates for you to choose from.

### 2. Pull Request (PR) Template
### Step-by-Step for testing pull request templates:
1. Create a Branch: `git checkout -b <main-repo-name_pr-id>`
2. Modify `<main-repo>` & `<pr-id>`: replace `<main-repo>` with the name of the main repository you are referring to, and `<pr-id>` with the pull request id you are working on in the main repository.
3. Push the changes to remote: 
   `git add .`
   `git commit -m 'create pull request <pr-id> branch to test PR template for <main-repo-name>'`
   `git push -u origin <main-repo-name_pr-id>`
   You will be required to enter the necessary github credentials to complete the push.
4. Test the pull request template with the link by replacing <main-repo-name_pr-id>
   https://github.com/lingminhao/github-template-tester/compare/main...<main-repo-name_pr-id>?template=<main-repo-name>-pr-template.md