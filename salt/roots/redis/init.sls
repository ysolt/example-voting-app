redis-pkg:
  pkg.installed:
    - name: redis
    - version: 3.2.5-1.el7.remi
    - pkg_verify: False

redis-service:
  service.enabled:
    - name: redis
    - require:
      - pkg: redis-pkg 
