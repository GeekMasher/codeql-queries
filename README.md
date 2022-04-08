# codeql-queries
GitHub's Field Team's CodeQL Custom Queries, Suites, and Configurations

## Getting Started

### Configuration

Add the GitHub Field Team's config-file as part of Actions.

```yaml
- name: Initialize CodeQL
  uses: github/codeql-action/init@v1
  with:
    config-file: advanced-security/codeql-queries/config/codeql.yml@main
```

### Bundle

Add the GitHub Field Team's custom CodeQL bundle to your existing Action:

```yml
# ...
- name: Download Latest Bundle
  run: |
    gh release download -R advanced-security/codeql-queries --pattern 'codeql-bundle.tar.gz'
- name: Initialize CodeQL
  uses: github/codeql-action/init@v1
  with:
    languages: ${{ matrix.language }}
    tools: codeql-bundle.tar.gz
```


## Development

```bash
git clone --recursive https://github.com/advanced-security/codeql-queries.git && code .
```
