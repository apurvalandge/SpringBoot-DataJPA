package com.apurva.jpademo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.apurva.jpademo.entities.Account;
import com.apurva.jpademo.repositories.AccountRepository;

@Service
public class AccountServices {

	@Autowired
	private AccountRepository accRepo;
	
	
	
	public String addNewAccount (Account obj)
	{
		String status;
		try {
		accRepo.save(obj);
		return "success";
		}
		catch(Exception e)
		{
			status="failed";
		}
		return status;
	}
	
	public String deleteAccount (int accno)
	{
		String status="";
		Account obj=accRepo.findByAccno(accno);
		if(obj!=null)
		{
			System.out.println(obj.getAccnm());
			System.out.println(obj.getBalance());
			accRepo.delete(obj);
			status="success";
		}
		else
		{
			System.out.println("not found");
			status="failed";
		}
		return status;
	}
	
	public String depoAmount(int no, float amt)
	{
		Account obj=accRepo.findByAccno(no);
		String status;
		
		if(obj!=null)
		{
			System.out.println(obj.getBalance());
			obj.setBalance(obj.getBalance()+amt);
			System.out.println(obj.getBalance());
			accRepo.save(obj);
			status="success";
		}
	else {
		status="failed";
	}
		return status;
	
}
	public String drawAmount(Integer no, Float amt)
	{
		Account obj=accRepo.findByAccno(no);
		String status;
		
		if(obj!=null) {
			System.out.println(obj.getBalance());
			obj.setBalance(obj.getBalance()-amt);
			System.out.println(obj.getBalance());
			accRepo.save(obj);
			status="success";
		}
		else {
			status="failed";
		}
		return status;
	}
	
	public String transferAmount(int fromaccno , int toaccno, float amount)
	{
		Account sender = accRepo.findByAccno(fromaccno);
		Account reciver = accRepo.findByAccno(toaccno);
		String status="";
		
		if(sender==null) {
			status="sender account not found";
		}
		else if(reciver==null) {
			status="reciver account not found";
		}
		else if(sender.getBalance()<amount) {
			status="Insufficient Balance";
		}
		else {
			System.out.println(sender.getBalance());
			sender.setBalance(sender.getBalance()-amount);
			System.out.println(reciver.getBalance());
			reciver.setBalance(reciver.getBalance()+amount);
			accRepo.save(sender);
			accRepo.save(reciver);
			status="success";
		}
		return status;
				
	}
	public Account searchOnNumber(int accno) {
		return accRepo.findByAccno(accno);
	}

	
	
	public List<Account> getAllAccounts()
	{
		List<Account> list=accRepo.findAll();
		return list;
	
	}
}
