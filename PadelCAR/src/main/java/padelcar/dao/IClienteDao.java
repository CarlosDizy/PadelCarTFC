package padelcar.dao;

import java.util.List;

import padelcar.model.Cliente;


public interface IClienteDao {
	public List<Cliente> listAllClientes();

	public void saveOrUpdate(Cliente cliente);

	public Cliente findClienteById(int id);
	
	public Cliente findClienteByEmail(String email);
	
	public Cliente findClienteByPassword(String password);

	public void deleteCliente(int id);
}
