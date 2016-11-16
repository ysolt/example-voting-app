redis-pkg:
  pkg.installed:
    - name: redis
    - pkg_verify: False

redis-service:
  service.enabled:
    - name: redis
    - require:
      - pkg: redis-pkg 
