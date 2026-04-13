# GitHub Issue & Pull Request Template Tester

This repository is designed to test GitHub Issue and Pull Request (PR) templates for different repositories before they are published to their respective main repositories.

## Repository Structure

Templates are organized within the `.github/` directory:

- **`.github/ISSUE_TEMPLATE/`**: Contains issue templates. These can be in Markdown (`.md`) or YAML (`.yml`) format for [Issue Forms](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/syntax-for-issue-forms).
  - Format: `<main-repository-name>-<category>.yml` (e.g., `bambu-bug-report.yml`)
- **`.github/PULL_REQUEST_TEMPLATE/`**: Contains PR templates. Note that GitHub **only supports Markdown (`.md`)** for PR templates; YAML forms are not yet supported for pull requests.
  - Format: `<main-repository-name>-pr-template.md` (e.g., `bambu-pr-template.md`)

## Adding Templates for Testing

To test a new template, add it to the appropriate directory following the naming conventions mentioned above. You can use the existing templates as a starting point and customize them for your project.

## How to Test

### 1. Issue Templates
Navigate to the **"Issues"** tab and click **"New Issue"**. GitHub will automatically display the list of available templates for you to choose from.

### 2. Pull Request Templates
#### Step-by-Step Instructions:
1.  **Create a New Branch**.
    Perform the following bash command:
    ```bash
    git checkout -b <main-repository-name>_<pr-id>
    ```

2.  **Modify README.MD**.
    Replace `<main-repository-name>_<pr-id>` here with your main repository name (e.g., `bambu`) and pull request ID from your main repository. This ensures a change is recorded on the branch, which is required to open a pull request.

3.  **Commit and Push**.
    Perform the following bash command:
    ```bash
    git add .
    git commit -m "Test PR template for <main-repository-name> (PR: <pr-id>)"
    git push -u origin <main-repository-name>_<pr-id>
    ```

4.  **Generate the PR Link**.
    Use the following URL structure to open a PR with your specific template pre-loaded:
    `https://github.com/lingminhao/github-template-tester/compare/main...<main-repository-name>_<pr-id>?template=<main-repository-name>-pr-template.md`

5. 