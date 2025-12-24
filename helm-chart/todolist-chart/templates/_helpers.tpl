{{- define "todolist-chart.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "todolist-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "todolist-chart.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "todolist-chart.frontendName" -}}
{{- printf "%s-%s" (include "todolist-chart.fullname" .) .Values.frontend.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "todolist-chart.backendName" -}}
{{- printf "%s-%s" (include "todolist-chart.fullname" .) .Values.backend.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "todolist-chart.backendHeadlessName" -}}
{{- printf "%s-headless" (include "todolist-chart.backendName" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
