package com.example.demo.model;

import java.util.List;

import org.hibernate.annotations.Nationalized;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * BrandEntity
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Brand")
public class BrandEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer brandId;
    @Nationalized
    String brandName;

    @JsonIgnore
    @OneToMany(mappedBy = "brand")
    List<ProductEntity> product;
}
