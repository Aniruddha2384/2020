package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;



public interface HrRepository extends JpaRepository<Hr,Integer>  {
	
	  Hr findByHremailAndHrpassword(String hremail,String hrpassword);
	  Hr findById(int ide);

	
}
