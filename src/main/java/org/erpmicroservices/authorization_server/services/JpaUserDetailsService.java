package org.erpmicroservices.authorization_server.services;

import org.erpmicroservices.authorization_server.repositories.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsPasswordService;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component
public class JpaUserDetailsService implements UserDetailsService, UserDetailsPasswordService {

    private final UserRepository userRepository;

    public JpaUserDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByUsername(username).orElseThrow(() -> new UsernameNotFoundException(username));
    }

    @Override
    public UserDetails updatePassword(UserDetails user, String newPassword) {
        return userRepository.findByUsername(user.getUsername()).map(u -> {
                    u.setPassword(newPassword);
                    return userRepository.save(u);
                })
                .orElseThrow(() -> new UsernameNotFoundException(user.getUsername()));
    }
}
