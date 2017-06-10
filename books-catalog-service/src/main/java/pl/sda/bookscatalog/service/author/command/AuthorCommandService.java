//package pl.sda.bookscatalog.service.author.command;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Sort;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
////import pl.sda.bookscatalog.dao.domain.Author;
////import pl.sda.bookscatalog.dao.repository.AuthorRepository;
//import pl.sda.bookscatalog.service.author.exception.AuthorNotFoundException;
//
//import java.util.List;
//
///**
// * Created by jacek on 08.06.17.
// */
//
////@Service
////@Transactional
////public class AuthorCommandService {
////    private static final Logger LOGGER = LoggerFactory.getLogger(AuthorCommandService.class);
////    private final AuthorRepository authorRepository;
////
////    @Autowired
////    public AuthorCommandService(AuthorRepository authorRepository) {
////        this.authorRepository = authorRepository;
////    }
////
////    public Long create(Author author) {
////        authorRepository.save(author);
////        return author.getIdAuthor();
////    }
////
////    public void update(Author author) {
////        Author dbAuthor = authorRepository.findOne(author.getIdAuthor());
////
////        if (dbAuthor == null) {
////            LOGGER.debug("Author with id " + author.getIdAuthor() + " not found");
////            throw new AuthorNotFoundException();
////        }
////
////        dbAuthor.setFirstName(author.getFirstName());
////        dbAuthor.setLastName(author.getLastName());
////    }
////
////    public void delete(Long idAuthor) {
////        Author dbAuthor = authorRepository.findOne(idAuthor);
////        if (dbAuthor == null) {
////            LOGGER.debug("Author with id " + idAuthor + "not found");
////            throw new AuthorNotFoundException();
////        }
////    }
////
////    public List<Author> findAll() {
////        return authorRepository .findAll(sortByLastNameAsc());
////    }
////
////    public Author findById(Long idAuthor) {
////        Author dbAuthor = authorRepository.findOne(idAuthor);
////        if (dbAuthor == null) {
////            LOGGER.debug("Author with id " + idAuthor + "not found");
////            throw new AuthorNotFoundException();
////        }
////        return dbAuthor;
////    }
////
////    private Sort sortByLastNameAsc() {
////        return new Sort(Sort.Direction.ASC, "lastName");
////    }
//
//}
