<!-- Hero -->
# LeetCode SQL — Top 50 (MySQL solutions)

This is a studied, pragmatic collection of MySQL solutions for LeetCode's Top 50 SQL study plan. Each solution focuses on clarity, common interview patterns, and concise explanations so you can read, learn, and reuse quickly.

Current progress: **40 / 50 solved (80%)** — see the `Leetcode_<ID>/` folders for each solution.

---

**Why this repo exists**

- Learn patterns, not just problems: each solution highlights the technique (JOINs, window functions, CTEs, aggregation patterns, date arithmetic, etc.).
- Fast study & paste-ready: queries are formatted for readability and easy copying into LeetCode's editor.
- Practical explanations: short walkthroughs accompany select problems to explain the reasoning behind the query.

---

## Who this is for

- Engineers preparing for SQL interview questions.
- Data analysts who want canonical query patterns.
- Anyone learning SQL and looking for compact, explained solutions.

---

## What you'll find

- One folder per LeetCode problem: `Leetcode_<ID>/` (for example `Leetcode_180/`).
- One `.sql` file per folder, named descriptively (for example `Consecutive_Numbers.sql`).
- Short explanatory notes in the `.sql` files when the approach benefits from a quick walkthrough.

---

## How to use

1. Find a problem by its ID (folders are named `Leetcode_<ID>`).
2. Open the `.sql` file and review the query + comments.
3. Copy the SELECT statement into LeetCode or run it locally in your MySQL client.

Run locally example:

```powershell
mysql -u <user> -p <database> < Leetcode_180/Consecutive_Numbers.sql
```

Note: Most LeetCode problems expect only a SELECT query; some files intentionally omit table DDL.

---

## Sample walkthrough (concise)

Problem: Consecutive Numbers (example)

Goal: return numbers that appear at least three times consecutively.

Approach: use self-joins or window functions to compare neighboring rows and filter sequences.

```sql
SELECT DISTINCT l1.num
FROM Logs l1
JOIN Logs l2 ON l2.id = l1.id + 1
JOIN Logs l3 ON l3.id = l2.id + 1
WHERE l1.num = l2.num
	AND l2.num = l3.num;
```

---

## Progress & roadmap

- Current: 40 / 50 problems completed and verified on LeetCode.
- Next: finish the remaining top-50 problems, add more walkthroughs for medium/hard examples, and tag solutions by concept.

---

## Contributing

- Found a clearer solution or a better explanation? Please open a PR.
- Follow the naming convention: `Leetcode_<ID>/<Descriptive_Name>.sql`.
- Include a short comment or example input if your solution needs clarification.

Small contribution checklist:

- Add or update a single folder per problem.
- Keep queries focused (LeetCode-style SELECT where appropriate).
- Update `README.md` only if you add notable examples or change structure.

---

## Contact

Open issues or pull requests for corrections, suggestions, or to request an explanation for a specific problem.

Made while learning and refining SQL — happy studying!