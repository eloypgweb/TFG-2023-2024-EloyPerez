package es.tienda.jpa;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.io.Serializable;
import java.math.BigDecimal;

@Entity
@Table(name = "shirts")
public class Shirt implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    private int id;

    private String team;
    private String player;
    private String conference;
    private BigDecimal price;
    private int stock;
    private String material;
    private String image_url;
    private String description;

    public Shirt() {
    }

    public Shirt(int id, String team, String player, String conference, BigDecimal price, int stock, String material, String image_url, String description) {
        this.id = id;
        this.team = team;
        this.player = player;
        this.conference = conference;
        this.price = price;
        this.stock = stock;
        this.material = material;
        this.image_url = image_url;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTeam() {
        return team;
    }

    public void setTeam(String team) {
        this.team = team;
    }

    public String getPlayer() {
        return player;
    }

    public void setPlayer(String player) {
        this.player = player;
    }

    public String getConference() {
        return conference;
    }

    public void setConference(String conference) {
        this.conference = conference;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
