package pl.sda.bookscatalog.service.book.dto;

/**
 * Created by jacek on 13.06.17.
 */
public class AddBookDTO {

    private String categoryName;
    private String authorFirstName;
    private String authorLastName;
    private String titleBook;
    private String originalTitleBook;
    private String descriptionBook;

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getAuthorFirstName() {
        return authorFirstName;
    }

    public void setAuthorFirstName(String authorFirstName) {
        this.authorFirstName = authorFirstName;
    }

    public String getAuthorLastName() {
        return authorLastName;
    }

    public void setAuthorLastName(String authorLastName) {
        this.authorLastName = authorLastName;
    }

    public String getTitleBook() {
        return titleBook;
    }

    public void setTitleBook(String titleBook) {
        this.titleBook = titleBook;
    }

    public String getOriginalTitleBook() {
        return originalTitleBook;
    }

    public void setOriginalTitleBook(String originalTitleBook) {
        this.originalTitleBook = originalTitleBook;
    }

    public String getDescriptionBook() {
        return descriptionBook;
    }

    public void setDescriptionBook(String descriptionBook) {
        this.descriptionBook = descriptionBook;
    }
}




