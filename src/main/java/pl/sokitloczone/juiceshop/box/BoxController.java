package pl.sokitloczone.juiceshop.box;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/admin/box")
public class BoxController {

    private BoxService boxService;

    @Autowired
    public BoxController(BoxService boxService){
        this.boxService = boxService;
    }

    @GetMapping
    public String findAllBoxes(Model model){
        model.addAttribute("boxes", boxService.findAllBoxes());
        return "boxes";
    }

    @GetMapping(path = "/update/{id}")
    public String updateBox(@PathVariable("id") Long id, Model model){
        model.addAttribute("box", boxService.findById(id));
        return "boxForm";
    }

    @PostMapping(path = "/save")
    public String saveBox(@ModelAttribute("box") Box box, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "boxForm";
        }
        boxService.saveBox(box);
        return "redirect:/admin/box";
    }

    @GetMapping(path = "/create")
    public String createBox(Model model){
        model.addAttribute("box", new Box());
        return "boxForm";
    }

    @GetMapping(path = "/delete/{id}")
    public String deleteBox(@ModelAttribute Box box){
        boxService.deleteBox(box);
        return "redirect:/admin/box";
    }
}
