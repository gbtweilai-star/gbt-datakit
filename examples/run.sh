#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_datakit info
PYTHONPATH=src python -m gbt_datakit check --payload '{}'
PYTHONPATH=src python -m gbt_datakit run   --payload '{}'
