package net.javaguides.springboot;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RequestRepository extends JpaRepository<RequestFromPL, Integer> {

}
