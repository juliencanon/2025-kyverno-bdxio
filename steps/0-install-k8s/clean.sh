#!/bin/bash

echo "## Extinction des feux ##"
echo "-------------------------"
minikube stop -p kyverno-bdx-io
minikube delete -p kyverno-bdx-io
colima stop
helm repo remove kyverno
helm repo remove policy-reporter
echo "##    Vérifications    ##"
echo "-------------------------"
minikube profile list
colima status

