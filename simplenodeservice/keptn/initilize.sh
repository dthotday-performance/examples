keptn create project keptn07project --shipyard=./shipyard_keptn07.yaml
keptn onboard service simplenode --project=keptn07project --chart=./charts

keptn add-resource --project=keptn07project --stage=staging --service=simplenode --resource=slo_empty.yaml --resourceUri=slo.yaml
keptn add-resource --project=keptn07project --stage=prod --service=simplenode --resource=slo_empty.yaml --resourceUri=slo.yaml

keptn add-resource --project=keptn07project --stage=dev --service=simplenode --resource=jmeter/basiccheck.jmx --resourceUri=jmeter/basiccheck.jmx
keptn add-resource --project=keptn07project --stage=dev --service=simplenode --resource=jmeter/load.jmx --resourceUri=jmeter/load.jmx
keptn add-resource --project=keptn07project --stage=dev --service=simplenode --resource=jmeter/jmeter.conf.yaml --resourceUri=jmeter/jmeter.conf.yaml

keptn add-resource --project=keptn07project --stage=staging --service=simplenode --resource=jmeter/basiccheck.jmx --resourceUri=jmeter/basiccheck.jmx
keptn add-resource --project=keptn07project --stage=staging --service=simplenode --resource=jmeter/load.jmx --resourceUri=jmeter/load.jmx
keptn add-resource --project=keptn07project --stage=staging --service=simplenode --resource=jmeter/jmeter.conf.yaml --resourceUri=jmeter/jmeter.conf.yaml

keptn add-resource --project=keptn07project --stage=prod --service=simplenode --resource=jmeter/basiccheck.jmx --resourceUri=jmeter/basiccheck.jmx
keptn add-resource --project=keptn07project --stage=prod --service=simplenode --resource=jmeter/load.jmx --resourceUri=jmeter/load.jmx
keptn add-resource --project=keptn07project --stage=prod --service=simplenode --resource=jmeter/jmeter.conf.yaml --resourceUri=jmeter/jmeter.conf.yaml

kubectl -n keptn07project-dev apply -f dev-ingress.yaml
kubectl -n keptn07project-staging apply -f staging-ingress.yaml
kubectl -n keptn07project-prod apply -f prod-ingress.yaml
