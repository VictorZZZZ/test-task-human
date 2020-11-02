package com.zvv.testtask.repositories;

import com.zvv.testtask.entities.Human;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HumanRepository extends JpaRepository<Human,Integer> {
    Page<Human> findAll(Pageable pageable);
}
