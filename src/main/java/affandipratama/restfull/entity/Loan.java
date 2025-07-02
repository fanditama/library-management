package affandipratama.restfull.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "loans")
public class Loan {
    @Id
    private String id;

    @Column(name = "loan_date")
    private Timestamp loanDate;

    @Column(name = "due_date")
    private Timestamp dueDate;

    @Column(name = "return_date")
    private Timestamp returnDate;

    private  String status;

    @OneToMany(mappedBy = "loan")
    private List<User> User;

    @OneToMany(mappedBy = "loan")
    private List<Book> Book;
}
