package ra.service;

import ra.model.Student;

import java.util.List;

public interface StudentService {
    List<Student> findAll();

    boolean create(Student student);

    boolean update(Student student);

    boolean delete(int studentId);

    Student findById(int studentId);
}
