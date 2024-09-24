# Flow Commons GitHub

This repository provides a collection of reusable GitHub Actions workflows designed to streamline and standardize CI/CD processes across various projects in your organization.

## Overview

By centralizing reusable workflows in this repository, we ensure that all projects within the organization can take advantage of consistent and well-tested automation processes. Teams can reuse these workflows without duplicating code, making it easier to maintain and update workflows across all projects.

### Key Features
- **Centralized Actions**: A single location to store and manage reusable GitHub Actions workflows.
- **Easy Versioning**: You can reference specific versions of workflows from this repository in your projects.
- **Consistency**: Ensure uniform automation processes across multiple repositories.

## Using the Reusable Workflows

To reuse a workflow from this repository in your project, follow the steps below:

1. **Reference the Reusable Workflow**  
   Add the following YAML snippet to your `.github/workflows/` file within your own repository. Replace `<workflow-name>` with the actual workflow file name and `v1` with the desired version (use a branch name or tag).

   ```yaml
   jobs:
     example-job:
       uses: your-org/commons-github/.github/workflows/<workflow-name>.yml@v1
