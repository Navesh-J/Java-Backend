package org.navesh;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class Main {
    public static void main(String[] args){
        Student s1 = new Student();
        s1.setsName("Palak");
        s1.setRollno(10);
        s1.setsAge(19);  // updated age

        Student s2 = null;
        Student s3 = null;

//        Configuration cfg = new Configuration();
//        cfg.addAnnotatedClass(com.navesh.Student.class);
//        cfg.configure();
//        SessionFactory sf = cfg.buildSessionFactory();

        SessionFactory sf = new Configuration()
                .addAnnotatedClass(org.navesh.Student.class)
                .configure()
                .buildSessionFactory();

        Session session = sf.openSession();

        // fetch Data
        s2 = session.get(Student.class,10);
        System.out.println(s2);

        Transaction tr=session.beginTransaction();
        //update data
        session.merge(s1);

        //delete data
        s3 = session.get(Student.class,404);
        session.remove(s3);
        System.out.println("Deleted 404 roll number");

        tr.commit();

        s2 = session.get(Student.class,10);
        System.out.println("Updated Roll no 10");
        System.out.println(s2);

        session.close();
        sf.close();

    }
}
