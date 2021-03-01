package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository  extends JpaRepository<Hire, Integer>
{

}