Write atomic commits with clear, useful messages.

Format:
- Subject line: What this commit does (imperative mood, ~50 chars)
- Body (optional): Why this change was needed (1-2 sentences, single line)
- Details (optional): Bullet points of specific changes

Keep everything in imperative mood ("Add", "Fix", "Update" not "Adds", "Fixed", "Updates").

Good example:
```
Add health check endpoint for monitoring

Enable proactive monitoring and debugging of service issues in production.

- Check D1 database connectivity with latency
- Check R2 storage connectivity with latency
- Return HTTP 503 when critical components fail
```

Bad example:
```
Updated health stuff

This implements a new endpoint that checks various things and returns status.
```