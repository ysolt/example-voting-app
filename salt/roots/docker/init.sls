docker-repo:
  pkgrepo.managed:
    - name: dockerrepo
    - humanname: Docker Repository
    - baseurl: 'https://yum.dockerproject.org/repo/main/centos/$releasever/'
    - gpgcheck: 0
    - key_url: https://yum.dockerproject.org/gpg
  
docker-pkg:
  pkg.installed:
    - pkgs:
      - docker-engine: 1.12.3-1
      - python-docker-py
    - require:
      - pkgrepo: docker-repo

docker-service:
  service.running:
    - name: docker
    - require:
      - pkg: docker-pkg

