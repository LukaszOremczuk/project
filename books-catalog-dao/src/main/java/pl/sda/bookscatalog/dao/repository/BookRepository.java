package pl.sda.bookscatalog.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.bookscatalog.dao.domain.Book;

/**
 * Created by jacek on 07.06.17.
 */

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
}
