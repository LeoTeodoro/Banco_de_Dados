#SELECT SIMPLES

USE empresabd;
SELECT * FROM empregado WHERE Pnome = 'Joao';

# Junçao 
# Buscar o nome do empregado
# Juntamente com o nome do seu departamento

SELECT e.PNome, d.Dnome
FROM empregado AS e, departamento AS d
WHERE e.DNumero_Departamento = d.Dnumero;