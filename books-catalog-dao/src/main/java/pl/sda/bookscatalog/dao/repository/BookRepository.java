package pl.sda.bookscatalog.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.bookscatalog.dao.domain.Book;

import java.util.List;

/**
 * Created by jacek on 07.06.17.
 */

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

    List<Book>findAllByTitleIsContaining(String title);


}
