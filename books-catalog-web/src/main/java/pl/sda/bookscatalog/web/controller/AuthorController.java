package pl.sda.bookscatalog.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.bookscatalog.dao.domain.Author;
import pl.sda.bookscatalog.service.author.command.AuthorCommandService;


/**
 * Created by RENT on 2017-06-09.
 */

@Controller
public class AuthorController {

    private static final Logger LOGGER = LoggerFactory.getLogger(AuthorController.class);

    private final AuthorCommandService authorCommandService;

    @Autowired
    public AuthorController (AuthorCommandService authorCommandService) {
        this.authorCommandService = authorCommandService;
    }


    @RequestMapping (value ="/author", method = RequestMethod.GET)
    public String showAllAuthors (Model model) {
    LOGGER.debug("is executed");
        model.addAttribute("authors", authorCommandService.findAll());

        return "author";
    }


}
