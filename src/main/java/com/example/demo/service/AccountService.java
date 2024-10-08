package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import com.example.demo.model.AccountEntity;

/**
 * AccountService
 */
public interface AccountService {


    List<AccountEntity> findAll();
    Optional<AccountEntity> findById(String userName);
}