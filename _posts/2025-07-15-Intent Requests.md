---
title: "Getting to the Heart of the Ask: Designing AI for Intent Clarity"
date: 2025-07-15
layout: post
excerpt: When users talk to AI, they speak like humans. That’s the whole point. But the systems powering those conversations—whether it’s Azure DevOps, a database, or a custom app—speak a different language. This is where intent requests come in.
tags:
  - AI
  - natural language
  - prompt engineering
  - software design
  - Azure DevOps
---

### When AI understands what you mean

When users talk to AI, they speak like humans. That’s the whole point. But the systems powering those conversations—whether it’s Azure DevOps, a database, or a custom app—speak a different language. This is where intent requests come in.

Intent requests are about turning what users _mean_ into something the system can actually _do_.

### What is an Intent Request?

An intent request is a rewritten version of what the user said, structured in a way that aligns with the tools and data models behind the scenes.

**Raw input:**  
`"find all the bugs in the last 5 days"`

**Intent request:**  
`"Work Item Type = \"Issue\" AND Created Date >= @StartOfDay('-5d')"`

This shift from natural language to system-friendly language is subtle but vital.

### Why It Matters

AI isn’t useful if it’s vague. The user’s request might be perfectly understandable to a human, but backend systems don’t deal in assumptions. They need structured input. The assistant acts as a translator.

**Without intent requests:**

- You risk returning irrelevant or broken results
- You have no way to standardize interactions
- You can’t guarantee safety or accuracy

**With intent requests:**

- AI becomes reliably useful
- You can connect to real systems (DevOps, CRMs, analytics)
- You create a layer of control and interpretability

### The Role of Assistant Prompts

To get good intent requests, the assistant needs clear instructions.

> Rewrite the user’s request using Azure DevOps field names and valid field values. Normalize informal or ambiguous terms to match existing Azure DevOps schema based on intent. Ensure all output aligns with values that actually exist in the system. Return only the rewritten query.

This prompt doesn’t just ask for a paraphrase—it demands precision, normalization, and alignment with schema.

### Handling Ambiguity without Hardcoding

Users say things like:

- "bugs" instead of "issues"
- "done" instead of "closed"
- "last week" instead of a date range

Rather than hardcoding translations (which doesn't scale), teach the assistant to normalize terms based on what’s allowed in your system.

This can be done by:

- Grounding it in the valid schema (e.g. allowed work item types)
- Encouraging it to infer meaning based on intent, not keywords

### Example Flow

**User Input:**  
`"Find all the bugs from this week"`

**Assistant Intent Rewrite:**  
`Work Item Type = "Issue" AND Created Date >= @StartOfWeek()`

The assistant didn’t need to be told that "bug" = "issue"—it inferred it from the available options.

### Design Tips for Intent Systems

- Keep the assistant prompt focused and minimal
- Update the system prompt to include available schemas/values
- Use intent rewriting before triggering any actual logic or API calls
- Validate output against your system before use

### Final Thoughts

The value of AI isn’t just that it “gets” the user—it’s that it can **act** on what they mean. Intent requests are what bridge the gap between vague input and precise action.

The better your intent layer, the more reliable—and safer—your AI becomes.

_Next up: how to set the rules with governance prompts._
