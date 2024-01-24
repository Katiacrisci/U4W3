--Estrai tutti i clienti con nome Mario
SELECT * FROM test.clienti WHERE clienti.nome = 'Mario'

--Estrarre il nome e il cognome dei clienti nati nel 1982
SELECT nome, cognome FROM test.clienti WHERE data_nascita = 1982

-- Estrarre il numero delle fatture con iva al 20%
SELECT numero_fattura FROM test.fatture WHERE iva = '20'

--Estrarre i prodotti attivati nel 2017 e che sono in produzione oppure in commercio
SELECT * FROM test.prodotti WHERE data_attivazione = 2017 and (in_produzione = true or in_commercio = true)

--Estrarre le fatture con importo inferiore a 1000 e i dati dei clienti ad esse collegate
SELECT * FROM fatture WHERE importo < 1000 JOIN clienti ON numero_cliente = numero_cliente

--Riportare l'elenco delle fatture(numero, importo, iva e data) con in aggiunta il nome del fornitore
SELECT numero_fattura, importo, iva, data_fattura FROM test.fatture JOIN test.fornitori USING(numero_fornitore)

--Considerando soltanto le fatture con iva al 20 per cento, estrarre il numero di fatture per ogni anno.
SELECT data_fattura AS anno FROM test.fatture WHERE iva='20' GROUP BY anno