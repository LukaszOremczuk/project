package pl.sda.bookscatalog.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.bookscatalog.dao.domain.Book;
import pl.sda.bookscatalog.service.author.command.AuthorCommandService;
import pl.sda.bookscatalog.service.book.command.BookCommandService;

import javax.validation.Valid;

/**
 * Created by jacek on 10.06.17.
 */

@Controller
public class MainController {

    private static final Logger LOGGER = LoggerFactory.getLogger(BookController.class);

    @RequestMapping(value = {"/", "/main"}, method = RequestMethod.GET)
    public String home(Model model) {
        return "redirect:/home";
    }
}