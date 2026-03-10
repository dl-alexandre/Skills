# CLI Tools Skills

[![Validate and Index Skills](https://github.com/dl-alexandre/Skills/actions/workflows/index-skills.yml/badge.svg)](https://github.com/dl-alexandre/Skills/actions/workflows/index-skills.yml)

A collection of Agent Skills for all CLI tools in the monorepo. These skills provide zero-friction automation guidance for:

- **Apple Business Connect** (`abc`) - Business location management
- **Advance Commerce** (`adv`) - E-commerce and inventory management  
- **Apple Maps Server** (`ams`) - Maps and geolocation APIs
- **App StoreKit** (`ask`) - In-app purchases and subscriptions
- **California Irrigation** (`cimis`) - CIMIS weather data
- **Google Drive** (`gdrv`) - File storage and management
- **Google Play Developer** (`gpd`) - Android app publishing
- **Grokipedia** (`grokipedia`) - Knowledge base and wiki search
- **MyMarketNews** (`mpr`) - USDA commodity data
- **Monorepo** (`monorepo-cli`) - Cross-project management
- **Local UniFi** (`unifi`) - On-premise network management
- **UniFi Site Manager** (`usm`) - Cloud-based UniFi management
- **UPS** (`ups`) - Package tracking and shipping
- **X** (`x`) - Social media and posts

Skills follow the Agent Skills format.

## Available Skills

### Apple Business Connect (abc)

#### abc-cli
Manage Apple Business Connect listings, place cards, and business hours.

**Use when:**
- You need to manage business locations on Apple Maps
- You want to update hours, photos, or business information
- You need to verify or claim a business location

---

### Advance Commerce (adv)

#### adv-cli
Query Advance Commerce APIs for e-commerce, products, inventory, and orders.

**Use when:**
- You need to check product catalogs or inventory
- You want to create or update orders
- You're working with customer data or sales reports

---

### Apple Maps Server (ams)

#### ams-cli
Query Apple Maps Server APIs for geocoding, directions, and places.

**Use when:**
- You need to geocode addresses or reverse geocode coordinates
- You want directions between locations
- You're searching for places or points of interest

---

### App StoreKit (ask)

#### ask-cli
Query App StoreKit APIs for in-app purchases and subscriptions.

**Use when:**
- You need to check subscription status
- You want to query transaction history
- You're working with in-app purchase products

---

### California Irrigation (cimis)

#### cimis-cli
Query CIMIS weather data for irrigation management.

**Use when:**
- You need ET0 (evapotranspiration) data for irrigation scheduling
- You want weather data from California stations
- You're managing agricultural water usage

---

### Google Drive (gdrv)

#### gdrv-cli
Manage Google Drive files, folders, and permissions.

**Use when:**
- You need to upload or download files to Google Drive
- You want to manage folder structures or sharing permissions
- You're automating cloud storage backups

---

### Google Play Developer (gpd)

#### gpd-cli
Google Play Developer CLI usage and authentication.

**Use when:**
- You need to publish Android apps to Google Play
- You're managing Play Console operations programmatically
- You need to upload APKs/AABs, create releases, or manage tracks

#### gpd-cli-usage
Guidance for running `gpd` commands.

**Use when:**
- You need the correct `gpd` command syntax
- You want to understand flags and options

#### gpd-metadata-sync
Sync app metadata and listings to Google Play.

**Use when:**
- You need to update app descriptions, screenshots, or store listings
- You're localizing app listings for different countries

#### gpd-release-flow
End-to-end release workflows for Google Play.

**Use when:**
- You want to upload, promote, and release in one flow
- You need to manage internal, alpha, beta, and production tracks

#### gpd-betagroups
Beta testing groups and testers management.

**Use when:**
- You manage beta testers
- You need to add/remove testers from groups

#### gpd-id-resolver
Resolve IDs for apps, tracks, and releases.

**Use when:**
- A command requires IDs and you only have names
- You want deterministic outputs for automation

#### gpd-build-lifecycle
Build upload, processing, and management.

**Use when:**
- You are uploading AAB/APK files
- You need to check processing status

#### gpd-ppp-pricing
Territory-specific pricing for Google Play.

**Use when:**
- You want different prices for different countries
- You are implementing localized pricing strategies

#### gpd-submission-health
Preflight checks and submission monitoring.

**Use when:**
- You want to reduce submission failures
- You need to validate app bundles before upload

---

### Grokipedia (grokipedia)

#### grokipedia-cli
Query Grokipedia knowledge base for articles and documentation.

**Use when:**
- You need to search a knowledge base or wiki
- You want to find related articles or topics
- You're researching technical documentation

---

### MyMarketNews (mpr)

#### mpr-cli
Query USDA MyMarketNews for commodity prices and market reports.

**Use when:**
- You need agricultural commodity prices
- You want livestock or grain market data
- You're analyzing USDA market reports

---

### Monorepo CLI (monorepo-cli)

#### monorepo-cli
Cross-project management for the CLI tools monorepo.

**Use when:**
- You need to check CI status across all projects
- You want to see which projects have commits since last release
- You're managing releases across multiple CLIs

---

### Local UniFi Controller (unifi)

#### unifi-cli
Local UniFi Controller CLI for on-premise network management.

**Use when:**
- You need to manage a local UniFi Controller (Dream Machine, Cloud Key, self-hosted)
- You want to list sites, devices, and clients directly from the controller
- You're troubleshooting network issues locally

**Key commands:**
- `unifi init` - Setup configuration
- `unifi sites list` - List all sites on controller
- `unifi devices list` - List all UniFi devices (APs, switches, gateways)
- `unifi clients list` - List connected clients

**Authentication:**
- Local admin account (not cloud/SSO)
- Environment variables: `UNIFI_USERNAME`, `UNIFI_PASSWORD`
- Session-based auth handled automatically

---

### UniFi Site Manager (usm)

#### usm-cli
UniFi Site Manager CLI for cloud-based site management.

**Use when:**
- You need to monitor UniFi sites across multiple locations
- You want to list sites and devices via the cloud API
- You're managing UniFi deployments at scale

**Key commands:**
- `usm init` - Setup configuration
- `usm sites list` - List all sites with filtering
- `usm sites get <id>` - Get specific site details
- `usm whoami` - Verify authentication

**Authentication:**
- API key from unifi.ui.com (Settings → Control Plane → Integrations → API Keys)
- Environment variable: `USM_API_KEY`
- Never stored in config file

---

### UPS (ups)

#### ups-cli
Track shipments and manage UPS shipping.

**Use when:**
- You need to track UPS packages
- You want shipping rates or create shipping labels
- You're managing pickups or drop-off locations

---

### X (x)

#### x-cli
Interact with X API for posts and social media.

**Use when:**
- You need to create posts or threads
- You want to search posts or analyze timelines
- You're managing media uploads or user interactions

---

## Installation

Install individual skills or the entire skill pack:

```bash
# Install all skills
npx skills add dl-alexandre/Skills

# Or specific skills only
npx skills add dl-alexandre/Skills --skill gdrv-cli,mpr-cli,x-cli
```

## Usage

Skills are automatically available once installed. The agent will use them when relevant tasks are detected.

**Examples:**

```
Upload my backup.zip to Google Drive folder Backups
```

```
Publish my Android app version 1.2.3 to Google Play production track
```

```
List all my UniFi sites and export to JSON
```

```
Check CI status for all CLI projects in the monorepo
```

```
Track UPS package 1Z999AA10123456784
```

```
Post a tweet about my new product launch
```

## Skill Structure

Each skill contains:
- `SKILL.md` - Instructions for the agent
- `scripts/` - Helper scripts for automation (optional)
- `references/` - Supporting documentation (optional)

## Available CLIs

| CLI | Repository | Description |
|-----|------------|-------------|
| `abc` | Apple-Business-Connect-CLI | Business location management |
| `adv` | Advance-Commerce-CLI | E-commerce and inventory |
| `ams` | Apple-Map-Server-CLI | Maps and geolocation APIs |
| `ask` | App-StoreKit-CLI | In-app purchases and subscriptions |
| `cimis` | cimis-cli | CIMIS weather data |
| `gdrv` | Google-Drive-CLI | Google Drive API |
| `gpd` | Google-Play-Developer-CLI | Android app publishing |
| `grokipedia` | Grokipedia-CLI | Knowledge base search |
| `mpr` | MyMarketNews-CLI | USDA commodity data |
| `monorepo-cli` | - | Cross-project management |
| `unifi` | Local-UniFi-CLI | Local UniFi Controller API |
| `usm` | UniFi-Site-Manager-CLI | UniFi cloud site management |
| `ups` | UPS-CLI | Package tracking and shipping |
| `x` | X-CLI | X API |

## CI/CD & Skills.sh Indexing

This repository uses GitHub Actions to automatically validate and index skills:

### Validation
- All skills must have a valid `SKILL.md` file with YAML frontmatter
- Required fields: `name` and `description`
- Validation runs on every PR and push to main

### Skills.sh Indexing
Skills.sh uses telemetry-driven discovery. To ensure all skills appear on the leaderboard:

1. **Automatic indexing**: The CI workflow runs weekly and on every push to install all skills, triggering telemetry that indexes them on [skills.sh](https://skills.sh)

2. **Manual validation**: Run locally to check all skills:
   ```bash
   ./scripts/validate-skills.sh
   ```

3. **Force re-index**: Trigger the workflow manually from the Actions tab with "Force re-index all skills" enabled

### View on skills.sh
📊 **[View your skills on skills.sh](https://skills.sh/dl-alexandre)**

## License

MIT
