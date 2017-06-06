package pl.sda.bookscatalog.dao.repository;

import org.hibernate.envers.Audited;

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
    private Long idBook;

    private String title;

    private String originalTitle;

    private String description;

    private Blob cover;

    public Book(Long idBook, String title, String originalTitle, String description, Blob cover) {
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

    public Blob getCover() {
        return cover;
    }

    public void setCover(Blob cover) {
        this.cover = cover;
    }
}
