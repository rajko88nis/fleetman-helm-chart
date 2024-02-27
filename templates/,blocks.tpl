{{ define "webAppImage" }}
- name: webapp
  # Note to deployer - add -dev at the end of here for development version
  image: {{ .Values.repoName | default "something" | lower }}/k8s-fleetman-helm-demo:v1.0.0{{ if .Values.development }}-dev{{ else }}-prod{{ end }}
{{ end }}