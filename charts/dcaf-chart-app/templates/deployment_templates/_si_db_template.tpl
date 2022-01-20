{{- define "si-db-label" -}}
app: si
section: db
{{- end -}}
{{- define "volume-si-db"}}
volumeMounts:
  - name: dcaf-si-db-data
    mountPath: /var/lib/postgresql/data
{{- end -}}
{{- define "volume-claim-si-db"}}
volumeClaimTemplates:
  - metadata:
      name: dcaf-si-db-data
    spec:
      accessModes: [ "ReadWriteOnce" ]
      storageClassName: "local-path"
      resources:
        requests:
          storage: {{ .Values.database.provisionnedStorage }}
{{- end -}}