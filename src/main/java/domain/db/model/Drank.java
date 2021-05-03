package domain.db.model;

public class Drank {
    private String drankNaam, soort;
    double alcohol;

    public Drank() {
        this("placeholder","placeholder",0);
    }

    public Drank(String drankNaam,  String soort, double alcohol) {
        this.setDrankNaam(drankNaam);
        this.setSoort(soort);
        this.setAlcohol(alcohol);
    }

    public void setDrankNaam(String drankNaam) {
        if (drankNaam.trim().isEmpty()) throw new IllegalArgumentException("Naam van de drank kan niet leeg zijn.");
        this.drankNaam = drankNaam;
    }

    public void setSoort(String soort) {
        if (soort.trim().isEmpty()) throw new IllegalArgumentException("Soort kan niet leeg zijn");
        this.soort = soort;
    }

    public void setAlcohol(double alcohol) {
        if (alcohol < 0) throw new IllegalArgumentException("alcohol % kan niet onder 0 zijn");
        this.alcohol = alcohol;
    }

    public String getDrankNaam() {
        return drankNaam;
    }

    public String getSoort() {
        return soort;
    }

    public double getAlcohol(){
        return alcohol;
    }

}
