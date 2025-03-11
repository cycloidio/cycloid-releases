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
