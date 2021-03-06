package teammates.ui.template;

import java.util.List;

public class CoursePagination {
    private String previousPageLink;
    private String nextPageLink;
    private List<String> coursePaginationList;
    private String activeCourse;
    private String userCommentsLink;
    
    public CoursePagination(String previousPageLink, String nextPageLink, List<String> coursePaginationList, 
                            String activeCourse, String userCommentsLink) {
        this.previousPageLink = previousPageLink;
        this.nextPageLink = nextPageLink;
        this.coursePaginationList = coursePaginationList;
        this.activeCourse = activeCourse;
        this.userCommentsLink = userCommentsLink;
    }
    
    public String getPreviousPageLink() {
        return previousPageLink;
    }

    public String getNextPageLink() {
        return nextPageLink;
    }

    public List<String> getCoursePaginationList() {
        return coursePaginationList;
    }

    public String getActiveCourse() {
        return activeCourse;
    }

    public String getUserCommentsLink() {
        return userCommentsLink;
    }
}
