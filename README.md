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

## How to Test As An User

### 1. Issue Template
Go to the **"Issues"** tab and click **"New Issue"**. GitHub automatically displays the list of templates for you to choose from.

### 2. Pull Request (PR) Template
### Step-by-Step for testing pull request templates:
*1. Replace [your-mainrepo-pr-id] with your pull request id from the main repository*
2. Create a Branch: git checkout -b [your-mainrepo-pr-id]
3. Push: git push origin testing-[your-mainrepo-pr-id]
4. Open PR: Click the link below to test for the PR template.

**Direct Test Links:**
- [Create Bambu PR](https://github.com/lingminhao/github-template-tester/compare/main...[your-mainrepo-pr-id]?template=bambu-pr-template.md)
- [Create IsoQuant PR](https://github.com/lingminhao/github-template-tester/compare/main...[your-mainrepo-pr-id]?template=isoquant-pr-template.md)

## Add Github Issue and Pull Request templates for testing
The project handler has to design a set of github issue and pull request templates before publishing them publicly to the main repository. To test that, the project handler only needs to add the issue template under the `.github/ISSUE_TEMPLATE` or `.github/PULL_REQUEST_TEMPLATE` folder in this repository. You may find some example templates there and customize accordingly for your project. 