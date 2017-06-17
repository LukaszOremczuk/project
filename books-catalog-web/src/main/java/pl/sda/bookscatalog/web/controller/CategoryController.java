package pl.sda.bookscatalog.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.bookscatalog.service.category.command.CategoryCommandService;

/**
 * Created by jacek on 16.06.17.
 */

@Controller
public class CategoryController {
    private static final Logger LOGGER = LoggerFactory.getLogger(BookController.class);

    private final CategoryCommandService categoryCommandService;

    @Autowired
    public CategoryController(CategoryCommandService categoryCommandService) {
        this.categoryCommandService=categoryCommandService;
    }

    @RequestMapping(value = {"/categories"}, method = RequestMethod.GET)
    public String categories(Model model) {
        LOGGER.debug("is executed!");
        model.addAttribute("listCategories", categoryCommandService.findAll());
        return "categories";
    }
}
