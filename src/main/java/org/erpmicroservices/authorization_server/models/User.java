package org.erpmicroservices.authorization_server.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.data.jpa.domain.AbstractPersistable;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Set;
import java.util.UUID;

@EqualsAndHashCode(callSuper = true)
@Data
@Entity
@Table(name="user", schema="public")
public class User extends AbstractPersistable<UUID> implements UserDetails {

    @Builder
    public User(UUID id, Set<Authority> authorities, String password, String username, boolean accountNonExpired, boolean accountNonLocked, boolean credentialsNonExpired, String provider, String providerId, boolean enabled) {
        super.setId(id);
        this.authorities = authorities;
        this.password = password;
        this.username = username;
        this.accountNonExpired = accountNonExpired;
        this.accountNonLocked = accountNonLocked;
        this.credentialsNonExpired = credentialsNonExpired;
        this.provider = provider;
        this.providerId = providerId;
        this.enabled = enabled;
    }

    @OneToMany(mappedBy = "userId")
    private Set<Authority> authorities;

    private String password;

    @Column(unique = true)
    private String username;

    private boolean accountNonExpired;

    private boolean accountNonLocked;

    private boolean credentialsNonExpired;

    private String provider;

    private String providerId;

    private boolean enabled;


    public User() {

    }
}
