package com.idi.demo.controller;

//import jakarta.transaction.Transactional;
//import jakarta.validation.Valid;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import jakarta.transaction.Transactional;
//
//import jakarta.transaction.Transactional;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;

import com.oracle.wls.shaded.org.apache.bcel.generic.IF_ACMPEQ;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;
import javax.validation.Valid;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@org.springframework.stereotype.Controller
public class Controller {
    private List<Format> formats;
    private List<Mode> modes;
    private List<DPI> dpis;
    @Autowired
    private InvoiceDao invoiceDao;
    @Autowired
    private ProjectService projectService;
    @Autowired
    private GeneralDao generalDao;
    @Autowired
    private SpecsDao specsDao;
    @Autowired
    private FormatDao formatDao;
    @Autowired
    private ModeDao modeDao;
    @Autowired
    private DPIDao dpiDao;

    private EntityManager entityManager;

    @Autowired
    Controller(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    private int projinfo_id;

    @GetMapping("/showLogin")
    public String getLogin() {
        return "login";
    }

    @GetMapping("/logout")
    public String getLogout() {
        return "login";
    }

    @GetMapping("/")
    public String getHome(Model theModel) {
        List<ProjectInfo> projects = projectService.getProjects();
        theModel.addAttribute("projects", projects);
        return "myhome";
    }


    //Add an initbinder to convert trim input strings
    //Pre-process every String form data
    //Remove leading and trailing white space
    @InitBinder
    public void initBinder(WebDataBinder dataBinder, ServletRequestDataBinder binder) {
        StringTrimmerEditor stringEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringEditor);
        binder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
    }

    //Causes 'Command' Bean not found error otherwise?
    @ModelAttribute("command")
    public ProjectInfo defaultInstance() {
        ProjectInfo projInfo = new ProjectInfo();
        return projInfo;
    }


    @RequestMapping("/signOut")
    public String signOut() {

//		// log the input data
//		System.out.println("theStudent: " + theStudent.getFirstName()
//							+ " " + theStudent.getLastName());
//
        return "login";
    }

    @RequestMapping("/showHome")
    public String showHome(Model theModel) {
        List<ProjectInfo> projects = projectService.getProjects();
        theModel.addAttribute("projects", projects);
        return "myhome";
    }

    //New Form
    @RequestMapping("/showInfo")
    public String toInfo(Model theModel) {
        projinfo_id = 0;
        theModel.addAttribute("projectinfo", new ProjectInfo());
        return "projInfo";
    }

    //Existing Form
    @GetMapping("/showSelProj")
    public String fromInfo(Model theModel, @RequestParam("projId") int id) {
        projinfo_id = id;
        ProjectInfo projectinfo = projectService.getProjectById(id);
        theModel.addAttribute("projectinfo", projectinfo);
        return "projInfo";
    }

    @RequestMapping("/showProjSpecs")
    public String showSpecs(@Valid @ModelAttribute(value = "projectinfo") ProjectInfo projectInfo, BindingResult result, @RequestParam(value = "pManifest", required = false) MultipartFile[] files, Model theModel) {

        formats = formatDao.getFormat();
        modes = modeDao.getModes();
        dpis = dpiDao.getDPI();
        theModel.addAttribute("formats", formats.stream().map(Format::getName).collect(Collectors.toList()));
        theModel.addAttribute("modes", modes.stream().map(Mode::getName).collect(Collectors.toList()));
        theModel.addAttribute("dpis", dpis.stream().map(DPI::getName).collect(Collectors.toList()));
        theModel.addAttribute("proj_id", projinfo_id);

        Path root = Paths.get("uploads"); //Manifests
        theModel.addAttribute("files", files);
        if (files != null) {
            Arrays.stream(files).forEach(file -> {
                if (file != null && !file.isEmpty()) {
                    try {
                        Path projDir = Path.of(root + "\\" + projectInfo.getpName());
                        if (!projDir.toFile().exists()) {
                            Files.createDirectories(projDir);
                        }
                        System.out.println(file.getOriginalFilename());
                        Files.copy(file.getInputStream(), root.resolve(projectInfo.getpName() + "\\" + file.getOriginalFilename()));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            });
        }

        Session session = null;
        try {
            session = entityManager.unwrap(Session.class);
            if (projinfo_id == 0) {
                //Project Info doesn't exist
                projinfo_id = (Integer) session.save(projectInfo);
                theModel.addAttribute(projectInfo);
                theModel.addAttribute("specs", new SpecsList());
            } else {
                theModel.addAttribute("specs", new SpecsList(specsDao.getSpecs(projinfo_id)));
                //Update existing ProjectInfo
                ProjectInfo info = session.get(ProjectInfo.class, projinfo_id);
                info.setpName(projectInfo.getpName());
                info.setSampleDate(projectInfo.getSampleDate());
                info.setPpBlanks(projectInfo.getPpBlanks());
                info.setPpOCR(projectInfo.getPpOCR());
                info.setPpExtract(projectInfo.getPpExtract());
                info.setPpBookmark(projectInfo.getPpBookmark());
                info.setPpMeta(projectInfo.getPpMeta());
                info.setPpLtech(projectInfo.getPpLtech());
                info.setPpEmbed(projectInfo.getPpEmbed());
                info.setPrepArc(projectInfo.getPrepArc());
                info.setPprep(projectInfo.getPprep());
                info.setpShred(projectInfo.getpShred());
                info.setIndexReq(projectInfo.getIndexReq());
                info.setpDelCD(projectInfo.getpDelCD());
                info.setpDelFlash(projectInfo.getpDelFlash());
                info.setpDelHDD(projectInfo.getpDelHDD());
                info.setdDelFTP(projectInfo.getdDelFTP());
                info.setdDelDFIt(projectInfo.getdDelDFIt());
                info.setdDelWeb(projectInfo.getdDelWeb());
                info.setdDelCloud(projectInfo.getdDelCloud());
                info.setdDelDocubase(projectInfo.getdDelDocubase());
                info.setRetUPS(projectInfo.getRetUPS());
                info.setRetIDIVan(projectInfo.getRetIDIVan());
                info.setDelNotes(projectInfo.getDelNotes());
                session.update(info);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "projSpecs";

    }

    @Transactional
    @RequestMapping(value = "/showGeneral")
    public String showGeneral(ModelMap theModel, @ModelAttribute("specs") SpecsList specs, @RequestParam(value = "item", required = false) String[] name, @RequestParam(value = "dpi", required = false) String[] dpi, @RequestParam(value = "mode", required = false) String[] mode, @RequestParam(value = "format", required = false) String[] format) throws IOException {
        //save
        if (name != null) {
            List<Specs> specs_ = new ArrayList<>();
            for (int i = 0; i < name.length; i++) {
                Specs spec = new Specs();
                spec.setName(name[i]);
                int finalI = i;
                spec.setProj_id(projinfo_id);
                spec.setDpi_id(dpis.stream().filter(e -> e.getName().equals(dpi[finalI])).findAny().get());
                spec.setFormat_id(formats.stream().filter(e -> e.getName().equals(format[finalI])).findAny().get());
                spec.setMode_id(modes.stream().filter(e -> e.getName().equals(mode[finalI])).findAny().get());
                specs_.add(spec);
            }
            specsDao.setSpecs(projinfo_id, specs_);
            //update
        } else {
            List<Specs> specsList = specs.getSpecsList();
            for (Specs spec : specsList) {
                spec.setProj_id(projinfo_id);
                spec.setFormat_id(formats.stream().filter(e -> e.getName().equals(spec.getFormat_id().getName())).findAny().get());
                spec.setMode_id(modes.stream().filter(e -> e.getName().equals(spec.getMode_id().getName())).findAny().get());
                spec.setDpi_id(dpis.stream().filter(e -> e.getName().equals(spec.getDpi_id().getName())).findAny().get());
            }

            specsDao.updateSpecs(projinfo_id, specsList);
        }

        try {
            if (projinfo_id == 0) {
                //Project Info doesn't exist
                theModel.addAttribute("general", new General());
            } else {
                theModel.addAttribute("general", Optional.ofNullable(generalDao.getGeneral(projinfo_id)).orElse(new General()));
                //Invoices
                final List<Invoice> invoices = invoiceDao.getInvoices(projinfo_id);
                if (!invoices.isEmpty()) {
                    theModel.addAttribute("invoices", invoices);
//                    invoices.forEach(e -> {
//                        System.out.println(e.toString());
//                    });
                } else {
                    theModel.addAttribute("invoices", new ArrayList<Invoice>());
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "general";
    }


//		}
////		List<ObjectError> errors=bindingResult.getAllErrors();
////		errors.forEach(e->{
////			System.err.println(e.toString());
////		});
////		return "projInfo";
//    }
//		List<ObjectError> errors=bindingResult.getAllErrors();
//		errors.forEach(e->{
//			System.err.println(e.toString());
//		});
//		return "projInfo";

    //
    @Transactional
    @RequestMapping("/deleteProj")
    public String removeProject(@RequestParam("projId") int id) {
        projectService.removeProject(id);
        return "redirect:/showHome";
    }

    @Transactional
    @RequestMapping("/deleteSpec")
    public String removeSpec(@RequestParam("spec_id") int spec_id) {
        specsDao.removeSpec(spec_id);
        return "redirect:/showProjSpecs";
    }

    @Transactional
    @RequestMapping("/deleteInvoice")
    public String removeInvoice(@RequestParam("invoice_id") int invoice_id) {
        invoiceDao.removeInvoice(invoice_id);
        return "redirect:/showGeneral";
    }
//
////	@Transactional
////	public void queryTest() {
////		Session session = null;
////		    session= sessionFactory.getCurrentSession();
////		   List<General> generals= session.createQuery("FROM General").getResultList();
////		   generals.forEach(e->{System.out.println(e);});
////	}
//

    @Transactional
    @RequestMapping("/complete")
    public String completeForm(@Valid @ModelAttribute("general") General general, @ModelAttribute("invoices") ArrayList<Invoice> invoices, BindingResult result, @RequestParam(value = "item", required = false) String[] item, @RequestParam(value = "quantity", required = false) String[] quantity, @RequestParam(value = "cost", required = false) String[] cost, ModelMap theModel) {
        if (result.hasErrors()) {
            return "general";
        } else {
            general.setProj_id(projinfo_id);
            Session session = null;
            session = entityManager.unwrap(Session.class);
//            theModel.addAttribute("general", general);
            //Save the invoices
            if (item != null) {
                for (int i = 0; i < item.length; i++) {
                    Invoice invoice = new Invoice();
                    invoice.setItem(item[i]);
                    invoice.setCost(cost[i]);
                    invoice.setQuantity(quantity[i]);
                    invoice.setProj_id(projinfo_id);
                    general.getInvoices().add(invoice);
                }
                invoiceDao.setInvoices(projinfo_id,  general.getInvoices());
            }

            if (general.getInvoices() != null) {
                invoiceDao.setInvoices(projinfo_id, general.getInvoices());
                general.getInvoices().clear();
            }

            session.saveOrUpdate(general);

        }
//			if (bindingResult.hasErrors()) {
//				 return "general";
//			}
//
//		List<ObjectError> errors=bindingResult.getAllErrors();
//		errors.forEach(e->{
//			System.err.println(e.toString());
//		});
        return "redirect:/showHome";

    }

}