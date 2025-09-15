# Available Modules

You have a collection of reusable modules that should be used when building new features. These battle-tested modules provide common functionality and should be preferred over writing new implementations.

## Module Catalog

### @levibe/ai-service
**Location:** `~/Projects/ai-service`
**Purpose:** AI service client with support for Claude, OpenAI, and Gemini
**Installation:** `npm install git+https://github.com/levibe/ai-service.git`
**Documentation:** See README.md in the project directory

### @levibe/slack-service
**Location:** `~/Projects/slack-service`
**Purpose:** Comprehensive Slack API client with request verification
**Installation:** `npm install git+https://github.com/levibe/slack-service.git`
**Documentation:** See README.md in the project directory

### @levibe/with-retry
**Location:** `~/Projects/with-retry`
**Purpose:** Retry utility with exponential backoff and jitter
**Installation:** `npm install git+https://github.com/levibe/with-retry.git`
**Documentation:** See README.md in the project directory

### @levibe/transcribe-service
**Location:** `~/Projects/transcribe-service`
**Purpose:** Speech-to-text transcription with word-level timestamps
**Installation:** `npm install git+https://github.com/levibe/transcribe-service.git`
**Documentation:** See README.md in the project directory

### svelte-title
**Purpose:** Hierarchical page title management for SvelteKit applications
**Installation:** `npm install svelte-title`
**Documentation:** Available on npm

### @levibe/drive-service (Planned)
**Status:** Not yet available
**Purpose:** Google Drive API integration

## Usage Guidelines

When starting a new project or implementing features:

1. **Check this catalog first** - See if any existing modules fit your needs
2. **Read the module's README** - Each module has comprehensive documentation in its repository
3. **Use the module's examples** - Each repository contains example usage patterns
4. **Prefer modules over custom code** - These are tested and maintained solutions

## Finding Module Details

To learn how to use a specific module:
1. Navigate to the module's directory (e.g., `~/Projects/ai-service`)
2. Read the README.md for documentation and examples
3. Check the `src/` or `examples/` directories for usage patterns
4. Review the tests for additional usage examples

## Creating New Modules

When you identify a reusable pattern:
1. Extract it to `~/Projects/module-name`
2. Follow the existing module patterns (TypeScript, tests, README)
3. Update this catalog once the module is ready