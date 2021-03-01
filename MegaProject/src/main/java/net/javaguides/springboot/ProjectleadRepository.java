package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectleadRepository extends JpaRepository<ProjectLead, Integer> {

	ProjectLead findByEmailAndPassword(String email, String password);
	// ProjectLead findById(int id); 

}
