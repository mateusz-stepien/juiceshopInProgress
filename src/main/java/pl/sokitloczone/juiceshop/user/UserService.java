package pl.sokitloczone.juiceshop.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.sokitloczone.juiceshop.security.Role;
import pl.sokitloczone.juiceshop.security.RoleRepository;

import javax.transaction.Transactional;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
@Transactional
public class UserService {

    private final UserRepository userRepository;
    private RoleRepository roleRepository;
    private BCryptPasswordEncoder passwordEncoder;

    //@Autowired
    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder passwordEncoder){
        this.passwordEncoder = passwordEncoder;
        this.roleRepository = roleRepository;
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(1);
        Role userRole = roleRepository.findByName("ROLE_USER");
        user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        userRepository.save(user);
    }

    public List<User> findAllUsers(){

        return userRepository.findAll();
    }

    public User findUserById(Long id){

        return userRepository.findById(id).get();
    }

    public void deleteUser(User user){

        userRepository.delete(user);
    }

    public User findByUserName(String username){
        return userRepository.findByUsername(username);
    }


}
