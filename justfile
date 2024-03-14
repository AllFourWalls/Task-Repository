  #!/usr/bin/env bash
  set -euo pipefail

  machine="{{machine}}-{{type}}"
  build="config.system.build.{{type}}"

  case '{{type}}' in
    toplevel) machine="{{ machine }}" ;;
    container) build="config.microvm.declaredRunner" ;;
    vm) ;;
    *) echo "Unsupported type: '{{type}}'"; exit 1;;
  esac

  set -x

  {{ nix-build-link }} "{{result-dir}}/$machine" \
    "{{root-dir}}#nixosConfigurations.${machine}.${build}"
