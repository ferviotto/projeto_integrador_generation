package com.generation.inticare.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

import java.util.List;

@Entity
@Table(name = "tb_categoria")
public class CategoriaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "O nome da categoria é obrigatorio!")
    @Size(max = 255, message = "O texto deve conter até 255 caracteres")
    private String nomeCategoria;

    @NotBlank(message = "O genero é obrigatorio!")
    @Size(max = 100, message = "O texto deve conter até 100 caracteres")
    private String genero;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "nomeProduto", cascade = CascadeType.REMOVE)
    @JsonIgnoreProperties("nomeProduto")
    private List<ProdutoModel> produtoModels;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNomeCategoria() {
		return nomeCategoria;
	}

	public void setNomeCategoria(String nomeCategoria) {
		this.nomeCategoria = nomeCategoria;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public List<ProdutoModel> getProdutoModels() {
		return produtoModels;
	}

	public void setProdutoModels(List<ProdutoModel> produtoModels) {
		this.produtoModels = produtoModels;
	}

    
}