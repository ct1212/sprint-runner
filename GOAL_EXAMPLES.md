# Goal File Examples

Use these as inspiration when writing your `00-goal.md` files. The more specific your goal, the better the generated PRD and tasks will be.

**Note:** You can leave the Stack section empty to let Claude choose the best tools for your goal!

---

## Example 1: Simple API (auto stack)

```markdown
# Goal

Build a REST API for a todo list app with CRUD operations and SQLite persistence.

# Constraints

- Keep scope small
- Prefer local installs only (no global installs, no sudo)
- Use modern, well-supported tools
- No ORM — use raw SQL for database operations

# Done when

- API serves on localhost:3000
- POST /todos creates a todo (title, completed)
- GET /todos returns all todos
- GET /todos/:id returns one todo
- PATCH /todos/:id updates a todo
- DELETE /todos/:id deletes a todo
- Data persists in a local SQLite file
- Tests cover all CRUD operations
- Lint passes

# Stack (optional)

_Let Claude choose the best stack for this API._
```

---

## Example 1b: Simple API (with specified stack)

```markdown
# Goal

Build a REST API for a todo list app with CRUD operations and SQLite persistence.

# Constraints

- Keep scope small
- Prefer local installs only
- No global installs, no sudo
- Must use Express and better-sqlite3

# Done when

- API serves on localhost:3000
- POST /todos creates a todo (title, completed)
- GET /todos returns all todos
- GET /todos/:id returns one todo
- PATCH /todos/:id updates a todo
- DELETE /todos/:id deletes a todo
- Data persists in a local SQLite file
- Tests cover all CRUD operations
- Lint passes

# Stack (optional)

- Node.js / TypeScript (ESM)
- Express for HTTP server
- better-sqlite3 for database
- Vitest for testing
- ESLint + Prettier
```

---

## Example 2: CLI Tool (auto stack)

```markdown
# Goal

Build a CLI tool that converts CSV files to JSON, with options for filtering columns and rows.

# Constraints

- Keep scope small and focused
- Prefer local installs only (no global installs, no sudo)
- Support stdin piping (cat file.csv | csvtool)
- Fast performance for large files

# Done when

- `csvtool input.csv` outputs JSON to stdout
- `--columns name,age` flag filters to specific columns
- `--where "age>30"` flag filters rows
- `--pretty` flag outputs formatted JSON
- Works with stdin piping
- Handles malformed CSV gracefully with error messages
- Tests cover normal and edge cases

# Stack (optional)

_Let Claude choose the best stack for this CLI tool._
```

---

## Example 3: React Dashboard (auto stack)

```markdown
# Goal

Build a project dashboard that displays GitHub repository stats (stars, forks, issues, PRs) using the GitHub API.

# Constraints

- Keep scope small and focused
- Prefer local installs only (no global installs, no sudo)
- GitHub API token configured via GITHUB_TOKEN env var
- Include mock data fallback when no token is set
- Modern, responsive UI

# Done when

- Dashboard loads on localhost (hot reload in dev mode)
- User can enter a GitHub org/repo name
- Dashboard shows: stars over time, fork count, open issues, recent PRs
- At least one chart (stars over time)
- Demo mode works without a GitHub token
- Banner shows when running in demo mode
- Tests pass for data fetching and transformation logic

# Stack (optional)

_Let Claude choose the best stack for this web dashboard._
```

---

## Example 4: Data Processing (auto stack - will likely choose Python)

```markdown
# Goal

Build a web scraper that extracts product prices from e-commerce sites and saves results to CSV.

# Constraints

- Keep scope small and focused
- No global installs, no sudo
- Respect robots.txt
- Rate limit requests (1 per second)
- Fast and efficient for hundreds of pages

# Done when

- CLI command extracts prices: `scraper --url <url> --selector <css>`
- Results saved to output.csv with columns: product, price, url, timestamp
- Handles pagination with --pages flag
- Graceful error handling for network failures and missing elements
- Tests use mocked HTTP responses (no real network calls)
- Lint passes

# Stack (optional)

_Let Claude choose the best stack for web scraping._
```

---

## Tips for Writing Good Goals

1. **Be specific about the output** — What should the user see/experience when it's done?
2. **List acceptance criteria** — Each one becomes a testable outcome. Be concrete and verifiable.
3. **Set constraints** — What should it NOT do? Any performance requirements? This prevents scope creep.
4. **Keep it focused** — One sprint = one feature area. Split large projects into multiple sprints.
5. **Trust Claude on the stack** — Unless you have strong preferences, leave the Stack section empty. Claude will analyze your goal and choose modern, appropriate tools.
6. **Mention special requirements** — If you need specific performance characteristics (fast CLI, real-time updates, etc.), mention them in constraints or the goal description.
