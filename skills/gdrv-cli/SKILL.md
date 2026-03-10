---
name: gdrv-cli
description: Manage Google Drive files using the gdrv CLI. Use when working with file uploads, downloads, folder management, permissions, or when the user mentions Google Drive, cloud storage, file backups, or gdrv.
---

# Google Drive CLI

Manage Google Drive using the `gdrv` command-line tool.

## Prerequisites

```bash
gdrv --version
export GDRV_CREDENTIALS='path/to/credentials.json'
gdrv auth login
```

## Authentication

- Service account or OAuth2 credentials
- Environment variable: `GDRV_CREDENTIALS`
- OAuth flow: `gdrv auth login`

## File Operations

### Upload

```bash
gdrv upload file.txt --folder "Backups"
gdrv upload ./folder --recursive --folder "Archive"
```

### Download

```bash
gdrv download FILE_ID --output ./downloads
gdrv download --query "name contains 'Report'" --output ./reports
```

### List & Search

```bash
gdrv list --folder "Documents" --limit 100
gdrv search "*.pdf" --folder "Reports"
gdrv list --trashed
```

## Folder Management

```bash
gdrv folder create "New Folder" --parent PARENT_ID
gdrv folder list --parent ROOT
gdrv folder delete FOLDER_ID --confirm
```

## Permissions

```bash
gdrv share FILE_ID --email user@example.com --role editor
gdrv share FILE_ID --anyone --role viewer
gdrv permissions list FILE_ID
gdrv permissions revoke FILE_ID PERMISSION_ID
```

## Agent Best Practices

1. **Use folder names** when possible; resolve IDs with `gdrv list`
2. **Recursive uploads** for directory backups
3. **Query syntax** for complex searches
4. **Service accounts** for automation (no user interaction)
