# Applying the latest scheduler changes

Use one of the options below to bring the most recent refactor (from commit on the `work` branch) into your environment.

## Option 1: Pull directly from the repo
1. Ensure your working directory is clean:
   ```bash
   git status -sb
   ```
2. Pull the newest commit:
   ```bash
   git pull origin work
   ```
   This fetches the branch that already contains the refactor.

## Option 2: Cherry-pick the refactor commit onto another branch
1. Identify the commit hash (from `git log --oneline`).
2. From your target branch, cherry-pick it:
   ```bash
   git checkout <your-branch>
   git cherry-pick <refactor-commit-hash>
   ```

## Option 3: Replace the HTML file manually
1. Copy the updated `v1.9.2.5.html` from this repo into your project.
2. Validate formatting remains intact by opening the file in a browser or running your existing tests.

## Verify after applying
- Open the app and confirm scheduler behavior matches your expectations.
- Optionally run any linting or automated checks you normally use to ensure the refactor did not introduce regressions.
