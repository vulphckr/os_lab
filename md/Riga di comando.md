Quando eseguiamo un comando su *shell*, oltre al comando è possibile specificare degli **argomenti (o parametri)**, che possono cambiare il modo in cui il comando viene eseguito.

Gli argomenti sono **un insieme ordinato di caratteri separati da spazi** che vengono passati al programma non appena esso viene eseguito. Prendiamo come esempio:
```bash
chmod u+x /home/vulpi/ciao.txt
```
- L'intera stringa è la **riga di comando**.
- `chmod` è il **nome dell'eseguibile o del comando**, chiamato anche **argomento di indice 0**.
- `u+x` è l'argomento di indice 1.
- `/home/vulpi/ciao.txt` è l'argomento di indice 2.
- **Il numero di argomenti passato** è 2. Questo valore è noto al programma quando viene messo in esecuzione.
Un esempio nell'uso degli argomenti sta proprio nella *shell* `bash`: infatti, in base ad alcuni argomenti che possono essere passati, il comportamento della *shell* cambia:
- ***Shell non interattiva***: è una *shell* figlia che esegue script; essa viene lanciata specificando l'argomento `-c`
- ***Shell interattiva non di login***: è la *shell* utilizzata normalmente dall'utente quando deve operare; essa viene lanciata *non specificando argomenti*.
- ***Shell interattiva di login***: simile a quella non di login, ma all'avvio viene richiesto di eseguire il login tramite username e password; essa viene lanciata specificando l'argomento `-l` o `--login`.
Le ultime due *shell* si comportano in modo prettamente differente:
- La ***shell interattiva di login***, al suo avvio, cerca di eseguire (se esistono) i seguenti file:
	- `/etc/profile`
	- Uno tra `~/.bash_profile`, `~/.bash_login`, `~/.profile`
	- `~/.bashrc`
	e nel momento in cui termina esegue `~/.bash_logout`
- La ***shell interattiva non di login*** si limita ad eseguire solo il file `~/.bashrc`.
La *shell* non interattiva viene invece utilizzata solo per eseguire **script o programmi**; non esegue di base nessun file.

#### Parametri speciali
Esistono alcuni parametri speciali determinati da *metacaratteri*.
- **Metacarattere separatore `;`**: questo metacarattere riporta ***quando un comando finisce e ne inizia un altro***. 
  ```bash
	echo Ciao! ; cd /home/vulpi
	
	# Output: stampa Ciao! e imposta la directory attuale a /home/vulpi
	```
- **Metacaratteri di quoting `""`**: ciò che si trova all'interno di questi metacaratteri viene ***considerato come un unico argomento***. In modo analogo, ma con alcune differenze (che vedremo in seguito) si possono usare i singoli apici **`''`**.
```bash
echo "Ciao! ; cd /home/vulpi"

# Output: stampa Ciao! ; cd /home/vulpi
```
- **Metacarattere di escape per singolo carattere `\`**: porre `\` prima di un metacarattere singolo ne disabiliterà la sua funzionalità di metacarattere, rendendolo un carattere normale.
```bash
echo Ciao! \; cd /home/vulpi

# Output: stampa Ciao! ; cd /home/vulpi
```