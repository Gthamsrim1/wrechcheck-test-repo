## WreckCheck Report

Found 7 issues.

### CRITICAL: AWS access key detected
Location: `config.js:1`

A value matching the AWS access key pattern was found.

Recommendation: Remove the credential from source control and rotate it immediately.

### CRITICAL: .env is tracked by Git
Location: `.env`

The .env file is committed to the repository and may contain secrets.

Recommendation: Remove .env from Git, add it to .gitignore, and rotate any exposed credentials.

### MEDIUM: Environment configuration is incomplete
Location: `.env.example`

.env.example contains 1 variable missing from .env: REDIS_URL.

Recommendation: Verify that all required environment variables are configured before deployment.

### MEDIUM: Floating Docker base image
Location: `Dockerfile:1`

node:22 does not pin the base image to an exact version.

Recommendation: Pin the base image to an exact version. For maximum reproducibility, pin it by digest.

### HIGH: Sensitive path is not excluded from build context
Location: `.dockerignore`

.env is not excluded by .dockerignore while the Dockerfile copies the build context.

Recommendation: Add .env to .dockerignore to prevent it from being included in the Docker build context.

### HIGH: Sensitive path is not excluded from build context
Location: `.dockerignore`

.env.* is not excluded by .dockerignore while the Dockerfile copies the build context.

Recommendation: Add .env.* to .dockerignore to prevent it from being included in the Docker build context.

### MEDIUM: Sensitive path is not excluded from build context
Location: `.dockerignore`

.git is not excluded by .dockerignore while the Dockerfile copies the build context.

Recommendation: Add .git to .dockerignore to prevent it from being included in the Docker build context.
