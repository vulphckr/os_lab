Le **espressioni condizionali** sono dei particolari comandi che restituiscono **0** se rappresentano **la verità** o un numero **diverso da 0** altrimenti. Tali espressioni vengono valutate quando vengono quotate tra **doppie parentesi quadre `[[ ... ]]`**.
Questi comandi sono ***espressioni particolari*** costruite ad hoc proprio per essere valutate come positive o negative - pertanto **non possono essere posti comandi all'interno delle parentesi quadre**.
Possiamo comporre le espressioni condizionali in vari modi:
- Si possono usare gli operatori logici NOT, AND e OR `!`, `&&`, `||` e le parentesi tonde `()` per determinare l'ordine di valutazione degli argomenti.
- Ciò che è quotato nelle parentesi quadre `[]` è soggetto a **variable expansion, arithmetic expansion** *solo tramite `$(())`*, **command substitution, process substitution e quote removal solo negli operandi**.
- Le altre espansioni sono *disabilitate*, così come i comandi non valutati tramite **command substitution** e le assegnazioni di variabili.
- La command substitution sostituisce output e stringhe **ma non operatori**.
- La valutazione aritmetica va sviluppata tramite **`$(())`**; usare `(())` verrà interpretata come ordine di operazioni. **Non è inoltre possibile valutare una singola valutazione aritmetica isolata**, va sempre comparata a qualcosa.
- Si usano sia valutazioni di tipo aritmetico (come ad esempio `-lt, -eq, -ne`...) ma anche confronti tra stringhe (`==`, `>=`...) e condizioni di file (`-d, -e, -f, -h`...)
La differenza sostanziale tra *espressioni condizionali e valutazioni aritmetiche* è che le prime valutano se ciò che è scritto è **vero o falso**, mentre il secondo si limita a restituire il valore che restituisce una lista di operazioni.

**Errori molto comuni nell'usare le espressioni condizionali sono:**
- Quotare quando non necessario
- Utilizzare gli operatori di stringa quando è necessario utilizzare quelli aritmetici
- Evitare command substitution intere.
Oltre alle doppie parentesi quadre esistono altri *due* modi per valutare operazioni aritmetiche:
- Singole parentesi quadre `[]`;
- Il comando `test`.
Con l'eccezione che con queste altre due metodologie si usano operatori logici diversi, non possono esservi parentesi tonde e non si può andare a capo.

Gli operatori logici hanno la seguente precedenza: `! -> && -> ||`. L'operatore `&&` ha duplice valenza:
- All'interno di espressioni condizionali, è un AND logico.
- All'esterno di espressioni condizionali, è concatenamento condizionale di comandi (se entrambi i comandi prima e dopo `&&` hanno exit status 0, viene eseguito il successivo)
