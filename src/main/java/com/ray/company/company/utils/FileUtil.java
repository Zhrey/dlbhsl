package com.ray.company.company.utils;

import org.springframework.beans.factory.annotation.Value;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class FileUtil {

    @Value("${fastdfs.httpurl}")
    private String confighttpurl;

    /**
     * Description: 获取文件后缀名
     *
     * @param fileName
     * @return
     * @see
     */
    public static String getExtensionName(String fileName) {
        String prefix = fileName.substring(fileName.lastIndexOf(".") + 1);
        return prefix;
    }

    /**
     * 根据path获取文件名
     *
     * @param filename
     * @return
     * @author kokJuis
     * @version 1.0
     * @date 2016-12-12
     */
    public static String getOriginalFilename(String filename) {
        if (filename == null) {
            return "";
        }
        int pos = filename.lastIndexOf(".");
        if (pos == -1) {
            pos = filename.lastIndexOf("\\");
        }
        if (pos != -1) {
            return filename.substring(pos);
        } else {
            return filename;
        }
    }

    public static String getHttpUrl(String groupFileId){
        int pos = groupFileId.indexOf("/");
        String filepath = groupFileId.substring(pos + 1);
        return filepath;
    }

    public static String getGroupUrl(String url){
        String filepath = url.substring(0,5);
        return filepath;
    }

    public static String getUUID(){
        UUID uuid=UUID.randomUUID();
        String str = uuid.toString();
        String uuidStr=str.replace("-", "");
        return uuidStr;
    }

    /**
     * 功能:压缩多个文件成一个zip文件
     * @param srcfile：源文件列表
     * @param zipfile：压缩后的文件
     */
    public static void zipFiles(List<File> srcfile, File zipfile){
        byte[] buf=new byte[1024];
        try {
            //ZipOutputStream类：完成文件或文件夹的压缩
            ZipOutputStream out=new ZipOutputStream(new FileOutputStream(zipfile));
            for(int i=0;i<srcfile.size();i++){
                FileInputStream in=new FileInputStream(srcfile.get(i));
                out.putNextEntry(new ZipEntry(srcfile.get(i).getName()));
                int len;
                while((len=in.read(buf))>0){
                    out.write(buf,0,len);
                }
                out.closeEntry();
                in.close();
            }
            out.close();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
