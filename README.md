
## Rick and Morty API on FreeBSD

Shell scripts to retrieve character data from the Rick and Morty API using native FreeBSD tools.

---

📦 Requirements  
- FreeBSD system  
- `jq` (install with: `pkg install jq`)

---

🚀 Getting Started

Clone the repository:

```sh
git clone https://github.com/tiago1820/rickandmortyapi-freebsd.git
cd rickandmortyapi-freebsd
````

Make the scripts executable (optional):

```sh
chmod +x index.sh show.sh filter.sh
```

Run a script:

**List characters:**

```sh
./index.sh
```

**Search by ID:**

```sh
./show.sh
```

**Filter by name and status:**

```sh
./filter.sh
```

---

📝 Notes
These scripts use `fetch` and `jq` to make API requests and format the JSON output.

`jq` is not installed by default. You can install it with:

```sh
pkg install jq
```
