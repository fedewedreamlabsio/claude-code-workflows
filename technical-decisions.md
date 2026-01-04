# Technical Decisions Log

**Project:** [Project Name]

> Document ALL significant technical decisions with date and reasoning. This prevents re-litigating choices and helps Claude understand your constraints.

---

## Decision Template

```markdown
### [Decision Title]
**Date:** YYYY-MM-DD
**Status:** [Accepted / Rejected / Superseded]
**Deciders:** [Who made this call]

**Context:**
[What circumstances led to this decision?]

**Decision:**
[What did we decide?]

**Rationale:**
- Reason 1
- Reason 2
- Reason 3

**Alternatives Considered:**
1. Option A: [Why rejected]
2. Option B: [Why rejected]

**Consequences:**
- Positive: [Expected benefits]
- Negative: [Trade-offs accepted]

**Revisit Criteria:**
[Under what conditions would we reconsider?]
```

---

## Decisions

### Use Railway for Backend Hosting (Not Vercel)
**Date:** 2026-01-03
**Status:** Accepted

**Context:**
Need hosting for Express.js API with cron workers. Vercel serverless has cold starts and limited background jobs.

**Decision:**
Deploy backend to Railway, keep frontend on Vercel if needed.

**Rationale:**
- Railway supports long-running processes (cron workers)
- Simple deployment from GitHub
- Affordable ($5-20/month expected)
- PostgreSQL included

**Alternatives Considered:**
1. Vercel Serverless: No cron support, cold starts
2. AWS EC2: Too much infrastructure overhead
3. DigitalOcean: Manual setup, more DevOps work

**Consequences:**
- Positive: Cron works, no cold starts, simple setup
- Negative: Another service to monitor, not serverless

**Revisit Criteria:**
If we need global edge deployment or serverless scale.

---

### Express.js for API (Not Next.js API Routes)
**Date:** 2026-01-02
**Status:** Accepted

**Context:**
Building standalone API that will be consumed by scheduler and potentially other services.

**Decision:**
Use Express.js for API backend.

**Rationale:**
- Standalone service (not coupled to frontend)
- Familiar patterns
- Easy to deploy to Railway
- Better for background jobs than Next.js

**Alternatives Considered:**
1. Next.js API routes: Too coupled to frontend, harder to deploy separately
2. Fastify: Less familiar, marginal performance gain not worth it
3. Python/FastAPI: Team knows Node better

**Consequences:**
- Positive: Clear separation, easy deployment, familiar
- Negative: Not using latest trendy framework

**Revisit Criteria:**
Never. This is the right choice for this architecture.

---

### Twitter API Basic Tier ($200/month) Over Free
**Date:** 2026-01-01
**Status:** Accepted

**Context:**
Free tier only allows 1,500 posts/month (50/day). Need 100 posts/day for growth strategy.

**Decision:**
Subscribe to Twitter API Basic tier.

**Rationale:**
- 100 posts/day vs 50/day
- 10,000 reads/month vs 500/month
- ROI: If strategy works, follower growth worth it
- Can cancel if not working

**Alternatives Considered:**
1. Free tier: Too limited, can't execute strategy
2. Pro tier ($5,000/month): Overkill for current needs

**Consequences:**
- Positive: Can execute full strategy
- Negative: $200/month cost (high for early stage)

**Revisit Criteria:**
After 30 days, evaluate follower growth. If < 1K followers, downgrade.

---

### No Authentication for Scheduler API Initially
**Date:** 2026-01-04
**Status:** Superseded (added auth later)

**Context:**
Building scheduler API, deciding whether to add auth from day 1.

**Decision:**
Ship without auth initially, add later if needed.

**Rationale:**
- Internal tool only
- Faster to ship
- Can add auth in 1 hour if abuse happens

**Update (2026-01-04):**
Added Bearer token auth via SCHEDULER_API_KEY environment variable.

**Why Changed:**
Made it easy to add, better safe than sorry for production.

---

### Use .md Files for Claude Code Context (Not Database)
**Date:** 2026-01-04
**Status:** Accepted

**Context:**
Need to give Claude persistent context about project. Options: .md files vs database vs vector embeddings.

**Decision:**
Use .md files in repo for context.

**Rationale:**
- Version controlled (see history)
- Human readable (easy to update)
- Works with Claude Code natively
- No additional infrastructure
- Compound learning (files improve over time)

**Alternatives Considered:**
1. Database: Overkill, harder to edit, not version controlled
2. Vector embeddings: Too complex for current needs
3. Comments in code: Scattered, hard to maintain

**Consequences:**
- Positive: Simple, effective, maintainable
- Negative: Manual updates required (but that's a feature)

**Revisit Criteria:**
If we build multi-user system where users need separate contexts.

---

## Architecture Principles

**Follow These:**
1. Boring technology > cutting edge
2. Monorepo until proven otherwise
3. Ship fast, refactor later (with tests)
4. Documentation is code (commit .md files)
5. Environment variables for all secrets

**Avoid These:**
1. Microservices for solo projects
2. Premature optimization
3. Framework hopping
4. Over-engineering

---

## Technology Radar

**Adopt:**
- Claude Code for AI-assisted development
- Railway for backend hosting
- Express.js for APIs

**Trial:**
- MCP (Model Context Protocol) for Claude integrations
- GitHub Actions for CI/CD

**Assess:**
- Vector databases for semantic search
- Edge functions for global performance

**Hold:**
- Microservices architecture (too early)
- GraphQL (REST is fine for now)
- Kubernetes (massive overkill)

---

**For Claude Code:** Read this file to understand why we chose specific technologies and what alternatives we rejected.
