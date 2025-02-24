{{- define "grafana.dashboard.configmaps" -}}
{{- range $filePath, $_ := .Files.Glob .path }}
---
apiVersion: v1
kind: ConfigMap
metadata:
  labels:
    app.kubernetes.io/name: {{ $.Chart.Name }}
    app.kubernetes.io/instance: {{ $.Release.Name }}
    grafana_dashboard: "1"
  annotations:
    grafana_folder: {{ $.Release.Name }}
  name: grafana-dashboard-{{ $filePath | base | splitList "." | first }}
  namespace: {{ $.Release.Namespace }}
data:
  {{ $filePath | base }}: {{ $.Files.Get $filePath | toJson }}
...
{{- end }}
{{- end }}
