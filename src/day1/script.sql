--Estrai tutti i clienti con nome Mario
SELECT * FROM test.clienti WHERE clienti.nome = 'Mario'

--Estrarre il nome e il cognome dei clienti nati nel 1982
SELECT nome, cognome FROM test.clienti WHERE data_nascita = 1982

-- Estrarre il numero delle fatture con iva al 20%
SELECT numero_fattura FROM test.fatture WHERE iva = '20'

--Estrarre i prodotti attivati nel 2017 e che sono in produzione oppure in commercio
