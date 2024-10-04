package org.erpmicroservices.authorization_server.models;

import jakarta.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.data.jpa.domain.AbstractPersistable;
import org.springframework.security.core.GrantedAuthority;

import java.util.UUID;

@EqualsAndHashCode(callSuper = true)
@Data
@Entity
public class Authority extends AbstractPersistable<UUID> implements GrantedAuthority {

    public String authority;

    private UUID userId;
}
