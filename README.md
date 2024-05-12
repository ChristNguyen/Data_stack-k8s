## Structure

├── airflow
│   └── chart
│       ├── Chart.lock
│       ├── Chart.yaml
│       ├── custom_values.yaml
│       ├── files
│       │   ├── pod_template.kubernetes-helm-yaml
│       │   └── webserver_config.py
│       ├── templates
│       │   ├── NOTES.txt
│       │   ├── _helpers
│       │   │   ├── common.tpl
│       │   │   ├── pods.tpl
│       │   │   └── validate-values.tpl
│       │   ├── config
│       │   │   ├── configmap-pod-template.yaml
│       │   │   ├── secret-config-envs.yaml
│       │   │   ├── secret-known-hosts.yaml
│       │   │   ├── secret-local-settings.yaml
│       │   │   └── secret-webserver-config.yaml
│       │   ├── db-migrations
│       │   │   ├── _helpers
│       │   │   │   └── code.tpl
│       │   │   ├── db-migrations-deployment.yaml
│       │   │   ├── db-migrations-job.yaml
│       │   │   └── db-migrations-secret.yaml
│       │   ├── extra-manifests.yaml
│       │   ├── flower
│       │   │   ├── flower-deployment.yaml
│       │   │   ├── flower-ingress-v1beta1.yaml
│       │   │   ├── flower-ingress.yaml
│       │   │   ├── flower-pdb.yaml
│       │   │   └── flower-service.yaml
│       │   ├── pgbouncer
│       │   │   ├── _helpers
│       │   │   │   └── pgbouncer.tpl
│       │   │   ├── pgbouncer-deployment.yaml
│       │   │   ├── pgbouncer-pdb.yaml
│       │   │   ├── pgbouncer-secret.yaml
│       │   │   └── pgbouncer-service.yaml
│       │   ├── pvc-dags.yaml
│       │   ├── pvc-logs.yaml
│       │   ├── rbac
│       │   │   ├── airflow-role.yaml
│       │   │   ├── airflow-rolebinding.yaml
│       │   │   └── airflow-serviceaccount.yaml
│       │   ├── scheduler
│       │   │   ├── scheduler-deployment.yaml
│       │   │   └── scheduler-pdb.yaml
│       │   ├── secret_provider_class.yaml
│       │   ├── sync
│       │   │   ├── _helpers
│       │   │   │   ├── global_code.tpl
│       │   │   │   ├── sync_connections.tpl
│       │   │   │   ├── sync_pools.tpl
│       │   │   │   ├── sync_users.tpl
│       │   │   │   └── sync_variables.tpl
│       │   │   ├── sync-connections-deployment.yaml
│       │   │   ├── sync-connections-job.yaml
│       │   │   ├── sync-connections-secret.yaml
│       │   │   ├── sync-pools-deployment.yaml
│       │   │   ├── sync-pools-job.yaml
│       │   │   ├── sync-pools-secret.yaml
│       │   │   ├── sync-users-deployment.yaml
│       │   │   ├── sync-users-job.yaml
│       │   │   ├── sync-users-secret.yaml
│       │   │   ├── sync-variables-deployment.yaml
│       │   │   ├── sync-variables-job.yaml
│       │   │   └── sync-variables-secret.yaml
│       │   ├── triggerer
│       │   │   ├── triggerer-deployment.yaml
│       │   │   └── triggerer-pdb.yaml
│       │   ├── webserver
│       │   │   ├── webserver-deployment.yaml
│       │   │   ├── webserver-ingress-v1beta1.yaml
│       │   │   ├── webserver-ingress.yaml
│       │   │   ├── webserver-pdb.yaml
│       │   │   ├── webserver-prometheus-rule.yaml
│       │   │   ├── webserver-service-monitor.yaml
│       │   │   └── webserver-service.yaml
│       │   └── worker
│       │       ├── worker-hpa.yaml
│       │       ├── worker-pdb.yaml
│       │       ├── worker-service.yaml
│       │       └── worker-statefulset.yaml
│       └── values.yaml
├── argocd
│   └── manifest.yaml
├── aws-load-balancer-controller
│   ├── charts
│   │   ├── Chart.yaml
│   │   ├── README.md
│   │   ├── ci
│   │   │   ├── extra_args
│   │   │   └── values.yaml
│   │   ├── crds
│   │   │   ├── crds.yaml
│   │   │   └── kustomization.yaml
│   │   ├── templates
│   │   │   ├── NOTES.txt
│   │   │   ├── _helpers.tpl
│   │   │   ├── deployment.yaml
│   │   │   ├── hpa.yaml
│   │   │   ├── ingressclass.yaml
│   │   │   ├── pdb.yaml
│   │   │   ├── rbac.yaml
│   │   │   ├── service.yaml
│   │   │   ├── serviceaccount.yaml
│   │   │   ├── servicemonitor.yaml
│   │   │   └── webhook.yaml
│   │   ├── test.yaml
│   │   └── values.yaml
│   ├── iam_policy.json
│   └── run.sh
├── cluster-autoscaler-one-asg.yaml
├── efs-driver
│   └── chart
│       ├── CHANGELOG.md
│       ├── Chart.yaml
│       ├── custom_values.yaml
│       ├── templates
│       │   ├── NOTES.txt
│       │   ├── _helpers.tpl
│       │   ├── controller-deployment.yaml
│       │   ├── controller-serviceaccount.yaml
│       │   ├── csidriver.yaml
│       │   ├── node-daemonset.yaml
│       │   ├── node-serviceaccount.yaml
│       │   └── storageclass.yaml
│       └── values.yaml
├── elastic
│   ├── README.md
│   ├── eck-operator
│   │   ├── Chart.yaml
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── charts
│   │   │   └── eck-operator-crds
│   │   │       ├── Chart.yaml
│   │   │       ├── README.md
│   │   │       ├── templates
│   │   │       │   ├── NOTES.txt
│   │   │       │   ├── _helpers.tpl
│   │   │       │   └── all-crds.yaml
│   │   │       └── values.yaml
│   │   ├── profile-global.yaml
│   │   ├── profile-istio.yaml
│   │   ├── profile-restricted.yaml
│   │   ├── profile-soft-multi-tenancy.yaml
│   │   ├── templates
│   │   │   ├── NOTES.txt
│   │   │   ├── _helpers.tpl
│   │   │   ├── cluster-roles.yaml
│   │   │   ├── configmap.yaml
│   │   │   ├── managed-namespaces.yaml
│   │   │   ├── managed-ns-network-policy.yaml
│   │   │   ├── operator-namespace.yaml
│   │   │   ├── operator-network-policy.yaml
│   │   │   ├── pdb.yaml
│   │   │   ├── podMonitor.yaml
│   │   │   ├── role-bindings.yaml
│   │   │   ├── service-account.yaml
│   │   │   ├── statefulset.yaml
│   │   │   ├── tests
│   │   │   │   └── operator_test.yaml
│   │   │   ├── validate-chart.yaml
│   │   │   └── webhook.yaml
│   │   └── values.yaml
│   ├── eck-stack
│   │   ├── Chart.yaml
│   │   ├── README.md
│   │   ├── charts
│   │   │   ├── eck-agent
│   │   │   │   ├── Chart.yaml
│   │   │   │   ├── LICENSE
│   │   │   │   ├── examples
│   │   │   │   │   ├── fleet-agents.yaml
│   │   │   │   │   └── system-integration.yaml
│   │   │   │   ├── templates
│   │   │   │   │   ├── NOTES.txt
│   │   │   │   │   ├── _helpers.tpl
│   │   │   │   │   ├── cluster-role-binding.yaml
│   │   │   │   │   ├── cluster-role.yaml
│   │   │   │   │   ├── elastic-agent.yaml
│   │   │   │   │   ├── service-account.yaml
│   │   │   │   │   └── tests
│   │   │   │   │       ├── elastic-agent-cluster-role-binding_test.yaml
│   │   │   │   │       ├── elastic-agent-cluster-role_test.yaml
│   │   │   │   │       ├── elastic-agent-service-account_test.yaml
│   │   │   │   │       └── elastic-agent_test.yaml
│   │   │   │   └── values.yaml
│   │   │   ├── eck-beats
│   │   │   │   ├── Chart.yaml
│   │   │   │   ├── LICENSE
│   │   │   │   ├── examples
│   │   │   │   │   ├── auditbeat_hosts.yaml
│   │   │   │   │   ├── filebeat_no_autodiscover.yaml
│   │   │   │   │   ├── heartbeat_es_kb_health.yaml
│   │   │   │   │   ├── metricbeat_hosts.yaml
│   │   │   │   │   └── packetbeat_dns_http.yaml
│   │   │   │   ├── templates
│   │   │   │   │   ├── NOTES.txt
│   │   │   │   │   ├── _helpers.tpl
│   │   │   │   │   ├── beats.yaml
│   │   │   │   │   ├── cluster-role-binding.yaml
│   │   │   │   │   ├── cluster-role.yaml
│   │   │   │   │   ├── service-account.yaml
│   │   │   │   │   └── tests
│   │   │   │   │       ├── beats-auditbeat-example_test.yaml
│   │   │   │   │       ├── beats-filebeat-example_test.yaml
│   │   │   │   │       ├── beats-heartbeat-example_test.yaml
│   │   │   │   │       ├── beats-metricbeat-example_test.yaml
│   │   │   │   │       ├── beats-packetbeat-example_test.yaml
│   │   │   │   │       └── beats_test.yaml
│   │   │   │   └── values.yaml
│   │   │   ├── eck-elasticsearch
│   │   │   │   ├── Chart.yaml
│   │   │   │   ├── LICENSE
│   │   │   │   ├── examples
│   │   │   │   │   └── hot-warm-cold.yaml
│   │   │   │   ├── templates
│   │   │   │   │   ├── NOTES.txt
│   │   │   │   │   ├── _helpers.tpl
│   │   │   │   │   ├── elasticsearch.yaml
│   │   │   │   │   └── tests
│   │   │   │   │       └── elasticsearch_test.yaml
│   │   │   │   └── values.yaml
│   │   │   ├── eck-fleet-server
│   │   │   │   ├── Chart.yaml
│   │   │   │   ├── LICENSE
│   │   │   │   ├── templates
│   │   │   │   │   ├── NOTES.txt
│   │   │   │   │   ├── _helpers.tpl
│   │   │   │   │   ├── cluster-role-binding.yaml
│   │   │   │   │   ├── cluster-role.yaml
│   │   │   │   │   ├── fleet-server.yaml
│   │   │   │   │   ├── service-account.yaml
│   │   │   │   │   └── tests
│   │   │   │   │       ├── fleet-server-cluster-role-binding_test.yaml
│   │   │   │   │       ├── fleet-server-cluster-role_test.yaml
│   │   │   │   │       ├── fleet-server-service-account_test.yaml
│   │   │   │   │       └── fleet-server_test.yaml
│   │   │   │   └── values.yaml
│   │   │   ├── eck-kibana
│   │   │   │   ├── Chart.yaml
│   │   │   │   ├── LICENSE
│   │   │   │   ├── examples
│   │   │   │   │   └── http-configuration.yaml
│   │   │   │   ├── templates
│   │   │   │   │   ├── NOTES.txt
│   │   │   │   │   ├── _helpers.tpl
│   │   │   │   │   ├── kibana.yaml
│   │   │   │   │   └── tests
│   │   │   │   │       └── kibana_test.yaml
│   │   │   │   └── values.yaml
│   │   │   └── eck-logstash
│   │   │       ├── Chart.yaml
│   │   │       ├── LICENSE
│   │   │       ├── examples
│   │   │       │   ├── basic-eck.yaml
│   │   │       │   ├── es-role.yaml
│   │   │       │   ├── monitored.yaml
│   │   │       │   ├── multi.yaml
│   │   │       │   └── volumes.yaml
│   │   │       ├── templates
│   │   │       │   ├── NOTES.txt
│   │   │       │   ├── _helpers.tpl
│   │   │       │   ├── logstash.yaml
│   │   │       │   └── tests
│   │   │       │       └── logstash_test.yaml
│   │   │       └── values.yaml
│   │   ├── elastic-agent-managed-kubernetes.yml
│   │   ├── examples
│   │   │   ├── agent
│   │   │   │   └── fleet-agents.yaml
│   │   │   ├── beats
│   │   │   │   └── metricbeat_hosts.yaml
│   │   │   ├── custom-elasticsearch-kibana.yaml
│   │   │   ├── elasticsearch
│   │   │   │   └── hot-warm-cold.yaml
│   │   │   ├── kibana
│   │   │   │   └── http-configuration.yaml
│   │   │   └── logstash
│   │   │       └── basic-eck.yaml
│   │   ├── templates
│   │   │   ├── NOTES.txt
│   │   │   ├── _helpers.tpl
│   │   │   └── tests
│   │   │       ├── beats_test.yaml
│   │   │       ├── elastic-agent_test.yaml
│   │   │       ├── elasticsearch_test.yaml
│   │   │       └── kibana_test.yaml
│   │   └── values.yaml
│   └── helm-migrate.sh
├── grafana
│   ├── chart
│   │   ├── Chart.yaml
│   │   ├── README.md
│   │   ├── ci
│   │   │   ├── default-values.yaml
│   │   │   ├── with-affinity-values.yaml
│   │   │   ├── with-dashboard-json-values.yaml
│   │   │   ├── with-dashboard-values.yaml
│   │   │   ├── with-extraconfigmapmounts-values.yaml
│   │   │   ├── with-image-renderer-values.yaml
│   │   │   └── with-persistence.yaml
│   │   ├── custom_values.yaml
│   │   ├── dashboards
│   │   │   └── custom-dashboard.json
│   │   ├── templates
│   │   │   ├── NOTES.txt
│   │   │   ├── _helpers.tpl
│   │   │   ├── _pod.tpl
│   │   │   ├── clusterrole.yaml
│   │   │   ├── clusterrolebinding.yaml
│   │   │   ├── configmap-dashboard-provider.yaml
│   │   │   ├── configmap.yaml
│   │   │   ├── dashboards-json-configmap.yaml
│   │   │   ├── deployment.yaml
│   │   │   ├── extra-manifests.yaml
│   │   │   ├── headless-service.yaml
│   │   │   ├── hpa.yaml
│   │   │   ├── image-renderer-deployment.yaml
│   │   │   ├── image-renderer-hpa.yaml
│   │   │   ├── image-renderer-network-policy.yaml
│   │   │   ├── image-renderer-service.yaml
│   │   │   ├── image-renderer-servicemonitor.yaml
│   │   │   ├── ingress.yaml
│   │   │   ├── networkpolicy.yaml
│   │   │   ├── poddisruptionbudget.yaml
│   │   │   ├── podsecuritypolicy.yaml
│   │   │   ├── pvc.yaml
│   │   │   ├── role.yaml
│   │   │   ├── rolebinding.yaml
│   │   │   ├── secret-env.yaml
│   │   │   ├── secret.yaml
│   │   │   ├── secret_provider_class.yaml
│   │   │   ├── service.yaml
│   │   │   ├── serviceaccount.yaml
│   │   │   ├── servicemonitor.yaml
│   │   │   ├── statefulset.yaml
│   │   │   └── tests
│   │   │       ├── test-configmap.yaml
│   │   │       ├── test-podsecuritypolicy.yaml
│   │   │       ├── test-role.yaml
│   │   │       ├── test-rolebinding.yaml
│   │   │       ├── test-serviceaccount.yaml
│   │   │       └── test.yaml
│   │   └── values.yaml
│   ├── prometheus
│   │   └── chart
│   │       ├── Chart.lock
│   │       ├── Chart.yaml
│   │       ├── README.md
│   │       ├── templates
│   │       │   ├── NOTES.txt
│   │       │   ├── _helpers.tpl
│   │       │   ├── clusterrole.yaml
│   │       │   ├── clusterrolebinding.yaml
│   │       │   ├── cm.yaml
│   │       │   ├── deploy.yaml
│   │       │   ├── extra-manifests.yaml
│   │       │   ├── headless-svc.yaml
│   │       │   ├── ingress.yaml
│   │       │   ├── network-policy.yaml
│   │       │   ├── pdb.yaml
│   │       │   ├── psp.yaml
│   │       │   ├── pvc.yaml
│   │       │   ├── rolebinding.yaml
│   │       │   ├── service.yaml
│   │       │   ├── serviceaccount.yaml
│   │       │   ├── sts.yaml
│   │       │   └── vpa.yaml
│   │       ├── values.schema.json
│   │       └── values.yaml
│   └── prometheus-node-exporter
│       └── chart
│           ├── Chart.yaml
│           ├── README.md
│           ├── ci
│           │   └── port-values.yaml
│           ├── templates
│           │   ├── NOTES.txt
│           │   ├── _helpers.tpl
│           │   ├── clusterrole.yaml
│           │   ├── clusterrolebinding.yaml
│           │   ├── daemonset.yaml
│           │   ├── endpoints.yaml
│           │   ├── extra-manifests.yaml
│           │   ├── networkpolicy.yaml
│           │   ├── podmonitor.yaml
│           │   ├── psp-clusterrole.yaml
│           │   ├── psp-clusterrolebinding.yaml
│           │   ├── psp.yaml
│           │   ├── rbac-configmap.yaml
│           │   ├── service.yaml
│           │   ├── serviceaccount.yaml
│           │   ├── servicemonitor.yaml
│           │   └── verticalpodautoscaler.yaml
│           └── values.yaml
├── hive-metastore
│   ├── Dockerfile
│   └── chart
│       ├── Chart.yaml
│       ├── README.md
│       ├── charts
│       │   └── postgresql
│       │       ├── Chart.lock
│       │       ├── Chart.yaml
│       │       ├── README.md
│       │       ├── charts
│       │       │   └── common
│       │       │       ├── Chart.yaml
│       │       │       ├── README.md
│       │       │       ├── templates
│       │       │       │   ├── _affinities.tpl
│       │       │       │   ├── _capabilities.tpl
│       │       │       │   ├── _errors.tpl
│       │       │       │   ├── _images.tpl
│       │       │       │   ├── _ingress.tpl
│       │       │       │   ├── _labels.tpl
│       │       │       │   ├── _names.tpl
│       │       │       │   ├── _secrets.tpl
│       │       │       │   ├── _storage.tpl
│       │       │       │   ├── _tplvalues.tpl
│       │       │       │   ├── _utils.tpl
│       │       │       │   ├── _warnings.tpl
│       │       │       │   └── validations
│       │       │       │       ├── _cassandra.tpl
│       │       │       │       ├── _mariadb.tpl
│       │       │       │       ├── _mongodb.tpl
│       │       │       │       ├── _mysql.tpl
│       │       │       │       ├── _postgresql.tpl
│       │       │       │       ├── _redis.tpl
│       │       │       │       └── _validations.tpl
│       │       │       └── values.yaml
│       │       ├── templates
│       │       │   ├── NOTES.txt
│       │       │   ├── _helpers.tpl
│       │       │   ├── backup
│       │       │   │   ├── cronjob.yaml
│       │       │   │   └── pvc.yaml
│       │       │   ├── extra-list.yaml
│       │       │   ├── networkpolicy-egress.yaml
│       │       │   ├── primary
│       │       │   │   ├── configmap.yaml
│       │       │   │   ├── extended-configmap.yaml
│       │       │   │   ├── initialization-configmap.yaml
│       │       │   │   ├── metrics-configmap.yaml
│       │       │   │   ├── metrics-svc.yaml
│       │       │   │   ├── networkpolicy.yaml
│       │       │   │   ├── servicemonitor.yaml
│       │       │   │   ├── statefulset.yaml
│       │       │   │   ├── svc-headless.yaml
│       │       │   │   └── svc.yaml
│       │       │   ├── prometheusrule.yaml
│       │       │   ├── psp.yaml
│       │       │   ├── read
│       │       │   │   ├── extended-configmap.yaml
│       │       │   │   ├── metrics-configmap.yaml
│       │       │   │   ├── metrics-svc.yaml
│       │       │   │   ├── networkpolicy.yaml
│       │       │   │   ├── servicemonitor.yaml
│       │       │   │   ├── statefulset.yaml
│       │       │   │   ├── svc-headless.yaml
│       │       │   │   └── svc.yaml
│       │       │   ├── role.yaml
│       │       │   ├── rolebinding.yaml
│       │       │   ├── secrets.yaml
│       │       │   ├── serviceaccount.yaml
│       │       │   └── tls-secrets.yaml
│       │       ├── values.schema.json
│       │       └── values.yaml
│       ├── files
│       │   ├── hive-schema-2.3.0.postgres.sql
│       │   ├── hive-txn-schema-2.3.0.postgres.sql
│       │   ├── upgrade-2.3.0-to-3.0.0.postgres.sql
│       │   └── upgrade-3.0.0-to-3.1.0.postgres.sql
│       ├── templates
│       │   ├── _helpers.tpl
│       │   ├── configmap.yaml
│       │   ├── csi_sa.yaml
│       │   ├── postgresql-init.yaml
│       │   ├── secret_provider_class.yaml
│       │   ├── statefulset.yaml
│       │   └── svc.yaml
│       └── values.yaml
├── jupyterhub
│   ├── Chart.yaml
│   ├── README.md
│   ├── files
│   │   └── hub
│   │       ├── jupyterhub_config.py
│   │       └── z2jh.py
│   ├── templates
│   │   ├── NOTES.txt
│   │   ├── _helpers-names.tpl
│   │   ├── _helpers-netpol.tpl
│   │   ├── _helpers.tpl
│   │   ├── hub
│   │   │   ├── _helpers-passwords.tpl
│   │   │   ├── configmap.yaml
│   │   │   ├── deployment.yaml
│   │   │   ├── netpol.yaml
│   │   │   ├── pdb.yaml
│   │   │   ├── pvc.yaml
│   │   │   ├── rbac.yaml
│   │   │   ├── secret.yaml
│   │   │   ├── service.yaml
│   │   │   └── serviceaccount.yaml
│   │   ├── image-pull-secret.yaml
│   │   ├── image-puller
│   │   │   ├── _helpers-daemonset.tpl
│   │   │   ├── daemonset-continuous.yaml
│   │   │   ├── daemonset-hook.yaml
│   │   │   ├── job.yaml
│   │   │   ├── priorityclass.yaml
│   │   │   ├── rbac.yaml
│   │   │   └── serviceaccount.yaml
│   │   ├── ingress.yaml
│   │   ├── proxy
│   │   │   ├── autohttps
│   │   │   │   ├── _README.txt
│   │   │   │   ├── _configmap-dynamic.yaml
│   │   │   │   ├── _configmap-traefik.yaml
│   │   │   │   ├── configmap.yaml
│   │   │   │   ├── deployment.yaml
│   │   │   │   ├── netpol.yaml
│   │   │   │   ├── pdb.yaml
│   │   │   │   ├── rbac.yaml
│   │   │   │   ├── service.yaml
│   │   │   │   └── serviceaccount.yaml
│   │   │   ├── deployment.yaml
│   │   │   ├── netpol.yaml
│   │   │   ├── pdb.yaml
│   │   │   ├── secret.yaml
│   │   │   └── service.yaml
│   │   ├── scheduling
│   │   │   ├── _scheduling-helpers.tpl
│   │   │   ├── priorityclass.yaml
│   │   │   ├── user-placeholder
│   │   │   │   ├── pdb.yaml
│   │   │   │   ├── priorityclass.yaml
│   │   │   │   └── statefulset.yaml
│   │   │   └── user-scheduler
│   │   │       ├── configmap.yaml
│   │   │       ├── deployment.yaml
│   │   │       ├── pdb.yaml
│   │   │       ├── rbac.yaml
│   │   │       └── serviceaccount.yaml
│   │   └── singleuser
│   │       ├── netpol.yaml
│   │       └── secret.yaml
│   ├── values.schema.yaml
│   └── values.yaml
├── kyuubi
│   ├── chart
│   │   ├── Chart.yaml
│   │   ├── templates
│   │   │   ├── NOTES.txt
│   │   │   ├── _helpers.tpl
│   │   │   ├── kyuubi-configmap.yaml
│   │   │   ├── kyuubi-deployment.yaml
│   │   │   ├── kyuubi-ranger-configmap.yaml
│   │   │   ├── kyuubi-role.yaml
│   │   │   ├── kyuubi-rolebinding.yaml
│   │   │   ├── kyuubi-service.yaml
│   │   │   └── kyuubi-serviceaccount.yaml
│   │   └── values.yaml
│   └── docker
│       └── Dockerfile
├── neo4j
│   └── chart
│       ├── Chart.yaml
│       ├── neo4j-community.conf
│       ├── neo4j-enterprise.conf
│       ├── server-logs.xml
│       ├── templates
│       │   ├── NOTES.txt
│       │   ├── _apocCredentials.tpl
│       │   ├── _helpers.tpl
│       │   ├── _image.tpl
│       │   ├── _imagePullSecret.tpl
│       │   ├── _labels.tpl
│       │   ├── _ldap.tpl
│       │   ├── _licensing.tpl
│       │   ├── _loadbalancer.tpl
│       │   ├── _ssl.tpl
│       │   ├── _volumeTemplate.tpl
│       │   ├── delete-loadbalancer-hook.yaml
│       │   ├── neo4j-auth.yaml
│       │   ├── neo4j-config.yaml
│       │   ├── neo4j-env.yaml
│       │   ├── neo4j-imagePullSecret.yaml
│       │   ├── neo4j-loadbalancer.yaml
│       │   ├── neo4j-pdb.yaml
│       │   ├── neo4j-service-account.yaml
│       │   ├── neo4j-servicemonitor.yaml
│       │   ├── neo4j-statefulset.yaml
│       │   └── neo4j-svc.yaml
│       ├── user-logs.xml
│       └── values.yaml
├── nifi
│   └── chart
│       ├── Chart.yaml
│       ├── charts
│       │   └── ca
│       │       ├── Chart.yaml
│       │       ├── templates
│       │       │   ├── NOTES.txt
│       │       │   ├── _helpers.tpl
│       │       │   ├── deployment.yaml
│       │       │   ├── scc.yaml
│       │       │   ├── service.yaml
│       │       │   ├── serviceaccount.yaml
│       │       │   └── volume.yaml
│       │       └── values.yaml
│       ├── configs
│       │   ├── authorizers.xml
│       │   ├── bootstrap-notification-services.xml
│       │   ├── bootstrap.conf
│       │   ├── flow.xml
│       │   ├── login-identity-providers-ldap.xml
│       │   ├── nifi.properties
│       │   ├── state-management.xml
│       │   └── zookeeper.properties
│       ├── custom_values.yaml
│       ├── templates
│       │   ├── NOTES.txt
│       │   ├── _helpers.tpl
│       │   ├── cert-manager.yaml
│       │   ├── configmap.yaml
│       │   ├── ingress.yaml
│       │   ├── route.yaml
│       │   ├── scc.yaml
│       │   ├── service.yaml
│       │   ├── serviceaccount.yaml
│       │   ├── servicemonitor.yaml
│       │   ├── statefulset.yaml
│       │   └── storageclass.yaml
│       ├── tests
│       │   ├── 01-safetyValve-values.yaml
│       │   ├── 02-persistence-disabled-values.yaml
│       │   ├── 02-persistence-enabled-values.yaml
│       │   ├── 03-ldap
│       │   │   ├── deployment.yaml
│       │   │   ├── secret.yaml
│       │   │   └── service.yaml
│       │   ├── 03-ldap-values.yaml
│       │   ├── 04-oidc-keycloak-setup.bash
│       │   ├── 04-oidc-login-test.js
│       │   ├── 04-oidc-test-framework
│       │   │   ├── browserless-service.yaml
│       │   │   ├── browserless-statefulset.yaml
│       │   │   ├── keycloak-secret.yaml
│       │   │   ├── keycloak-service.yaml
│       │   │   ├── keycloak-statefulset.yaml
│       │   │   └── socks5.yaml
│       │   ├── 04-oidc-values.yaml
│       │   ├── 05-install-cert-manager.bash
│       │   ├── 05-secure-cluster-values.yaml
│       │   ├── 06-alpha.flow.xml
│       │   ├── 06-bravo.flow.xml
│       │   ├── 06-site-to-site.bash
│       │   ├── 07-increase-webhook-timeout.yaml
│       │   ├── 07-oidc-cluster-login-test.js
│       │   └── 07-oidc-cluster-values.yaml
│       └── values.yaml
├── openmetadata
│   ├── deps
│   │   └── chart
│   │       ├── Chart.lock
│   │       ├── Chart.yaml
│   │       ├── README.md
│   │       ├── custom_values.yaml
│   │       ├── files
│   │       │   └── pod_template.kubernetes-helm-yaml
│   │       ├── templates
│   │       │   ├── configmap-pod-template.yaml
│   │       │   └── secret_provider_class.yaml
│   │       └── values.yaml
│   └── openmetadata
│       └── chart
│           ├── Chart.yaml
│           ├── README.md
│           ├── custom_values.yaml
│           ├── templates
│           │   ├── NOTES.txt
│           │   ├── _deployment_helpers.tpl
│           │   ├── _helpers.tpl
│           │   ├── deployment.yaml
│           │   ├── ingress.yaml
│           │   ├── networkpolicy.yaml
│           │   ├── secret_provider_class.yaml
│           │   ├── secrets.yaml
│           │   ├── service.yaml
│           │   ├── serviceaccount.yaml
│           │   ├── servicemonitor.yaml
│           │   ├── tests
│           │   │   └── test-connection.yaml
│           │   └── validate-values.tpl
│           ├── values.schema.json
│           └── values.yaml
├── ranger
│   ├── Chart.yaml
│   ├── templates
│   │   ├── NOTES.txt
│   │   ├── _helpers.tpl
│   │   ├── configmap.yaml
│   │   ├── deployment.yaml
│   │   ├── hpa.yaml
│   │   ├── ingress.yaml
│   │   ├── service.yaml
│   │   ├── serviceaccount.yaml
│   │   └── tests
│   │       └── test-connection.yaml
│   └── values.yaml
├── secrets-store-csi-driver
│   └── chart
│       ├── Chart.yaml
│       ├── README.md
│       ├── crds
│       │   ├── secrets-store.csi.x-k8s.io_secretproviderclasses.yaml
│       │   └── secrets-store.csi.x-k8s.io_secretproviderclasspodstatuses.yaml
│       ├── custom_values.yaml
│       ├── templates
│       │   ├── NOTES.txt
│       │   ├── _helpers.tpl
│       │   ├── crds-upgrade-hook.yaml
│       │   ├── csidriver.yaml
│       │   ├── keep-crds-upgrade-hook.yaml
│       │   ├── podsecuritypolicy.yaml
│       │   ├── role-rotation.yaml
│       │   ├── role-rotation_binding.yaml
│       │   ├── role-secretproviderclasses-admin.yaml
│       │   ├── role-secretproviderclasses-viewer.yaml
│       │   ├── role-syncsecret.yaml
│       │   ├── role-syncsecret_binding.yaml
│       │   ├── role-tokenrequest.yaml
│       │   ├── role-tokenrequest_binding.yaml
│       │   ├── role.yaml
│       │   ├── role_binding.yaml
│       │   ├── secrets-store-csi-driver-windows.yaml
│       │   ├── secrets-store-csi-driver.yaml
│       │   └── serviceaccount.yaml
│       └── values.yaml
├── secrets-store-csi-driver-provider-aws
│   └── chart
│       ├── Chart.yaml
│       ├── templates
│       │   ├── _helpers.tpl
│       │   ├── daemonset.yaml
│       │   └── rbac.yaml
│       └── values.yaml
├── spark
│   ├── chart
│   │   ├── Chart.yaml
│   │   ├── README.md
│   │   ├── README.md.gotmpl
│   │   ├── ci
│   │   │   └── ci-values.yaml
│   │   ├── crds
│   │   │   ├── sparkoperator.k8s.io_scheduledsparkapplications.yaml
│   │   │   └── sparkoperator.k8s.io_sparkapplications.yaml
│   │   ├── custom
│   │   │   └── values.yaml
│   │   ├── custom_values.yaml
│   │   ├── templates
│   │   │   ├── _helpers.tpl
│   │   │   ├── deployment.yaml
│   │   │   ├── prometheus-podmonitor.yaml
│   │   │   ├── rbac.yaml
│   │   │   ├── serviceaccount.yaml
│   │   │   ├── spark-rbac.yaml
│   │   │   ├── spark-serviceaccount.yaml
│   │   │   ├── webhook-cleanup-job.yaml
│   │   │   ├── webhook-init-job.yaml
│   │   │   └── webhook-service.yaml
│   │   └── values.yaml
│   └── jupyterhub-spark
│       ├── Dockerfile
│       └── spark-defaults.conf
├── starrocks
│   ├── Chart.yaml
│   ├── README.md
│   ├── charts
│   │   ├── operator
│   │   │   ├── Chart.yaml
│   │   │   ├── README.md
│   │   │   ├── templates
│   │   │   │   ├── NOTES.txt
│   │   │   │   ├── _helpers.tpl
│   │   │   │   ├── clusterrole.yaml
│   │   │   │   ├── clusterrolebinding.yaml
│   │   │   │   ├── deployment.yaml
│   │   │   │   ├── leader-election-role-binding.yaml
│   │   │   │   ├── leader-election-role.yaml
│   │   │   │   └── service_account.yaml
│   │   │   └── values.yaml
│   │   └── starrocks
│   │       ├── Chart.yaml
│   │       ├── README.md
│   │       ├── templates
│   │       │   ├── NOTES.txt
│   │       │   ├── _helpers.tpl
│   │       │   ├── beconfigmap.yaml
│   │       │   ├── cnconfigmap.yaml
│   │       │   ├── configmaps.yaml
│   │       │   ├── feconfigmap.yaml
│   │       │   ├── ingress.yaml
│   │       │   ├── init-pwd
│   │       │   │   ├── configmap.yaml
│   │       │   │   └── job.yaml
│   │       │   ├── secrets.yaml
│   │       │   ├── servicemonitor.yaml
│   │       │   └── starrockscluster.yaml
│   │       └── values.yaml
│   ├── templates
│   │   └── NOTES.txt
│   └── values.yaml
├── trino
│   ├── Chart.yaml
│   ├── README.md
│   ├── ci
│   │   └── custom-values.yaml
│   ├── custom_values.yaml
│   ├── templates
│   │   ├── NOTES.txt
│   │   ├── _helpers.tpl
│   │   ├── autoscaler.yaml
│   │   ├── configmap-catalog.yaml
│   │   ├── configmap-coordinator.yaml
│   │   ├── configmap-worker.yaml
│   │   ├── deployment-coordinator.yaml
│   │   ├── deployment-worker.yaml
│   │   ├── ingress.yaml
│   │   ├── secret.yaml
│   │   ├── secret_provider_class.yaml
│   │   ├── service.yaml
│   │   └── serviceaccount.yaml
│   └── values.yaml
└── warehouse
    └── chart
        ├── Chart.yaml
        ├── templates
        │   └── git-sync.yaml
        └── values.yaml
