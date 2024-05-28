package es.tienda.controladores;

import es.tienda.jpa.Shirt;
import es.tienda.repositorios.ShirtsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/tienda")
@CrossOrigin(origins = "*")
public class ShirtsController {
    @Autowired
    ShirtsRepository shirts;

    @CrossOrigin(origins = "*")
    @GetMapping("/todos")
    public List<Shirt> todos() {
        return shirts.findAllShirts();
    }
}
