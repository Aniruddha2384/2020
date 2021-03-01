package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectManagerRepository extends JpaRepository<ProjectManagerLogin, Integer>{
	
	ProjectManagerLogin findByMemailAndMpassword(String memail,String mpassword);
	ProjectManagerLogin findByMid(int mid);

}
