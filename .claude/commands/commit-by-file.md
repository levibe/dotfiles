Please commit these changes atomically using a file-level grouping strategy.

## Process:
1. First, analyze all changes (git status and git diff)
2. Group files by logical functionality/purpose
3. Present the proposed commit structure for review
4. Create separate commits for each logical group

## Commit Format:
- Subject line: What this commit does (imperative mood, ~50 chars)
- Body (optional): Why this change was needed (1-2 sentences, single line)
- Details (optional): Bullet points of specific changes

Keep everything in imperative mood ("Add", "Fix", "Update" not "Adds", "Fixed", "Updates").

## Grouping Strategy:
- Group related files that represent a single logical change
- If a file contains multiple unrelated changes, commit it separately with a comprehensive message
- Present grouping before committing: "I'll create X commits: [list groups]"
- Stage and commit each group separately

## Example workflow:
```
Analyzing changes...
I'll create 3 commits:

1. Add user authentication endpoints
   - src/auth/login.ts
   - src/auth/register.ts
   - src/middleware/auth.ts

2. Fix database connection pooling
   - src/db/connection.ts
   - config/database.json

3. Update documentation
   - README.md
   - docs/api.md
```

Good commit example:
```
Add health check endpoint for monitoring

Enable proactive monitoring and debugging of service issues in production.

- Check D1 database connectivity with latency
- Check R2 storage connectivity with latency
- Return HTTP 503 when critical components fail
```