# Claude Code Workflows

**My .md files and workflows for 10x productivity with Claude Code**

This repo contains the essential documentation files and workflows that transformed how I build with AI. These files enable Claude Code to have full context about my projects, making every interaction more effective.

## 📁 The 3 Essential Files

### 1. `project-context.md`
The master context file for any project. Contains:
- Project goals and success criteria
- Technical stack and architecture decisions
- Current status and next milestones
- Known limitations and constraints

**Why it matters:** Claude reads this first to understand WHAT you're building and WHY.

### 2. `technical-decisions.md`
A log of all significant technical choices. Contains:
- Architecture patterns (e.g., "We use Railway for deployment")
- Technology selections (e.g., "Express.js for API, not Next.js")
- Trade-offs and alternatives considered
- Date and reasoning for each decision

**Why it matters:** Prevents Claude from suggesting things you already rejected. Maintains consistency across sessions.

### 3. `claude-workflows.md`
Reusable prompts and patterns that work. Contains:
- Common task templates (e.g., "Generate tests for...")
- Workflow sequences (e.g., "Read spec → Generate tests → Implement")
- Error handling patterns
- Code review checklists

**Why it matters:** Compound learning. Every good prompt becomes reusable.

## 🚀 How to Use

### Initial Setup
1. Copy these 3 template files to your project root
2. Spend 30 minutes filling them out for your project
3. Reference them in your Claude Code prompts: "Read project-context.md first"

### During Development
1. **Before starting:** "Claude, read project-context.md and technical-decisions.md"
2. **When making decisions:** Update technical-decisions.md with reasoning
3. **After solving problems:** Add successful patterns to claude-workflows.md

### The Compound Effect
- Week 1: You document as you go (feels like overhead)
- Week 2: Claude gives better answers (context is building)
- Week 4: Claude rarely suggests wrong approaches (it knows your stack)
- Week 8: New features take 50% less time (accumulated wisdom)

## 📊 Real Results

**Before .md files:**
- Average feature: 4-6 hours
- Context re-explanation: Every session
- Wrong suggestions: ~30% of responses

**After .md files:**
- Average feature: 1-2 hours
- Context re-explanation: Rare
- Wrong suggestions: ~5% of responses

## 🎯 Philosophy

**Documentation isn't overhead anymore. It's force multiplication.**

Every .md file you write:
1. Makes Claude 10x more effective
2. Onboards new AI assistants instantly
3. Serves as project memory across sessions
4. Becomes training data for better prompts

## 📖 Examples

See the `/examples` directory for real-world .md files from actual projects:
- `x-strategy-context.md` - Twitter growth automation system
- `scheduler-api-decisions.md` - Backend service architecture
- `claude-code-workflows.md` - Reusable patterns that work

## 🔗 Related Resources

**Blog Posts:**
- [How .md Files Made Me 99th Percentile](link-tbd)
- [The AI Documentation Paradox](link-tbd)

**Threads:**
- [Thread on .md files as leverage](https://x.com/yourusername/status/xyz)

**Tools:**
- [Claude Code](https://claude.ai/code) - The AI coding assistant
- [MCP Protocol](https://www.anthropic.com/mcp) - Model Context Protocol

## 💡 Tips

1. **Start simple:** Don't try to document everything. Start with project-context.md only.
2. **Update as you go:** Add to technical-decisions.md when you make choices, not retrospectively.
3. **Steal patterns:** When Claude gives a great response, save the prompt to claude-workflows.md.
4. **Version control:** Commit .md files with your code. They're part of the codebase.
5. **Share generously:** Redact sensitive info and share your .md files. Help others learn.

## 🤝 Contributing

Have a workflow that's working great? Open a PR with:
- Template for a new .md file type
- Example from a real project (anonymized)
- Explanation of why it works

## 📜 License

MIT - Use however you want. Credit appreciated but not required.

---

**Built by [@fedewedreamlabsio](https://x.com/yourusername)**

*Part of the journey from 150 → 5K followers in 30 days using systems, not hacks.*
