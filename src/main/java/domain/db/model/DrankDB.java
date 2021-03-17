package domain.db.model;

import java.util.ArrayList;

public class DrankDB {
    private ArrayList<Drank> drankList;

    public DrankDB() {
        drankList = new ArrayList<>();
    }

    public void addDrank(Drank drank) {
        if (drank == null) throw new IllegalArgumentException("Drank kan niet null zijn. ");
        drankList.add(drank);
    }

    public void removeDrank(String drankNaam) {
        boolean ok = false;

        for (int i = 0; i != drankList.size() && !ok; i++) {
            if (drankList.get(i).getDrankNaam().equalsIgnoreCase(drankNaam)) {
                ok = true;
                drankList.remove(drankList.get(i));
            }
        }

        if (!ok) throw new IllegalStateException("drankenlijst bevat deze drank niet.");
    }

    public Drank getStrongestDrank() {
        Drank strongestDrank = new Drank(0);

        for (Drank drank : drankList) {
            if (drank.getAlcohol() > strongestDrank.getAlcohol()) {
                strongestDrank = drank;
            }
        }

        return strongestDrank;
    }

    public Drank getDrank(String drankNaam) {
        for (Drank drank : drankList) {
            if (drank.getDrankNaam().equalsIgnoreCase(drankNaam))
                return drank;
        }

        return null;
    }

    public ArrayList<Drank> getDrankList() {
        return drankList;
    }

}
