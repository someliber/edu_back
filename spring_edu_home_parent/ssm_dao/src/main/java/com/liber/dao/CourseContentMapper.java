package com.liber.dao;

import com.liber.domain.Course;
import com.liber.domain.CourseLesson;
import com.liber.domain.CourseSection;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CourseContentMapper {
    //根据课程id查询关联的章节信息及章节信息关联的课时信息
    List<CourseSection>findCourseSectionByCourseId(Integer courseId);
    //回显章节对应的课程信息
    Course findCourseByCourseId(int courseId);
    //保存章节
   void saveSection(CourseSection section);

    //修改章节
    void updateSection(CourseSection section);

    //修改章节状态
    void updateSectionStatus(CourseSection section);

    // 保存课时
    void saveLesson(CourseLesson lesson);
    //更新课时
    void updateLesson(CourseLesson lesson);
}
