package padelcar.service;

import java.util.List;

import org.springframework.stereotype.Service;

import padelcar.model.Cliente;

@Service
public interface IClienteService {
	public List<Cliente> listAllClientes();

	public void saveOrUpdate(Cliente cliente);

	public Cliente findClienteById(int id);
	
	public Cliente findClienteByEmail(String email);
	
	public Cliente findClienteByPassword(String password);

	public void deleteCliente(int id);

}
