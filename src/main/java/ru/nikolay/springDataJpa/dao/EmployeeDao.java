package ru.nikolay.springDataJpa.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.nikolay.springDataJpa.model.Employee;

import java.sql.Timestamp;
import java.util.List;


@Repository
public interface EmployeeDao extends JpaRepository<Employee, Long> {

    Employee findAllById(Long id);

    Employee findAllByFirstName(String firstName);

    Employee findByLastName(String lastName);

    Employee findByTimestamp(Timestamp timestamp);

    List<Employee> findByFirstNameContaining(String firstName);

    @Query(value = "select *from EMPLOYEE where FIRST_NAME=?1 AND LAST_NAME=?2", nativeQuery = true)
    Employee findByFirstNameAndLastName(String firstName, String lastName);

}
