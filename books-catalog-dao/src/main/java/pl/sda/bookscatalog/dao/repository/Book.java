package pl.sda.bookscatalog.dao.repository;

import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Blob;

/**
 * Created by jacek on 06.06.17.
 */

@Entity
@Table(name = "BOOK")
@Audited
public class Book implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_BOOK")
    private Long idBook;

    @NotEmpty
    @Column(name = "TITLE", nullable = false)
    private String title;

    @Column(name = "ORIGINAL_TITLE")
    private String originalTitle;

    @Column(name = "DESCRIPTION", length = 1000)
    private String description;

    @Column(name = "COVER", length = 500)
    private byte[] cover;

    public Book(Long idBook, String title, String originalTitle, String description, byte[] cover) {
        this.idBook = idBook;
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
}
