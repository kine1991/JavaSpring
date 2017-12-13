package ru.nikolay.springDataJpa.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.nikolay.springDataJpa.dao.EmployeeDao;
import ru.nikolay.springDataJpa.model.Employee;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Resource
    EmployeeDao employeeDao;


    @Transactional
    public List<Employee> listEmployee() {
        return employeeDao.findAll();
    }


    @Transactional
    public void addEmploee(Employee employee) {
        employee.setTimestamp(new java.sql.Timestamp(System.currentTimeMillis()));
        employeeDao.save(employee);

    }

    @Transactional
    public void updateEmployee(Employee employee) {
        employeeDao.saveAndFlush(employee);
    }


    @Transactional
    public void removeEmployee(Long id) {
        employeeDao.delete(id);
    }



    @Transactional
    public Employee getEmployeeById(Long id) {
        return employeeDao.findOne(id);
    }

    public List<Employee> findEmployeeByFirstName(String firstName) {
        return employeeDao.findByFirstNameContaining(firstName);
    }


}
