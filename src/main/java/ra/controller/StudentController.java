package ra.controller;

import ra.model.Student;
import ra.service.StudentService;
import ra.serviceImp.StudentServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentController", value = "/StudentController")
public class StudentController extends HttpServlet {
    private StudentService studentService;

    public StudentController() {
        studentService = new StudentServiceImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1. Lay thong tin action tu request
        String action = request.getParameter("action");
        if (action.equals("getAll")){
            getAllStudent(request,response);
        }

    }

    public void getAllStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //2-7. Lua chon service StudentService va nghiep vu la findAll
        List< Student> listStudent = studentService.findAll();
        //8. Lua chon view thich hop de hien thi du lieu tren browser
        //8.1. Chuyen du lieu listStudent sang trang students.jsp qua request
        request.setAttribute("listStudent",listStudent);
        //8.2. Forward toan bo du lieu va chuyen sang trang students.jsp
        request.getRequestDispatcher("views/students.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action.equals("create")){
            //Thuc hien them moi
            //Lay du lieu submit tu form va luu vao doi tuong newStudent
            Student newStudent = new Student();
            newStudent.setStudentName(request.getParameter("studentName"));
            newStudent.setAge(Integer.parseInt(request.getParameter("age")));
            newStudent.setStatus(Boolean.parseBoolean(request.getParameter("status")));
            //Goi service thuc hien them moi
            boolean result = studentService.create(newStudent);
            if (result){
                //Thêm mới thành công
                getAllStudent(request,response);
            }else{
                //Thêm mới thất bại
                request.getRequestDispatcher("views/error.jsp").forward(request,response);
            }
        }
    }
}
