package ra.repository;

import ra.model.Student;

import java.util.List;

public interface StudentRepository {
    List<Student> findAll();

    boolean create(Student student);

    boolean update(Student student);

    boolean delete(int studentId);

    Student findById(int studentId);
}
