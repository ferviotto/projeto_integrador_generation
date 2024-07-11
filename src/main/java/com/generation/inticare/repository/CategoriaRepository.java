package com.generation.inticare.repository;

import com.generation.inticare.model.CategoriaModel;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriaRepository extends JpaRepository<CategoriaModel, Long> {
	List <CategoriaModel> findAllByGeneroContainingIgnoreCase (@Param("genero")String genero);
	List <CategoriaModel> findAllByNomeCategoriaContainingIgnoreCase (@Param("nomeCategoria")String nomeCategoria);
}