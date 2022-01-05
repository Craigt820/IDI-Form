package com.idi.demo.beans;

import java.util.ArrayList;
import java.util.List;

public class SpecsList {
    
    private List<Specs> specsList;

    public SpecsList() {
        specsList = new ArrayList<>();
    }

    public SpecsList(List<Specs> specs) {
        this.specsList = specs;
    }

    public List<Specs> getSpecsList() {
        return specsList;
    }

    public void setSpecsList(List<Specs> specsList) {
        this.specsList = specsList;
    }
}
