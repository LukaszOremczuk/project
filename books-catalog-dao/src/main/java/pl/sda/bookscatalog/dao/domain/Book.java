package pl.sda.bookscatalog.dao.domain;

import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by jacek on 06.06.17.
 */

@Entity
@Table(name = "BOOK")
@Audited
public class Book implements Serializable {

    private static final long serialVersionUID = 6614039997592638512L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_BOOK")
    private Long idBook;

    @Version
    @Column(name = "LATEST_VERSION")
    private Long version;

    @NotEmpty
    @Column(name = "TITLE", nullable = false)
    private String title;

    @Column(name = "ORIGINAL_TITLE")
    private String originalTitle;

    @Column(name = "DESCRIPTION", length = 1000)
    private String description;

    @Column(name = "COVER", length = 500)
    private byte[] cover;

    @ManyToOne
    @JoinColumn(name = "ID_AUTHOR", nullable = false, foreignKey = @ForeignKey(name = "FK_BOOK_AUTHOR"))
    private Author author;

    @ManyToOne
    @JoinColumn(name = "ID_CATEGORY", nullable = false, foreignKey = @ForeignKey(name = "FK_BOOK_CATEGORY"))
    private Category category;

    public Book() {
    }

    public Book(String title, String originalTitle, String description, byte[] cover) {
        this.title = title;
        this.originalTitle = originalTitle;
        this.description = description;
        this.cover = cover;
    }

    public Long getIdBook() {
        return idBook;
    }

    public void setIdBook(Long idBook) {
        this.idBook = idBook;
    }

    public Long getVersion() {
        return version;
    }

    public void setVersion(Long version) {
        this.version = version;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOriginalTitle() {
        return originalTitle;
    }

    public void setOriginalTitle(String originalTitle) {
        this.originalTitle = originalTitle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public byte[] getCover() {
        return cover;
    }

    public void setCover(byte[] cover) {
        this.cover = cover;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

}
