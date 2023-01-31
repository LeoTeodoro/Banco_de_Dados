import DAO.EmpregadoDAO;
import Model.Empregado;

public class Main {

    public static void main(String[] args) {

        //Criando os funcionarios
        Empregado empregado1 = new Empregado("Joaquim", "000.000.000-00", 1);
        Empregado empregado2 = new Empregado("Alexandre", "111.111.111-11", 2);
        Empregado empregado3 = new Empregado("Leticia", "222.222.222-22", 2);
        Empregado empregado4 = new Empregado("Andre", "333.333.333-33", 0);
        Empregado empregado5 = new Empregado("Aline", "444.444.444-44", 2);
        Empregado empregado6 = new Empregado("Eduardo", "555.555.555-55", 3);
        Empregado empregado7 = new Empregado("Jessica", "666.666.666-66", 3);
        Empregado empregado8 = new Empregado("Bruce", "777.777.777-77", 0);
        Empregado empregado9 = new Empregado("Alexandre", "888.888.888-88", 0);

        EmpregadoDAO empregadoDAO = new EmpregadoDAO();

        //Inserindo os funcionários
        empregadoDAO.insertEmpregado(empregado1);
        empregadoDAO.insertEmpregado(empregado2);
        empregadoDAO.insertEmpregado(empregado3);
        empregadoDAO.insertEmpregado(empregado4);
        empregadoDAO.insertEmpregado(empregado5);
        empregadoDAO.insertEmpregado(empregado6);
        empregadoDAO.insertEmpregado(empregado7);
        empregadoDAO.insertEmpregado(empregado8);
        empregadoDAO.insertEmpregado(empregado9);

        //Trocando o projeto do funiocário de id 3 para o projeto 5
        empregadoDAO.updateProjetoEmpregado(3, 5);

        //Inserindo dois novos funcionarios para o projeto 5
        Empregado empregado10 = new Empregado("Douglas", "999.999.999-99", 5);
        Empregado empregado11 = new Empregado("Natalia", "100.000.000-00", 5);

        empregadoDAO.insertEmpregado(empregado10);
        empregadoDAO.insertEmpregado(empregado11);

        //Buscando todos os funcionarios mostrando todas as informaçoes da tabela
        empregadoDAO.selectEmpregado();

        //buscando todos os funcionarios do projeto 2
        empregadoDAO.selectEmpregadoProjeto(2);

        //Buscando os dados dos funcionarios que se chamam alexandre
        empregadoDAO.selectEmpregadoNome("Alexandre");

        //Deletar o funcionario de id 6
        empregadoDAO.deleteEmpregado(6);

    }
}
