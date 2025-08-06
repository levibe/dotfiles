Check this Svelte codebase for any Svelte 4 patterns that should be migrated to Svelte 5. Focus only on actual issues, not valid Svelte 5 code.

Search for these anti-patterns in .svelte and .ts files:
1. createEventDispatcher usage - should use callback props (onchange, onclick, etc)
2. "$:" reactive statements - should use $derived() or $effect()
3. "export let" prop declarations - should use $props()
4. "$storeName" store subscriptions (excluding $state/$derived/$effect/$props/$bindable) - should use proper Svelte 5 patterns
5. beforeUpdate/afterUpdate lifecycle - should use $effect()
6. "<slot" tags - should use {@render children()}
7. dispatch() event patterns - should use callback props

For each pattern found:
- Report the file path and line number
- Show the problematic code snippet
- Provide the specific Svelte 5 replacement pattern
- Mark severity: CRITICAL (breaks in Svelte 5) or WARNING (works but deprecated)

Output format:
Svelte 4 Pattern Detection Report

✅ No issues found OR ⚠️ X issues found

Issues:

1. [SEVERITY] Pattern:
File: path/to/file.svelte:lineNumber
Current:
Fix:

Skip patterns that are:
- Already using Svelte 5 runes ($state, $derived, $effect, $props, $bindable)
- In node_modules or .git directories
- Valid Svelte 5 patterns (onMount, tick are still valid)

Be concise - only report actual issues that need fixing, not informational items.