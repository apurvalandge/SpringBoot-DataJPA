package com.apurva.jpademo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.apurva.jpademo.entities.Account;
import com.apurva.jpademo.services.AccountServices;



@Controller
public class AccountController {

	@Autowired
	private AccountServices accServ;
	
	@GetMapping("/")
	public String homepage()
	{
		return "index.jsp";
	}
	@PostMapping("/addacc")
	public String addAccount(Account obj, Model M)
	{
		String status=accServ.addNewAccount(obj);
		M.addAttribute("msg", "Account opening...");
		M.addAttribute("status",status);
		return "ActivityStatus.jsp";
	}
	
	@GetMapping("/close")
	public String close()
	{
		return "CloseAccount.html";
	}
	@PostMapping("/closeacc")
	public String closeAcc(int accno , Model M) {
		String status;
		status=accServ.deleteAccount(accno);
		M.addAttribute("msg", "Account closing...");
		M.addAttribute("status", status);
		return "ActivityStatus.jsp";
		
	}
	
	@GetMapping("/deposit")
	public String deposit() {
		return "DepositForm.html";
	}
	
	@PostMapping("/depoamt")
	public String depositAmount(int accno, float amount, Model M) {
		String status = accServ.depoAmount(accno, amount);
		M.addAttribute("msg" , "Deposit Amount...");
		M.addAttribute("status", status);
		return "ActivityStatus.jsp";
	}
	
	@GetMapping("/withdraw")
	public String withdraw()
	{
		return "WithdrawForm.html";
	}
	@PostMapping("/withdrawamt")
	public String withdrawAmount(@RequestParam Integer accno, @RequestParam Float amount, Model M) {
	    String status = accServ.drawAmount(accno, amount);
	    M.addAttribute("msg" , "Withdraw Amount...");
	    M.addAttribute("status", status);
	    return "ActivityStatus.jsp";
	}
	
	@GetMapping("/transfer")
	public String transfer() {
		return "TransferForm.html";
	}
	@PostMapping("/transferamt")
	public String transAmount(int fromaccno , int toaccno, float amount, Model M) {
		String status = accServ.transferAmount(fromaccno , toaccno,  amount);
		M.addAttribute("msg" , "Transfer Amount...");
		M.addAttribute("status", status);
		return "ActivityStatus.jsp";

	}
	
	
	@GetMapping("/search")
	public String search() {
		return "search.html";
	}
	
	@PostMapping("/searchno")
	public String searchNumber(@RequestParam int accno, Model M) {
		Account obj = accServ.searchOnNumber(accno);
		M.addAttribute("data", obj);
		return "SearchNumberResult.jsp";
	}

	
	@GetMapping("/report")
	public String showAccountReport(Model M) {
		List<Account> list=accServ.getAllAccounts();
		M.addAttribute("acclist",list);
		return "AccountsReport.jsp";
	}
	
}

