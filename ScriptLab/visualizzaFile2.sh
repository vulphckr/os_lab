 #!/bin/bash

for FILE in ./* ; do echo -e "File is ${FILE}\n`ls -dl ${FILE} || echo "ls produce errore"`" ; done
