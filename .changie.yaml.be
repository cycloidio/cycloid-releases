# Changie docs
# https://changie.dev/config
#
# Advanced formatting/logic docs
# - https://github.com/miniscruff/changie/blob/main/examples/custom_prompts_config.yaml
# - https://masterminds.github.io/sprig

changesDir: changelog/releases
unreleasedDir: ../unreleased
headerPath: ../header.tpl.md
versionHeaderPath: ""
versionFooterPath: ""
changelogPath: CHANGELOG.md
versionExt: md

newlines:
  afterVersion: 1
  beforeChangelogVersion: 2
  beforeComponent: 1

versionFormat: ''
headerFormat: '{{- if gt (len .Changes) 0 -}}## API{{- end -}}'
footerFormat: ''
componentFormat: ""
kindFormat:      "### **{{.Kind}}**"
changeFormat: '- **{{.Component}}**: {{.Body}} {{- if .Custom.LINEAR }}{{- $issues := splitList "," .Custom.LINEAR }}{{- range $issues }} [{{ . | trim }}](https://linear.app/cycloid/issue/{{ . | trim }}){{- end }}{{- end }}'


components:
  - API Keys
  - Appearances
  - Authentication
  - AWS Marketplace
  - Budget
  - Changelog
  - CLI
  - Cloud Cost Management
  - Components
  - Concourse
  - Config Repo
  - Cost Estimation
  - Credentials
  - Dashboard
  - Documentation
  - Environments
  - Events
  - External Backend
  - InfraImport
  - InfraPolicies
  - InfraView
  - Inventory
  - Invitations
  - KPI
  - Licence
  - Logs
  - Members
  - MFA
  - Monitoring
  - MSP
  - Notifications
  - Observability
  - Organizations
  - Pipeline Designer
  - Pipeline view
  - Pipelines Overview
  - Profile-User-Hubspot
  - Project
  - Quota
  - Roles
  - Service Catalog
  - StackCraft
  - StackForms
  - Start&Stop Env
  - Status Page
  - Subscription
  - Teams
  - TerraCost
  - TerraformState
  - User
  - Workers
  - Other

kinds:
  - label: ADDED
  - label: BREAKING
  - label: CHANGED
  - label: DEPRECATED
  - label: FIXED
  - label: INTERNAL
  - label: REMOVED
  - label: SECURITY

# --[Notes]--
#
# :: key & label ::
# Doesn't print out both key and label in the cmd line
# so you'll need to prepend the label with the key.
#
# :: optional ::
# Contrary to the docs, int is not optional. So if you
# want to make something optional, you need string.
#
# :: order ::
# We cannot dictate the order for custom properties,
# it's also not clear what logic is used to order them.
#
# :: DETAILS ::
# If your command line goes funky after typing then just
# finish and edit instead in your IDE. It's a bit janky.
custom:
  - key: LINEAR
    label: Linear Issue(s) - Linear issue(s) id like BE-XXX,BE-YYY
    type: string
  - key: FE LINEAR
    label: FE Linear Issue(s) - changes to be synced with the FE when releasing
    type: string
  - key: DETAILS
    label: DETAILS - for public release, should be approx 1-2 sentences (user impact), optional.
    type: string
