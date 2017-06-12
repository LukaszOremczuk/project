package pl.sda.bookscatalog.service.category.command;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.sda.bookscatalog.dao.domain.Category;
import pl.sda.bookscatalog.dao.repository.CategoryRepository;
import pl.sda.bookscatalog.service.category.exception.CategoryAlreadyExistsException;
import pl.sda.bookscatalog.service.category.exception.CategoryNotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by RENT on 2017-06-10.
 */

@Service
@Transactional
public class CategoryCommandService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CategoryCommandService.class);
    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryCommandService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public Long create(Category category) {

        categoryRepository.save(category);
        return category.getIdCategory();

    }

    public void update(Category category) {

        Category dbCategory = categoryRepository.findOne(category.getIdCategory());

        if (dbCategory == null) {
            LOGGER.debug("Category with id " + category.getIdCategory() + " not found");
            throw new CategoryNotFoundException();
        }

        dbCategory.setName(category.getName());

    }

    public void delete(Long IdCategory) {
        Category dbCategory = categoryRepository.findOne(IdCategory);
        if (dbCategory == null) {
            LOGGER.debug("Category with id " + IdCategory + " not found");
            throw new CategoryNotFoundException();
        }

        categoryRepository.delete(IdCategory);

    }

    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    public Category findById(Long IdCategory) {

        Category dbCategory = categoryRepository.findOne(IdCategory);
        if (dbCategory == null) {
            LOGGER.debug("Category with id " + IdCategory + " not found");
            throw new CategoryNotFoundException();
        }

        return dbCategory;
    }

//    public Category add (Long IdCategory) {
//
//        Category dbCategory = categoryRepository.findOne(IdCategory);
//
//        if (dbCategory.getIdCategory().equals(IdCategory)) {
//            LOGGER.debug("Category with id " + IdCategory + " already exists");
//            throw new CategoryAlreadyExistsException();
//        }
//
//
////        return categoryRepository.save(category);
//        // category.getName ??
//        return null;
//    }

}
