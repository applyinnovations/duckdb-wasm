#!/usr/bin/env bash

set -euo pipefail

PROJECT_ROOT="$(cd $(dirname "$BASH_SOURCE[0]") && cd .. && pwd)" &> /dev/null
cd ${PROJECT_ROOT}

${PROJECT_ROOT}/scripts/generate_tpch_tbl.sh 0.01
${PROJECT_ROOT}/scripts/generate_tpch_tbl.sh 0.1
${PROJECT_ROOT}/scripts/generate_tpch_tbl.sh 0.25
${PROJECT_ROOT}/scripts/generate_tpch_tbl.sh 0.5
${PROJECT_ROOT}/scripts/generate_tpch_tbl.sh 1
${PROJECT_ROOT}/scripts/generate_tpch_tbl.sh 10

yarn workspace @applyinnovations/benchmarks build

# yarn workspace @applyinnovations/benchmarks bench:system:sort:int
# yarn workspace @applyinnovations/benchmarks bench:system:sum:int
# yarn workspace @applyinnovations/benchmarks bench:system:sum:csv
# yarn workspace @applyinnovations/benchmarks bench:system:regex
# yarn workspace @applyinnovations/benchmarks bench:system:join:2
# yarn workspace @applyinnovations/benchmarks bench:system:join:3

# yarn workspace @applyinnovations/benchmarks bench:system:tpch:duckdb 0.01
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:sqljs 0.01
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:arquero 0.01
yarn workspace @applyinnovations/benchmarks bench:system:tpch:lovefield 0.01

# yarn workspace @applyinnovations/benchmarks bench:system:tpch:duckdb 0.1
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:sqljs 0.1
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:arquero 0.1
yarn workspace @applyinnovations/benchmarks bench:system:tpch:lovefield 0.1

# yarn workspace @applyinnovations/benchmarks bench:system:tpch:duckdb 0.25
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:sqljs 0.25
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:arquero 0.25
yarn workspace @applyinnovations/benchmarks bench:system:tpch:lovefield 0.25

# yarn workspace @applyinnovations/benchmarks bench:system:tpch:duckdb 0.5
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:sqljs 0.5
# yarn workspace @applyinnovations/benchmarks bench:system:tpch:arquero 0.5
yarn workspace @applyinnovations/benchmarks bench:system:tpch:lovefield 0.5
