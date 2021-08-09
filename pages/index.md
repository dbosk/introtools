---
permalink: /
---
# An introduction to some tools useful for Computer Science

After this course you should be able to

  - obtain access to the computational environment on KTH Royal Institute of 
    Technology
  - control the computer environment via the command line
  - handle submissions of program code with version control tools
  - create and compile technical reports


## Table of contents

{% for module in site.data.navigation.modules %}
- [{{ module[1].title }}]({{ module[1].path | relative_url }}) {% if module[1].path == "/" %}(this page){% endif %}
{% endfor %}


## The missing semester

This course covers part of the ["Missing Semester"][missing-semester].

[missing-semester]: https://missing.csail.mit.edu/

