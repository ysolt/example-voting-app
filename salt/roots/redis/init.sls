include:
  - epel

redis-pkg:
  pkg.installed:
    - name: redis
    - pkg_verify: False

redis-service:
  service.running:
    - name: redis
    - enable: True
    - require:
      - pkg: redis-pkg 
