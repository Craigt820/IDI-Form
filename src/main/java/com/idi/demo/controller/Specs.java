package com.idi.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;

@Entity
@Table(name = "form_specs")
public class Specs {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "proj_id")
    private int proj_id;
    @Column(name = "name", unique = true)
    private String name;
    @OneToOne
    @JoinColumn(name = "dpi_id")
    private DPI dpi_id;
    @OneToOne
    @JoinColumn(name = "format_id")
    private Format format_id;
    @OneToOne
    @JoinColumn(name = "mode_id")
    private Mode mode_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProj_id() {
        return proj_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setProj_id(int proj_id) {
        this.proj_id = proj_id;
    }

    public DPI getDpi_id() {
        return dpi_id;
    }

    public void setDpi_id(DPI dpi_id) {
        this.dpi_id = dpi_id;
    }

    public Format getFormat_id() {
        return format_id;
    }

    public void setFormat_id(Format format_id) {
        this.format_id = format_id;
    }

    public Mode getMode_id() {
        return mode_id;
    }

    public void setMode_id(Mode mode_id) {
        this.mode_id = mode_id;
    }


}
