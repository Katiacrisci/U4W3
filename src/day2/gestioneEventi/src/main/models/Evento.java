package main.models;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDateTime;

@Entity
@Data
public class Evento {

    @Id
    @Column(name = "id_evento")
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "data_evento")
    private LocalDateTime dataEvento;
    @Column(name = "descrizione")
    private String descrizione;
    @Column(name = "tipo_evento")
    private String tipoEvento;
    @Column(name = "numero_partecipanti_max")
    private Integer numeroPartecipantiMax;
}
