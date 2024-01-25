package main.dao;

import main.models.Evento;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class EventoDao {
    @PersistenceContext
    private EntityManager entityManager;

    public void save(Evento evento) {
        entityManager.getTransaction().begin();

        entityManager.persist(evento);
        entityManager.getTransaction().commit();
    }

    public Evento getById(Long eventoId) {
        Evento event = entityManager.find(Evento.class, eventoId);
        entityManager.detach(event);
        return event;
    }

    public void delete(Long eventoId) {
        entityManager.getTransaction().begin();
        entityManager.remove(entityManager.find(Evento.class, eventoId));
        entityManager.getTransaction().commit();
    }


}
