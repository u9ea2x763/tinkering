#!/usr/bin/env bash
set -euo pipefail

ctx="$(kubectl config current-context 2>/dev/null || echo 'no-context')"
ns="$(kubectl config view --minify -o jsonpath='{.contexts[0].context.namespace}' 2>/dev/null || true)"

if [[ -z "$ns" ]]; then
  ns="default"
fi

echo "kube: $ctx ($ns)"
