# Claude Code Workflows

**Reusable prompts and patterns that work**

> This file contains battle-tested workflows for working with Claude Code. Every time you find a great prompt or pattern, add it here for reuse.

---

## 📋 Workflow Template

```markdown
### [Workflow Name]
**Use When:** [Scenario]
**Time Saved:** [Estimate]

**Prompt:**
```
[Exact prompt that works]
```

**Expected Output:**
[What Claude should produce]

**Follow-up:**
[Next steps after initial output]
```

---

## 🚀 Core Workflows

### New Feature Development
**Use When:** Starting any new feature
**Time Saved:** 30-60 minutes per feature

**Prompt:**
```
I need to build [feature description].

First, read project-context.md and technical-decisions.md.

Then:
1. Propose the architecture approach
2. List files that need to be created/modified
3. Identify potential issues or edge cases
4. Suggest test strategy

Wait for my approval before implementing.
```

**Expected Output:**
- Architecture proposal with trade-offs
- File structure
- Edge cases identified
- Test plan

**Follow-up:**
"Approved. Start with [specific part]."

---

### Test-Driven Development
**Use When:** Building testable features
**Time Saved:** 1-2 hours per feature

**Prompt:**
```
Read spec.md and project-context.md.

Generate comprehensive test suite for [feature/function].

Use [test framework] and follow our testing patterns from existing tests.

Include:
- Happy path tests
- Edge cases
- Error scenarios
- Integration tests where needed

Then make all tests pass.
```

**Expected Output:**
- Complete test file
- Tests fail initially
- Implementation that makes tests green

---

### Code Review & Refactor
**Use When:** Before committing major changes
**Time Saved:** 15-30 minutes

**Prompt:**
```
Review the changes I'm about to commit.

Check for:
1. Security vulnerabilities (SQL injection, XSS, etc.)
2. Performance issues
3. Error handling gaps
4. Code clarity and maintainability
5. Consistency with project patterns

Suggest improvements if needed.
```

**Expected Output:**
- List of issues found
- Specific recommendations
- Risk assessment

---

### Bug Investigation
**Use When:** Hitting unexpected errors
**Time Saved:** 30-90 minutes

**Prompt:**
```
I'm getting this error:
[paste error message]

Context:
- What I was trying to do: [describe]
- What I expected: [describe]
- What happened: [describe]

Read project-context.md to understand our stack.

Investigate:
1. Root cause
2. Why it's happening
3. How to fix it
4. How to prevent similar issues

Then propose a fix.
```

**Expected Output:**
- Root cause analysis
- Fix proposal
- Prevention strategy

---

### API Endpoint Creation
**Use When:** Adding new API endpoints
**Time Saved:** 45-60 minutes

**Prompt:**
```
Create new API endpoint:
- Method: [GET/POST/etc]
- Path: /api/[path]
- Purpose: [description]
- Auth: [required/optional/none]

Read technical-decisions.md for our API patterns.

Include:
1. Route handler
2. Input validation
3. Error handling
4. Tests
5. API documentation comment

Follow our existing patterns from [similar endpoint].
```

**Expected Output:**
- Route implementation
- Validation logic
- Error handling
- Tests
- Docs

---

### Documentation Generation
**Use When:** After building features
**Time Saved:** 20-30 minutes

**Prompt:**
```
Generate documentation for [feature/function/API].

Format: Markdown
Style: Practical, example-driven

Include:
1. What it does (one sentence)
2. How to use it (with code examples)
3. Parameters/options
4. Return values
5. Error handling
6. Common use cases

Keep it concise and actionable.
```

**Expected Output:**
- Clean markdown docs
- Working code examples
- Practical focus

---

### Database Migration
**Use When:** Schema changes needed
**Time Saved:** 30-45 minutes

**Prompt:**
```
I need to [add column/create table/modify constraint].

Current schema: [describe or reference file]

Create migration:
1. Write migration SQL (both up and down)
2. Update models/types
3. Update affected queries
4. Consider data migration if needed
5. Check for breaking changes

Use [migration tool] following our patterns.
```

**Expected Output:**
- Migration files
- Updated models
- Migration safety check

---

### Pre-Deployment Checklist
**Use When:** Before deploying to production
**Time Saved:** 10-15 minutes

**Prompt:**
```
I'm about to deploy to production.

Run pre-deployment checklist:
1. Are all tests passing?
2. Are environment variables documented?
3. Are there any console.logs or debug code?
4. Are migrations ready?
5. Is error handling robust?
6. Are there any TODO comments?
7. Is the API documentation updated?
8. Are secrets properly managed?
9. Is rollback plan clear?

Flag any concerns.
```

**Expected Output:**
- Checklist results
- Blockers identified
- Green light or stop signal

---

### Performance Optimization
**Use When:** Feature working but slow
**Time Saved:** 1-2 hours

**Prompt:**
```
[Function/feature] is slower than expected.

Profile and optimize:
1. Identify bottlenecks
2. Suggest optimizations (with trade-offs)
3. Estimate improvement
4. Propose benchmarks to track

Prefer simple optimizations over complex ones.
```

**Expected Output:**
- Bottleneck analysis
- Optimization suggestions
- Expected improvements

---

### Error Handling Pattern
**Use When:** Adding error handling
**Time Saved:** 20-30 minutes

**Prompt:**
```
Add comprehensive error handling to [function/endpoint].

Follow our error handling pattern:
1. Try-catch blocks where needed
2. Specific error messages
3. Proper HTTP status codes (for APIs)
4. Logging for debugging
5. User-friendly error responses

Don't catch errors just to re-throw them.
```

**Expected Output:**
- Wrapped code with error handling
- Meaningful error messages
- Proper status codes

---

## 🎯 Tactical Patterns

### Quick Fixes
```
Fix [specific issue] in [file:line].
Keep the fix minimal - don't refactor unrelated code.
```

### Explain Code
```
Explain what this code does in simple terms:
[paste code]

Then identify potential issues.
```

### Generate Tests
```
Generate tests for [function/class] in [file].
Cover happy path + 3 edge cases.
Use existing test patterns from [test file].
```

### Add Types/Validation
```
Add TypeScript types / input validation to [function].
Be strict but practical.
```

### Security Audit
```
Security audit this code:
[paste code]

Check for: injection, XSS, auth bypass, data leaks.
```

---

## 🧠 Meta-Patterns

### Context Loading
**Always start sessions with:**
```
Read project-context.md and technical-decisions.md first.
```

### Incremental Work
**Break big tasks:**
```
I need to build [big feature].

Break this into 3-5 sub-tasks we can do one at a time.
Wait for my approval on each before continuing.
```

### Learning from Success
**After good output:**
```
That worked great.

Extract the pattern we just used and add it to claude-workflows.md
so we can reuse it.
```

---

## 🚫 Anti-Patterns (Avoid These)

### ❌ Vague Prompts
**Bad:** "Make this better"
**Good:** "Refactor this for readability: extract helper functions for repeated logic"

### ❌ No Context
**Bad:** "Create user endpoint"
**Good:** "Create user endpoint following our auth pattern from posts-endpoint.js"

### ❌ Everything at Once
**Bad:** "Build entire feature + tests + docs + deploy"
**Good:** "Build feature first. Then we'll add tests."

### ❌ No Constraints
**Bad:** "Optimize this"
**Good:** "Optimize this without adding dependencies or breaking existing API"

---

## 📈 Compound Learning

**The workflow that builds itself:**

1. **Try a prompt** → See what works
2. **Refine it** → Make it more specific
3. **Document it** → Add to this file
4. **Reuse it** → Save time next time
5. **Improve it** → Update based on results

**After 30 days:**
- 50+ reusable workflows
- 10x faster development
- Consistent quality
- Less cognitive load

---

## 🔄 Maintenance

**Update this file when:**
- You discover a new effective prompt
- A workflow stops working (update it)
- You find a better way (supersede old pattern)
- You hit a new use case (add new workflow)

**Review quarterly:**
- Remove workflows you stopped using
- Consolidate similar patterns
- Update for new Claude capabilities

---

**For Claude Code:** Use these workflows as templates. Adapt to the specific task, but follow the proven patterns.
