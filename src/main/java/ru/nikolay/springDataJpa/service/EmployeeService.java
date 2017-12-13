package ru.nikolay.springDataJpa.service;

import ru.nikolay.springDataJpa.model.Employee;

import java.util.List;

public interface EmployeeService {

    public List<Employee> listEmployee();

    public void addEmploee(Employee employee);

    public void updateEmployee(Employee employee);

    public void removeEmployee(Long id);

    public Employee getEmployeeById(Long id);

    public List<Employee> findEmployeeByFirstName(String firstName);


}
