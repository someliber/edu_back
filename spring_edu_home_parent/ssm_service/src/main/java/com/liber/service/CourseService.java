package com.liber.service;

import com.liber.domain.Course;
import com.liber.domain.CourseVO;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

public interface CourseService {
    List<Course> findCourseByCondition(CourseVO courseVO);
    void saveCourseOrTeacher(CourseVO courseVO) throws InvocationTargetException, IllegalAccessException;
    CourseVO findCourseById(Integer id);
    void updateCourseOrTeacher(CourseVO courseVO);
    void updateCourseStatus(int id,int status);
}
