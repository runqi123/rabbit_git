package com.rabbit.controller;

import com.rabbit.pojo.*;
import com.rabbit.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;


import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.*;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;




@Controller
@RequestMapping("to")
public class RealnameContorller {
    @Resource
    private RealnameService realnameService;

    @Resource
    private AreacodeService areacodeService;

    @Resource
    private OccupationService occupationService;

    @Resource
    private UserService userService;
    //文件上传
    @RequestMapping("addzys")
    public String  add(Model model){
        List<Occupation> occupationList=occupationService.occupationList();
        model.addAttribute("occupationList",occupationList);
        return  "Authentication";
    }
    @RequestMapping("addzy")
    public String  add(Realname realname,
                       Imgcon imgcon,
                       Imgcon imgcon1,
                       HttpServletRequest request,
                       @RequestParam(value = "attachs", required = false) MultipartFile[] attachs,
                       @RequestParam(value = "realName", required = false) String  realName,
                       @RequestParam(value = "realNameCard", required = false) String realNameCard
    ){
        String idPicPath = null;
        String workPicPath = null;
        String errorInfo = null;
        boolean flag = true;
        Integer createdId = ((Ruser) request.getSession().getAttribute(
                "ruser")).getRuserId();
        // 设置文件上传的路径绝对路径/
        String path = "D:"+File.separator+"Img";

        // 设置文件上传的路径
        //自动生成路径
/*        String path = request.getSession().getServletContext()
                .getRealPath("static" + File.separator + "uploadfiles");*/
        System.out.println("文件上传路径:" + path);
        for (int i = 0; i < attachs.length; i++) {
            MultipartFile attach = attachs[i];
            if (!attach.isEmpty()) {
                if (i == 0) {
                    errorInfo = "uploadFileError";
                } else if (i == 1) {
                    errorInfo = "uploadWpError";
                }
                // 获得源文件名称
                String oldFileName = attach.getOriginalFilename();
                // 获得文件后缀
                String suffix = FilenameUtils.getExtension(oldFileName);
                int fileSize = 5000000;
                System.out.println("文件大小: " + attach.getSize());
                if (attach.getSize() > fileSize) {
                    request.setAttribute("uploadFileError", "* 上传文件大小不得超过500KB");
                    flag = false;
                } else if (suffix.equalsIgnoreCase("jpg")
                        || suffix.equalsIgnoreCase("png")
                        || suffix.equalsIgnoreCase("jpeg")
                        || suffix.equalsIgnoreCase("jpeg")) {

                    String fileName = System.currentTimeMillis()
                            + RandomUtils.nextInt(1000000) + "_Personal"+"."+suffix;
                    System.out.println("进入问价夹创建name+"+fileName);
                    File targetFile = new File(path, fileName);
             /*       if (!targetFile.exists()) {
                    System.out.println("进入了创建文件夹");
                        targetFile.mkdirs();
                    }*/

                    try {
                        System.out.println("进入了创件夹");
                        attach.transferTo(targetFile);
                    } catch (Exception e) {
                        e.printStackTrace();
                        request.setAttribute("uploadFileError", "* 上传失败!");
                        flag = false;
                    }

                    if (i == 0) {
                        idPicPath = path + File.separator + fileName;
                        imgcon = new Imgcon();
                        imgcon.setImgAddress(idPicPath);
                        imgcon.setImgtype(0);
                        imgcon.setImgUserId(createdId);
                    } else if (i == 1) {
                        workPicPath = path + File.separator + fileName;
                        imgcon1 = new Imgcon();
                        imgcon1.setImgAddress(workPicPath);
                        imgcon1.setImgtype(1);
                        imgcon1.setImgUserId(createdId);
                    }

                } else {
                    request.setAttribute(errorInfo, "* 上传图片格式不正确");
                    flag = false;
                }
            }
        }

        List<Imgcon> list = new ArrayList<Imgcon>();
        list.add(imgcon);
        list.add(imgcon1);
        Boolean result = false;
        try {
            for (int i=0;i<list.size();i++){
                System.out.println("I"+i);
                realnameService.addImgcon(list.get(i));
            }
            int img1=realnameService.getr(createdId).getImgId();
            System.out.println("id"+img1);
            int img2=realnameService.gety(createdId).getImgId();
            System.out.println("id"+img2);
            realname.setRealName(realName);
            realname.setRealNameCard(realNameCard);
            realname.setOccupationImgid(0);
            realname.setCardImgid(img2);
            realname.setCardImgBackid(img1);
            String subcode=realNameCard.substring(0,6);
            String hometown=areacodeService.selectDesc(subcode);
            realname.setHometown(hometown);
            realname.setOccupationId(0);//给OccupationId默认值
            String sex=realNameCard.substring(16,17);
            if(Integer.parseInt(sex)%2==0){
                realname.setSex(2);
            }else{
                realname.setSex(1);;
            }
            Ruser ruser1=null;
            ruser1=(Ruser) request.getSession().getAttribute("ruser");
            String birthday=realNameCard.substring(6,14);
            realname.setBirthday(birthday);
            realname.setRuserId(ruser1.getRuserId());
            realnameService.addRealname(realname);
            userService.shiming(ruser1.getRuserId());
            Ruser ruser2=userService.upRuser(ruser1.getRuserId());
            request.getSession().setAttribute("ruser",ruser2);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (result) {
            Ruser ruser=(Ruser) request.getSession().getAttribute("ruser");
            Realname realname1=(Realname) realnameService.slectRelanme(ruser.getRuserId());
            request.getSession().setAttribute("realname",realname1);
            return "redirect:/to/MyHome";
        } else {
            return "redirect:/to/addzys";
        }

    }
}
