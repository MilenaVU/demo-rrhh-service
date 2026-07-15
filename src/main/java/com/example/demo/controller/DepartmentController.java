package com.example.demo.controller;

import com.example.demo.model.Department;
import com.example.demo.repository.DepartmentRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/departments")
public class DepartmentController {

    private final DepartmentRepository departmentRepository;

    public DepartmentController(DepartmentRepository departmentRepository) {
        this.departmentRepository = departmentRepository;
    }

    // GET: listar todos los departamentos
    @GetMapping
    public List<Department> getAllDepartments() {
        return departmentRepository.findAll();
    }

    // POST: crear un nuevo departamento
    @PostMapping
    public Department createDepartment(@RequestBody Department department) {
        return departmentRepository.save(department);
    }

    // GET: obtener un departamento por id
    @GetMapping("/{deptNo}")
    public Department getDepartmentById(@PathVariable String deptNo) {
        return departmentRepository.findById(deptNo)
                .orElseThrow(() -> new RuntimeException("Department not found"));
    }

    // PUT: actualizar un departamento existente
    @PutMapping("/{deptNo}")
    public Department updateDepartment(@PathVariable String deptNo,
                                       @RequestBody Department departmentDetails) {
        Department department = departmentRepository.findById(deptNo)
                .orElseThrow(() -> new RuntimeException("Department not found"));

        department.setDeptName(departmentDetails.getDeptName());
        department.setLocationId(departmentDetails.getLocationId());

        return departmentRepository.save(department);
    }

    // DELETE: eliminar un departamento
    @DeleteMapping("/{deptNo}")
    public void deleteDepartment(@PathVariable String deptNo) {
        departmentRepository.deleteById(deptNo);
    }
}
