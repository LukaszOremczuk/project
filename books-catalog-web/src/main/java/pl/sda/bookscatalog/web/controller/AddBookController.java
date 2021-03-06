package pl.sda.bookscatalog.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.sda.bookscatalog.dao.domain.Book;
import pl.sda.bookscatalog.service.book.command.BookCommandService;
import pl.sda.bookscatalog.service.book.dto.AddBookDTO;

/**
 * Created by jacek on 12.06.17.
 */

@Controller
public class AddBookController {

    private static final Logger LOGGER = LoggerFactory.getLogger(BookController.class);

    private final BookCommandService bookCommandService;

    @Autowired
    public AddBookController(BookCommandService bookCommandService) {
        this.bookCommandService = bookCommandService;
    }

    @RequestMapping(value = "/addBook")
    public String addBook(Model model) {
        AddBookDTO book = new AddBookDTO();
        model.addAttribute("book", book);

        return "addBook";
    }

    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public String saveBook(@ModelAttribute ("book") AddBookDTO book) {
        bookCommandService.create(book);
        return "redirect:/books";
    }

}
