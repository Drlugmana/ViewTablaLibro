

---
- name: Install packages on dev test prod
  hosts: dev,test,prod
  become: yes
‪+54 9 11 7605‑6905‬
  tasks:
    - name: Install php and mariadb
      dnf:
        name:
          - php
          - mariadb
        state: present

- name: Install Development Tools and update dev
  hosts: dev
  become: yes

  tasks:
    - name: Install Development Tools group
      dnf:
        name: "@Development Tools"
        state: present

    - name: Update all packages
      dnf:
        name: "*"
        state: latest
‪+593 95 927 4228‬