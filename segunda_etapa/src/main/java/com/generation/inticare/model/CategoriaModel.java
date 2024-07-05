package com.generation.inticare.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@Entity
@Table(name = "tb_categoria")
public class CategoriaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "O nome da categoria é obrigatório.")
    @Size(max = 250, message = "O texto deve conter até 250 caracteres.")
    private String nome;

    @NotBlank(message = "O gênero é obrigatório.")
    @Size(max = 100, message = "O texto deve conter até 100 caracteres.")
    private String genero;
}