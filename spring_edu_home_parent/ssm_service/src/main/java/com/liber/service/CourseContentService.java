package com.liber.service;

import com.liber.domain.Course;
import com.liber.domain.CourseLesson;
import com.liber.domain.CourseSection;

import java.util.List;

public interface CourseContentService {
    List<CourseSection> findSectionAndLessonByCourseId(int courseId);
    Course findCourseByCourseId(int courseId);
    void saveSection(CourseSection section);
    void updateSection(CourseSection section);
    void updateSectionStatus(int id,int status);
    void saveLesson(CourseLesson lesson);
    void updateLesson(CourseLesson lesson);

}
