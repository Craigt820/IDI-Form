package com.idi.demo.controller;

import java.util.List;

public interface SpecsDao {
    public List<Specs> getSpecs(int id);

    public void removeSpec(int spec_id);

    public Specs getSpecById(int id);

    public void setSpecs(int id, List<Specs> specs);

    public void updateSpecs(int id, List<Specs> specs);

}