---
- name: Configure YUM repositories
  hosts: all
  become: yes

  tasks:

    - name: Create EX294_BASE repository
      yum_repository:
        name: EX294_BASE
        description: EX294 base software
        baseurl: http://content.example.com/rhel9.0/x86_64/dvd/BaseOS
        gpgcheck: yes
        gpgkey: http://content.example.com/rhel9.0/x86_64/dvd/RPM-GPG-KEY-redhat-release
        enabled: yes

    - name: Create EX294_STREAM repository
      yum_repository:
        name: EX294_STREAM
        description: EX294 stream software
        baseurl: http://content.example.com/rhel9.0/x86_64/dvd/AppStream
        gpgcheck: yes
        gpgkey: http://content.example.com/rhel9.0/x86_64/dvd/RPM-GPG-KEY-redhat-release
        enabled: yes