# Project Context: X Strategy System

**Last Updated:** 2026-01-04
**Project:** Twitter Growth Strategy & Automation
**Status:** Production (150 followers → 5K goal in 30 days)

## 🎯 Project Goals

**Primary Goal:**
Build intelligent Twitter growth system using Claude Code to go from 150 → 5K followers in 30 days through quality engagement.

**Success Criteria:**
- [ ] 5,000 followers by Feb 3, 2026
- [ ] 10-15 quality threads/week
- [ ] Average 100+ likes per thread
- [ ] Establish authority in "Claude Code workflows" niche

**Timeline:**
- Week 1: Deploy 3 threads + 15 quick-wins
- Week 2-4: Scale to 5 threads + 20 quick-wins/week
- Day 30: 5K followers achieved

## 🏗️ Technical Stack

**Backend:**
- Framework: Express.js on Railway
- Database: PostgreSQL (Railway-managed)
- Cron: Hourly worker for scheduling
- API: REST endpoints for scheduler

**Intelligence Layer:**
- Tool: Composio MCP for Twitter API
- Research: Node.js scripts with strategic scoring
- AI: Claude Code for drafting + research

**Frontend:**
- None (internal tools only)
- Content delivery: Direct to Twitter via API

**Infrastructure:**
- CI/CD: Manual deploy to Railway (git push)
- Secrets: Railway environment variables
- Monitoring: Railway logs

## 📐 Architecture

**High-Level:**
```
[Tier 1 List] → [Intelligence Gathering] → [Strategic Scoring] → [Opportunities]
                                                                         ↓
                                                    [Research] → [Drafting] → [Scheduling]
                                                         ↓
                                              [Scheduler API] → [Hourly Cron] → [Twitter API]
```

**Key Design Decisions:**
1. Separate scheduler backend (Railway) from intelligence layer (local scripts)
2. Strategic scoring algorithm to identify outlier opportunities
3. Human-in-loop for quality (AI drafts, human approves)

## 🎨 Project Structure

```
/x-strategy
  /tools              # Intelligence gathering (list-monitor.js, batch-scorer.js)
  /output             # Research reports, drafts, strategies
  SCHEDULER-API.md    # API documentation
  ATTACK-STRATEGY.md  # Knowledge graph strategy
```

## 📊 Current Status

**Completed:**
- [x] Tier 1 list curation (49 accounts)
- [x] Scheduler backend on Railway
- [x] Thread posting workflow
- [x] Strategic scoring algorithm
- [x] Research facility operational
- [x] 3 successful threads deployed

**In Progress:**
- [ ] Week 1 execution (5 threads + 10 quick-wins)
- [ ] GitHub repo for .md files
- [ ] Knowledge graph topology building

**Next Up:**
- [ ] Draft 5 new threads
- [ ] Draft 10 quick-win replies
- [ ] Schedule Week 1 content

## 🚫 Known Constraints

**Technical Limitations:**
- Twitter API Basic: 100 posts/day limit
- Twitter API: 10,000 reads/month
- Composio MCP rate limits (unknown, monitor)

**Business Constraints:**
- Budget: $200/month for Twitter API
- Time: Solo operator, ~2 hours/day for strategy

**Dependencies:**
- Twitter API availability
- Railway uptime
- Composio MCP stability

## 👥 Users & Use Cases

**Primary User:**
Solo builder growing Twitter presence to 5K followers for credibility/reach.

**Key Use Cases:**
1. Pull top opportunities from Tier 1 accounts
2. Score tweets by strategic value (not just engagement)
3. Research targets and draft high-quality threads
4. Schedule posts at optimal times
5. Track follower growth and engagement

## 🔐 Security & Privacy

**Sensitive Data:**
- Twitter API credentials
- Scheduler API key
- Composio API key

**API Keys & Secrets:**
- Stored in: Railway environment variables (SCHEDULER_API_KEY, TWITTER_BEARER_TOKEN)
- Also in: Vercel environment variables for local dev
- Rotation: Not currently rotated (would require manual update)

## 📈 Metrics

**Success Metrics:**
- Followers: 160/day growth (5K in 30 days)
- Engagement: 100+ likes/thread
- Authority: Top 50 results for "Claude Code workflows"

**Current Performance:**
- Followers: 150 (baseline)
- Thread 1: Live, tracking engagement
- Thread 2: Scheduled 12:00 UTC
- Thread 3: Scheduled 16:00 UTC

## 🐛 Known Issues

**Critical:**
- None currently

**Non-Blocking:**
- Em-dashes in drafts (user feedback: avoid, too AI-like)
- Scheduler had 502 errors briefly (resolved)

## 📝 Notes for Claude

**Important Context:**
- User is at 150 followers, ambitious 5K goal
- Quality over volume (10-15 thoughtful threads > 50 generic replies)
- Voice: Technical depth, systems thinking, no hype
- Avoid: Em-dashes, generic praise, engagement farming

**Preferred Patterns:**
- Strategic scoring: Outlier ratio (actual / baseline engagement)
- Research before drafting (understand context deeply)
- Multiple versions per draft (give options)
- No scheduling without user approval

**Twitter SEO Strategy:**
- Building knowledge graph: [Claude Code] ↔ [AI workflows] ↔ [Solo builders]
- Each thread is hub node, each reply is connector edge
- Semantic clustering around 3-5 core concepts
- Authority borrowing from high-value accounts (Simon Willison, Paul Graham, Ethan Mollick)

---

**For Claude Code:** This is an ongoing growth experiment. We're building systems (scheduler, intelligence layer, research workflows) while executing tactical content strategy. The goal is creating a repeatable playbook for Twitter growth using AI assistance.
