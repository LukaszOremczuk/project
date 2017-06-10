package pl.sda.bookscatalog.dao.domain;

import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by jacek on 07.06.17.
 */

@Entity
@Table(name = "AUTHOR")
@Audited
public class Author implements Serializable {

    private static final long serialVersionUID = 8862777681895149080L;

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "ID_AUTHOR")
    private Long idAuthor;

    @Version
    @Column(name = "LATEST_VERSION")
    private Long version;

    @NotEmpty
    @Column(name = "FIRST_NAME", nullable = false)
    private String firstName;

    @NotEmpty
    @Column(name = "LAST_NAME", nullable = false)
    private String lastName;

    @OneToMany(mappedBy = "AUTHOR", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Book> books;

    public Author() {
    }

    public Author(String firstName, String lastName) {
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public Long getIdAuthor() {
        return idAuthor;
    }

    public void setIdAuthor(Long idAuthor) {
        this.idAuthor = idAuthor;
    }

    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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
