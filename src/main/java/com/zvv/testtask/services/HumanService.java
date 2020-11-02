package com.zvv.testtask.services;

import com.zvv.testtask.entities.Human;
import com.zvv.testtask.repositories.HumanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class HumanService {
    private HumanRepository humanRepository;

    @Autowired
    public HumanService(HumanRepository humanRepository) {
        this.humanRepository = humanRepository;
    }

    public Page<Human> findPaginated(Pageable pageable) {
        Page<Human> humanPage = humanRepository.findAll(pageable);
        return humanPage;
    }
}
