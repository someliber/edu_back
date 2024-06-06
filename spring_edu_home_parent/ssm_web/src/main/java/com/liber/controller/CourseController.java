package com.liber.controller;

import com.liber.domain.Course;
import com.liber.domain.CourseVO;
import com.liber.domain.ResponseResult;
import com.liber.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/course")
public class CourseController {
    @Autowired
    private CourseService courseService;

    //多条件查询
    @RequestMapping("/findCourseByCondition")
    public ResponseResult findCourseByCondition(@RequestBody CourseVO courseVO) {
        List<Course> courseList = courseService.findCourseByCondition(courseVO);
        return new ResponseResult(true,200,"响应成功",courseList);
    }
    //课程图片上传
    @PostMapping("/courseUpload")
    public ResponseResult fileUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {
        //判断接收到的上传文件是否为空
        if(file.isEmpty()){
            throw new RuntimeException();
        }
        //2.获取项目部署路径
        String realPath = request.getServletContext().getRealPath("/");
        String substring = realPath.substring(0, realPath.indexOf("ssm_web"));
        //3.获取原文件名
        String filename = file.getOriginalFilename();
        //4.生成新文件名
        filename=System.currentTimeMillis()+filename.substring(filename.lastIndexOf("."));
        //5.文件上传
        String uploadPath = substring+"upload/";
        File filePath = new File(uploadPath,filename);
        //如果目录不存在就创建目录
        if(!filePath.getParentFile().exists()){
            filePath.getParentFile().mkdirs();
            System.out.println("创建目录："+filePath);
        }
        //图片进行真正的上传
        file.transferTo(filePath);
        //6.将文件名和文件路径返回，进行响应
        StringBuffer URL = request.getRequestURL();
        String ssmWeb = URL.substring(0, URL.lastIndexOf("ssm_web"));
        Map<String,String> map = new HashMap<>();
        map.put("filename",filename);
        map.put("filepath",ssmWeb+"upload/"+filename);
        return new ResponseResult(true,200,"图片上传成功",map);
    }
    //新增课程信息及讲师信息
    //新增课程信息和修改课程信息写在同一个方法中
    @PostMapping("/saveOrUpdateCourse")
    public ResponseResult saveOrUpdateCourse(@RequestBody CourseVO courseVO) throws InvocationTargetException, IllegalAccessException {
        //调用service
        try {
            if(courseVO.getId()!=null){
                courseService.updateCourseOrTeacher(courseVO);
                return new ResponseResult(true,200,"更新课程信息成功",null);
            }else{
                courseService.saveCourseOrTeacher(courseVO);
                return new ResponseResult(true,200,"添加课程信息成功",null);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    //根据课程id回显信息
    @GetMapping("/findCourseById/{id}")
    public ResponseResult findCourseById(@PathVariable("id") Integer id) {
        try {
            return new ResponseResult(true, 200, "根据ID查询课程信息成功", courseService.findCourseById(id));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
        /**
         * 修改课程状态
         * */
        @GetMapping("/updateCourseStatus")
        public ResponseResult updateCourseStatus(@RequestParam int id,@RequestParam int status){
            System.out.println(id+":"+status);
            try {
                //执行修改操作
                courseService.updateCourseStatus(id,status);
                 //保存修改后的状态,并返回
                Map<String,Integer> map = new HashMap<>();
                map.put("status",status);
                ResponseResult result = new ResponseResult(true,200,"响应成功",map);
                return result;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
    }
}
