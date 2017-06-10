package pl.sda.bookscatalog.dao.domain;

import org.hibernate.annotations.Generated;
import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.NotEmpty;

import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by RENT on 2017-06-07.
 */

@Entity
@Table (name = "CATEGORY")
@Audited
public class Category implements Serializable {

    private static final long serialVersionUID = 2373831057803666348L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_CATEGORY")
    private Long idCategory;

    @Version
    @Column(name = "LATEST_VERSION")
    private Long version;

    @NotEmpty
    @Column (name = "NAME", nullable = false)
    private String name;

    @OneToMany(mappedBy = "category")
    private Set<Book> books;

    public Category() {
    }

    public Category(String name) {
        this.name = name;
    }

    public Long getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(Long idCategory) {
        this.idCategory = idCategory;
    }

    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
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

    public void addBook(Book book) {
        if (this.books == null) {
            this.books = new HashSet<>(0);
        }
        books.add(book);
    }
}
