package pl.sda.bookscatalog.service.book.command;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.sda.bookscatalog.dao.domain.Book;
import pl.sda.bookscatalog.dao.repository.BookRepository;
import pl.sda.bookscatalog.service.book.exception.BookNotFoundException;

import java.util.List;

/**
 * Created by jacek on 07.06.17.
 */


@Service
@Transactional
public class BookCommandService {
    private static final Logger LOGGER = LoggerFactory.getLogger(BookCommandService.class);

    private final BookRepository bookRepository;

    @Autowired
    public BookCommandService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public Long create(Book book) {
        bookRepository.save(book);
        return book.getIdBook();
    }

    public void update(Book book) {
        Book dbBook = bookRepository.findOne(book.getIdBook());
        if (dbBook == null) {
            LOGGER.debug("Book with id " + book.getIdBook() + " not found");
            throw new BookNotFoundException();
        }
        dbBook.setTitle(book.getTitle());
        dbBook.setOriginalTitle(book.getOriginalTitle());
        dbBook.setDescription(book.getDescription());
        dbBook.setCover(book.getCover());
    }


    public void delete(Long idBook) {
        Book dbBook = bookRepository.findOne(idBook);
        if (dbBook == null) {
            LOGGER.debug("Book with id " + idBook + " not found");
            throw new BookNotFoundException();
        }
    }

    public List<Book> findAll() {
        return bookRepository.findAll(sortByIdAsc());
    }

    public Book findById(Long idBook) {
        Book dbBook = bookRepository.findOne(idBook);
        if (dbBook == null) {
            LOGGER.debug("Book with id " + idBook + " not found");
            throw new BookNotFoundException();
        }

        return dbBook;
    }

    private Sort sortByIdAsc() {
        return new Sort(Sort.Direction.ASC,"idBook");
    }
}
