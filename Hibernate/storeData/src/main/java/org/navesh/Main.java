package org.navesh;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class Main {
    public static void main(String[] args){
        Student s1 = new Student();
        s1.setsName("Payal");
        s1.setRollno(404);
        s1.setsAge(22);

//        Configuration cfg = new Configuration();
//        cfg.addAnnotatedClass(com.navesh.Student.class);
//        cfg.configure();
//        SessionFactory sf = cfg.buildSessionFactory();

        SessionFactory sf = new Configuration()
                            .addAnnotatedClass(org.navesh.Student.class)
                            .configure()
                            .buildSessionFactory();

        Session session = sf.openSession();

        Transaction tr = session.beginTransaction();

//        session.save(s1); //deprecated
        session.persist(s1);
        tr.commit();

        session.close();
        sf.close();

        System.out.println(s1);
    }
}