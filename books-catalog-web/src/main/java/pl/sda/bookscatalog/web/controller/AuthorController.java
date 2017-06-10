package pl.sda.bookscatalog.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.bookscatalog.service.author.command.AuthorCommandService;
import pl.sda.bookscatalog.service.book.command.BookCommandService;

/**
 * Created by jacek on 10.06.17.
 */

//@Controller
//public class AuthorController {
//
//    private static final Logger LOGGER = LoggerFactory.getLogger(BookController.class);
//
//    private final AuthorCommandService authorCommandService;
//
//    @Autowired
//    public AuthorController (AuthorCommandService authorCommandService) {
//        this.authorCommandService = authorCommandService;
//    }
//
////    @RequestMapping(value = {"/", "/authors"}, method = RequestMethod.GET)
//    public String index(Model model) {
//        LOGGER.debug("is executed!");
//        model.addAttribute("listAuthors", authorCommandService.findAll());
//        return "index";
//}
//
//}