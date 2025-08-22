Please commit these changes atomically, i.e. in logical groupings of commits.

Use this commit message structure:
1. **Summary line**: Capitalize the first word, no prefix (e.g., no 'feat:'), keep it concise
2. **Optional context paragraph**: For complex changes, add a brief explanation of why the change was made or what problem it solves (keep as a single continuous line, no line breaks)
3. **Bullet points for details**: List specific changes, improvements, or technical details (multi-line formatting is fine)

Example format:
```
Add enhanced health check endpoint for better observability

Introduces a new /health endpoint that provides detailed status information about the worker's components and their connectivity. This improves monitoring capabilities and helps diagnose issues quickly.

The health check includes:
- D1 database connectivity check with latency measurement
- R2 storage connectivity check with latency measurement
- Queue configuration status verification
- Service version and timestamp information
- Returns HTTP 200 when healthy, 503 when critical components fail
```

For simple changes, the context paragraph can be omitted, and you can go straight to bullet points after the summary line.