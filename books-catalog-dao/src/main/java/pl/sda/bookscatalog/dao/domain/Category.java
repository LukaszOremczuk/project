package pl.sda.bookscatalog.dao.domain;

import org.hibernate.annotations.Generated;
import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by RENT on 2017-06-07.
 */

@Entity
@Table (name = "CATEGORY TABLE")
@Audited
public class Category implements Serializable {

    private static final long serialVersionUID = 2373831057803666348L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_CATEGORY")
    private Long idCategory;


    @NotEmpty
    @Column (name = "NAME")
    private String name;

    @OneToMany(mappedBy = "ID_CATEGORY")
    private Set<Book> books;

    public Category(String name, Set<Book> books) {
        this.name = name;
        this.books = books;
    }


    public Long getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(Long idCategory) {
        this.idCategory = idCategory;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }
}
