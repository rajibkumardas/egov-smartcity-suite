package org.egov.tl.domain.repository;


import java.util.List;

import org.egov.tl.domain.entity.FeeType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository 
public interface FeeTypeRepository extends JpaRepository<FeeType,Long> {

public FeeType findByName(String name);

public FeeType findByCode(String code);

//public List<FeeType> findAllActive();
}