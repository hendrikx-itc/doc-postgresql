postgresql:
  pkg:
    - installed
  service:
    - running

# Psycopg2 requires compilation, so it is easier to use the standard Ubuntu
# package
python-psycopg2:
  pkg:
    - installed

python-virtualenv:
  pkg:
    - installed

python-package:
  pip.installed:
    - editable: /vagrant/
    - requires:
      - pkg: python-psycopg2

vagrant:
  postgres_user.present:
    - login: True
    - superuser: True
    - require:
      - service: postgresql

create-database:
  cmd.wait:
    - name: '/vagrant/provision/salt/roots/salt/resources/create-database'
    - user: vagrant
    - require:
      - service: postgresql
