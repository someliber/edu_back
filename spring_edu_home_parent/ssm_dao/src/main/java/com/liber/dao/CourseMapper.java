package com.liber.dao;

import com.liber.domain.Course;
import com.liber.domain.CourseVO;
import com.liber.domain.Teacher;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseMapper {
    //多条件课程查询
    List<Course>findCourseByCondition(CourseVO courseVO);

    //保存课程信息
    int saveCourse(Course course);
    //保存讲师信息
    void saveTeacher(Teacher teacher);

    //根据课程id回显信息
    CourseVO findCourseById(Integer id);

    //更新课程信息
    void updateCourse(Course course);

    //更新老师信息
    void updateTeacher(Teacher teacher);

    //修改课程状态
    void updateCourseStatus(Course course);
}
