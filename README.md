# Event Bus Documentation Generator

This action generates a markdown file and checks it in to a repo.

## Inputs

## `yaml-file-path`

**Required** The Asyncapi `yaml` file path.

## `doc-output-directory`

**Required** Output directory for the generated `yaml` file.

## Outputs

## `status`

The time we greeted you.

## Example usage

```yaml
uses: actions/event-doc-publisher@v1
with:
  yaml-file-path: 'docs/asyncapi.yaml'
  doc-output-directory: 'docs'
```