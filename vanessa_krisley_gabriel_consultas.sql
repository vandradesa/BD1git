SELECT * FROM FUNCIONARIO WHERE dnr = 4 AND SALARIO < 40000;  /*Questao 1 */
 
SELECT * FROM FUNCIONARIO WHERE LOCATE('São Paulo',Endereco); /*Questao 2 */

SELECT Pnome, Unome, Endereco FROM funcionario INNER JOIN departamento on Dnr=Dnumero WHERE Dnome = 'Pesquisa'; /*Questao 3 */

SELECT DISTINCT salario FROM funcionario; /*Questao 4 */

SELECT * FROM projeto INNER JOIN departamento on Dnum=Dnumero WHERE Dnome='Pesquisa' ORDER BY projnome DESC; /*Questao 5 */

SELECT Dnome,cpf_gerente from departamento,localizacoes_dep WHERE departamento.dnumero=localizacoes_dep.Dnumero and locate('Santo André',localizacoes_dep.Dlocal) ;

SELECT  e.Pnome funcionario_pnome,e.Unome funcionario_unome,
	m.Pnome supervisor_pnome,m.Unome supervisor_unome
        FROM funcionario e 
        inner join funcionario m on (m.cpf=e.cpf_supervisor) or (m.cpf_supervisor='null' and e.cpf_supervisor='null')
        order by funcionario_pnome; /*Questao 7 */

SELECT Pnome FROM funcionario WHERE cpf = NULL; /*Questao 8 */

SELECT fcpf, COUNT(fcpf) FROM dependente GROUP BY fcpf; /*Questao 9 */

SELECT Pnome FROM funcionario inner join dependente on cpf=fcpf GROUP BY Pnome HAVING COUNT(Fcpf)>2; /*Questao 10 */

SELECT Dnumero,count(cpf) numfuncionarios,avg(salario) media FROM departamento inner join funcionario on Dnumero=Dnr group by Dnumero; /*Questao 11 */




