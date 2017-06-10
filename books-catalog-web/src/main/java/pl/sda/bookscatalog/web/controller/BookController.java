package pl.sda.bookscatalog.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.sda.bookscatalog.dao.domain.Book;
import pl.sda.bookscatalog.service.book.command.BookCommandService;

import javax.validation.Valid;

/**
 * Created by jacek on 09.06.17.
 */

@Controller
public class BookController {

    private static final Logger LOGGER = LoggerFactory.getLogger(BookController.class);

    private final BookCommandService bookCommandService;

    @Autowired
    public BookController(BookCommandService bookCommandService) {
        this.bookCommandService = bookCommandService;
    }

    @RequestMapping(value = {"/", "/main"}, method = RequestMethod.GET)
    public String index(Model model) {
        LOGGER.debug("is executed!");
        model.addAttribute("listBooks", bookCommandService.findAll());
//        model.addAttribute("book", book);

        return "index";
    }

    @RequestMapping(value = "/book/save", method = RequestMethod.POST)
    public String saveBook(@Valid @ModelAttribute("book") Book book) {
        LOGGER.debug("is executed!");

        if (book.getIdBook() == null) {
            bookCommandService.create(book);
        } else {
            bookCommandService.update(book);
        }
        return "redirect:/main";
    }

    @RequestMapping(value = "/book/edit/{idBook")
    public String editBook(@PathVariable("idBook") Long idBook, Model model) {
        LOGGER.debug("is executed!");
        model.addAttribute("listBooks", bookCommandService.findAll());
        model.addAttribute("book", bookCommandService.findById(idBook));

        return "index";
    }

    @RequestMapping(value = "/book/delete/{idBook}")
    public String deleteBook(@PathVariable("idBook") Long idBook) {
        LOGGER.debug("is executed!");
        bookCommandService.delete(idBook);

        return "redirect:/main";
    }
}
