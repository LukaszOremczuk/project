package pl.sda.bookscatalog.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.sda.bookscatalog.dao.domain.Category;
//import pl.sda.bookscatalog.dao.domain.Category;

/**
 * Created by RENT on 2017-06-07.
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
