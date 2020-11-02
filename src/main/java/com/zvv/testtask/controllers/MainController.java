package com.zvv.testtask.controllers;

import com.zvv.testtask.entities.Human;
import com.zvv.testtask.services.HumanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.repository.query.Param;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class MainController {
    private static final int ELEMENTS_PER_PAGE = 20;
    private HumanService humanService;

    @Autowired
    public MainController(HumanService humanService) {
        this.humanService = humanService;
    }


    @GetMapping(value = {"", "/", "/index.html"})
    public String humanPage(@Param("page") Optional<Integer> page, Model model) {
        int currentPage = page.orElse(1);
        PageRequest pageRequest = PageRequest.of(currentPage - 1, ELEMENTS_PER_PAGE);
        Page<Human> humanPage = humanService.findPaginated(pageRequest);
        model.addAttribute("humanPage", humanPage);
        int totalPages = humanPage.getTotalPages();
        List<Integer> pageNumbers = new ArrayList<>();
        for (int i = 0; i < totalPages; i++) {
            pageNumbers.add(i + 1);
        }
        model.addAttribute("pageNumbers", pageNumbers);
        return "index";
    }

    @GetMapping(value = {"/lazy"})
    public String lazyPage(Model model) {
        PageRequest pageRequest = PageRequest.of(0, ELEMENTS_PER_PAGE);
        Page<Human> humanPage = humanService.findPaginated(pageRequest);
        model.addAttribute("humanPage", humanPage);
        return "lazy";
    }

    @GetMapping(value = {"/getHuman"}, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public List<Human> getPage(@Param("page") Optional<Integer> page) {
        int currentPage = page.orElse(1);
        PageRequest pageRequest = PageRequest.of(currentPage - 1, ELEMENTS_PER_PAGE);
        Page<Human> humanPage = humanService.findPaginated(pageRequest);
        return humanPage.getContent();
    }
}
