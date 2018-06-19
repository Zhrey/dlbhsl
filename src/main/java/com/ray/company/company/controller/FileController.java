package com.ray.company.company.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * 文件系统contrller层
 *
 * @author SL
 * @date 2018/01/18
 */
@Controller
@RequestMapping("/file")
@Slf4j
public class FileController {

    /**
     * 上传文件
     *
     * @return
     * @author SL
     * @date 2018-1-30
     */
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    @ResponseBody
    public Object uploadFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {// TODO 参数驼峰命名+
        if (!multipartFile.isEmpty()) {
            Map map = new HashMap<>();
            try {
                String pathRoot = request.getServletContext().getRealPath("/file");
                BufferedOutputStream out = new BufferedOutputStream(
                        new FileOutputStream(new File(pathRoot + multipartFile.getOriginalFilename())));
                out.write(multipartFile.getBytes());
                out.flush();
                out.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            } catch (IOException e) {
                e.printStackTrace();
                return "上传失败," + e.getMessage();
            }
            map.put("success","上传成功");
            return map;

        } else {
            return "上传失败，因为文件是空的.";
        }
    }

}
