package project.EmployeeManagementSystem.ui.EmployeeManagementSystemUI.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import java.io.Serializable;

@Entity
@IdClass(ProjectWithTask.ProjectWithTaskPK.class)
public class ProjectWithTask implements Serializable {
    @Id
    public Integer employeeId;
    @Id
    public Integer projectId;
    @Id
    public Integer taskId;

    String projectName;
    String taskName;

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public ProjectWithTask(Integer employeeId, Integer projectId, Integer taskId,String projectName,String taskName) {
        this.employeeId = employeeId;
        this.projectId = projectId;
        this.taskId = taskId;
        this.projectName=projectName;
        this.taskName=taskName;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getTaskId() {
        return taskId;
    }

    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
    }
    static class ProjectWithTaskPK implements Serializable {
        protected Integer employeeId;
        protected Integer projectId;
        protected Integer taskId;

        public ProjectWithTaskPK() {}

        public ProjectWithTaskPK(Integer employeeId, Integer projectId,Integer taskId) {
            this.employeeId = employeeId;
            this.projectId = projectId;
            this.taskId = taskId;
        }
        // equals, hashCode
    }
}
