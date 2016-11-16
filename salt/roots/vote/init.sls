include:
  - redis

vote-dependencies:
  pkg.installed:
    - pkgs:
      - python
      - python-pip

vote-install-pip-dependencies:
  cmd.run:
    - name: 'pip install -r requirements.txt'
    - cwd: /vagrant/vote
    - require: 
      - pkg: vote-dependencies

vote-service-file:
  file.managed:
     - name: /etc/systemd/system/vote.service
     - source: salt://vote/templates/vote.service

vote-redis-service-host:
  host.present:
    - name: redis
    - ip: 127.0.0.1

vote-service-enable:
  service.running:
    - name: vote
    - enable: True
    - require:
      - file: vote-service-file
      - host: vote-redis-service-host
