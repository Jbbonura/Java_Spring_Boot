package com.jamesbonura.springtravels.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jamesbonura.springtravels.models.Expense;
import com.jamesbonura.springtravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	
	@Autowired
	private ExpenseRepository expenseRepo;
	
	//create
	public Expense createExpense(Expense newExpense) {
		return expenseRepo.save(newExpense);
	}
	
	//get one
	public Expense getExpense(Long id) {
		return expenseRepo.findById(id).orElse(null);
	}
	
	//get all
	public List<Expense> allExpenses() {
		return expenseRepo.findAll();
	}
}
