package com.bbk.blog.test;

import java.io.File;
import java.util.Arrays;

/**
 * @author ldd
 * @desc
 * @create 2018-11-17 16:54
 **/
public class OtherTest {

    public static void main(String[] args) {
        String path = "E:\\myGitHub\\ideaGitHub\\blog\\blog\\src\\main\\resources\\templates";
        resolvePath(new File(path));

    }
    private static void resolvePath(File path) {
        String pathName = path.getAbsolutePath();
        if (path.isDirectory()) {
            String[] list = path.list();
            System.out.println(Arrays.toString(list));
            if (list != null && list.length != 0) {
                for (String temp :
                        list) {
                    File file = new File(pathName+"/"+temp);
                    if (file.isDirectory()) {
                        resolvePath(file);
                    }
                    System.out.println(file.exists());
                    if (file.exists()) {
                        if (file.getName().endsWith("html")) {
                            String newName = file.getName().replace(".html",".ftl");
                            File newFile = new File(pathName+"/"+newName);
                            boolean result = file.renameTo(newFile);
                            System.out.println("修改结果："+result);

                        }
                    }

                }

            }
        }
    }
}
