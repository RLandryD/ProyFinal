/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import ControlAdmin.exceptions.NonexistentEntityException;
import ControlAdmin.exceptions.PreexistingEntityException;
import Modelo.Reportes;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author win 10
 */
public class ReportesJpaController implements Serializable {

    public ReportesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Reportes reportes) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(reportes);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findReportes(reportes.getMes()) != null) {
                throw new PreexistingEntityException("Reportes " + reportes + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Reportes reportes) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            reportes = em.merge(reportes);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = reportes.getMes();
                if (findReportes(id) == null) {
                    throw new NonexistentEntityException("The reportes with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Reportes reportes;
            try {
                reportes = em.getReference(Reportes.class, id);
                reportes.getMes();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The reportes with id " + id + " no longer exists.", enfe);
            }
            em.remove(reportes);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Reportes> findReportesEntities() {
        return findReportesEntities(true, -1, -1);
    }

    public List<Reportes> findReportesEntities(int maxResults, int firstResult) {
        return findReportesEntities(false, maxResults, firstResult);
    }

    private List<Reportes> findReportesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Reportes.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Reportes findReportes(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Reportes.class, id);
        } finally {
            em.close();
        }
    }

    public Reportes findReportes(String tit) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Reportes.class, tit);
        } finally {
            em.close();
        }
    }
    public int getReportesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Reportes> rt = cq.from(Reportes.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
