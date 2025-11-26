Il *file system* è l'organizzazione di un sistema di memorizzazione che permette di contenere **i file e le loro informazioni**.
Esso è formato da:
- Contenitori di dati, detti ***files***
- Contenitori di *files* dette ***directory***
In Windows le partizioni di un disco sono *logicamente separate* tramite lettere (C, D, ecc...), mentre su sistemi Unix vengono viste come *collegate tra loro*: in particolare tali partizioni vanno **montate** all'interno del file system affinché siano rese visualizzabili.

Il **percorso** di un file è la posizione del file all'interno del file system. La sintassi per definire i percorsi varia in base al sistema operativo usato:
- Su **Windows** si parte dalla partizione in cui si trova il file e si navigano le directory utilizzando dei *back-slash* (\\). Ad esempio, se un file `prova.c`  si trova nella partizione `C:`, il suo percorso potrebbe essere `C:\Windows\Users\vulpi\prova.c\`.
- Su sistemi Unix (come MacOS o Linux) si navigano le directory tramite *forward-slash* (/) a partire da una partizione principale detta ***root*** (`/`). Ad esempio se vogliamo trovare un file `prova.c`, il suo percorso potrebbe essere `/home/vulpi/Desktop/prova.c`.

Nei sistemi Unix, ogni utente che utilizza la macchina possiede uno spazio per salvare ed operare con i propri file; questo spazio è una particolare *directory* chiamata **user home directory**, disponibile al percorso `/home/nomeutente`. Affinché questa directory sia accessibile, l'utente deve accedervi tramite un **nome utente** (*username*) ed una **password**: questo processo prende il nome di ***login***.

Una volta effettuato l'accesso, il terminale seleziona una directory di *default* dove posizionarsi inizialmente: di base tale directory è la *home directory* dell'utente che ha effettuato il *login*. Durante il lavoro è possibile **spostare** la propria posizione logica da una directory ad un altro: tale processo si limita solo a **cambiare la posizione di lavoro attuale** e dunque non vengono effettuate copie di file. 

Per visualizzare la *directory* in cui ci si trova attualmente, si utilizza il comando **`pwd`**.
```bash
# Supponendo che mi trovi in /home/vulpi
pwd

# Output: /home/vulpi
```
Per cambiare la *directory* di lavoro, si utilizza invece il comando **`cd`**.
```bash
cd /home/vulpi/Desktop

# Risultato: la directory attuale si sposta a /home/vulpi/Desktop
```

Affinché il *file system* sia considerato tale da parte di sistemi Unix, è necessario che all'interno della *root directory* siano presenti delle cartelle di sistema (come ad esempio `boot`, `bin`, `etc`, `mnt`...).
