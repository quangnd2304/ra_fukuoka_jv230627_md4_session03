package ra.serviceImp;

import ra.model.Student;
import ra.repository.StudentRepository;
import ra.repositoryImp.StudentRepositoryImp;
import ra.service.StudentService;

import java.util.List;

public class StudentServiceImp implements StudentService {
    //List<Student> list = new ArrayList<>();
    private StudentRepository studentRepository;

    public StudentServiceImp() {
        studentRepository = new StudentRepositoryImp();
    }

    @Override
    public List<Student> findAll() {
        return studentRepository.findAll();
    }

    @Override
    public boolean create(Student student) {
        return studentRepository.create(student);
    }

    @Override
    public boolean update(Student student) {
        return studentRepository.update(student);
    }

    @Override
    public boolean delete(int studentId) {
        return studentRepository.delete(studentId);
    }

    @Override
    public Student findById(int studentId) {
        return studentRepository.findById(studentId);
    }
}
