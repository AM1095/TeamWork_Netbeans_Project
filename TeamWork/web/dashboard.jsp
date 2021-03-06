<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- parameters needed : first_name, user_id -->
<!DOCTYPE html>
<html>
    <head>
       <title>TeamWork</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Css/dashboard_style.css" />
        <link rel="stylesheet" type="text/css" href="Css/jquery-ui.min.css" />
        <script src="jquery/jquery.js"></script>
        <script src="jquery/jquery-ui.min.js"></script>
        <script src="js_scripts/dashboard_manager.js"></script>
    </head>
    <body>
        <header>
            <div id="inline_img_1"></div>
            <div id="inline_img_2"></div>
            <a href="/TeamWork/log_out" id="log_out_btn">Log Out</a>
        </header>
        <div id="main_container">
            <div id="options">
                <ul id="options_list">
                    <li><a id="projects_btn" href="#">Open Projects</a></li>
                    <li><a id="pr_create_btn" href="#">Create Project</a></li>
                    <li><a id="invitations_btn" href="#" >Invitations</a></li>
                    <li><a id="ac_settings_btn" href="#" >Account Settings</a></li>
                    <li><a id="tutorial_btn" href="#">Tutorial</a></li>
                </ul>
            </div>
            <div id="welcome_text_container">
                <p id="welcome_text">Welcome to your dashboard ${first_name}</p>
            </div>
            <div id="projects_tab">
                <div class="hide_scroll">
                    <div id="manager_projects_board">
                        <p class="large_text">Projects By You : </p>
                        <div id="project_history">${user_id}</div>
                    </div>
                    <div id="member_projects_board">
                        <p class="large_text">Projects Joined : </p>
                        <div id="joined_project_history"></div>
                    </div>
                </div>
            </div>
            <div id="project_create_tab">
                <div id="new_project_panel">
                    <p class="large_text">Create Project</p>
                    <form id="new_project_form" >
                        Choose a name for the project : <br/>
                        <input type="text" id="n_proj_name" /><br/>
                        Add a short description for the project : <br/>
                        <textarea id="n_proj_description" maxlength="90"></textarea><br/>
                        <button id="n_proj_btn" class="button">Create</button>
                    </form>
                </div>
            </div>
            <div id="invitations_tab">
                <div id="invitations_history"></div>
            </div>
            <div id="account_settings_tab">
                <div id="ac_settings_panel">
                    <div id="left_ac_panel">
                            <p class="large_text">Account Settings</p>
                            <br/>
                            <table>
                                <tr>
                                    <td>First Name </td>
                                    <td>${first_name}</td>
                                    <td><button id="changeFirstName_btn" class="button2">Change</button></td>
                                </tr>
                                <tr>
                                    <td>Last Name </td>
                                    <td>${last_name}</td>
                                    <td><button id="changeLastName_btn" class="button2">Change</button></td>
                                </tr>
                                <tr>
                                    <td>username </td>
                                    <td>${username}</td>
                                    <td><button id="changeUsername_btn" class="button2">Change</button></td>
                                </tr>
                                <tr>
                                    <td>email </td>
                                    <td>${email}</td>
                                    <td><button id="changeEmail_btn" class="button2">Change</button></td>
                                </tr>
                                <tr>
                                    <td>Change your password </td>
                                    <td><button id="changePassword_btn" class="button2">Change</button></td>
                                </tr>
                            </table>
                            <div id="change_first_name_dialogue" title="Change First Name">
                                <form>
                                    New First Name : <br/>
                                    <input type="text" id="first_name_text" /><br/>
                                    <button id="submit_fname_btn" class="button">Submit</button>
                                </form>
                            </div>
                            <div id="change_last_name_dialogue" title="Change Last Name">
                                <form>
                                    New Last Name : <br/>
                                    <input type="text" id="last_name_text" /><br/>
                                    <button id="submit_lname_btn" class="button">Submit</button>
                                </form>
                            </div>
                            <div id="change_username_dialogue" title="Change Username">
                                <form>
                                    New username : <br/>
                                    <input type="text" id="username_text" /><br/>
                                    <button id="submit_username_btn" class="button">Submit</button>
                                </form>
                            </div>
                            <div id="change_email_dialogue" title="Change Email">
                                <form>
                                    New email : <br/>
                                    <input type="text" id="email_text" /><br/>
                                    <button id="submit_email_btn" class="button">Submit</button>
                                </form>
                            </div>
                            <div id="change_password_dialogue" title="Change Password">
                                <form>
                                    New Password : <br/>
                                    <input type="text" id="password_text" /><br/>
                                    <button id="submit_password_btn" class="button">Submit</button>
                                </form>
                            </div>
                            <div id="ajax_dialogue" title="Server Message">
                                <p id="ajax_message"></p>
                            </div>
                        </div>
                </div>
            </div>
            <div id="tutorial_tab">
                <div id="article_scroll">
                    <article id="tutorial_article">
                        <h3>Tutorial</h3>
                        <p>This is a tutorial on how to use the TeamWork project management tool</p>
                        <h3>TeamWork Tool</h3>
                        <p>This is a project management tool. Each project has a manager and members. The manager
                        adds the members after he has created the project. When you create a project you become the 
                        project's manager. 
                        </p>
                        <p>Each project is composed by :</p>
                        <ul>
                            <li>Project history : the statuses that the members post</li>
                            <li>Milestones : the milestones set by the manager </li>
                            <li>Assignments : the tasks assigned by the manager to people. They contain a deadline </li>
                            <li>Issues : the problems that the members have encountered and are trying to resolve</li>
                        </ul>
                        <h3>The Dashboard Page</h3>
                        <p>This is your dashboard. From here you can see the projects that you have created or joined and 
                            open the desired project page. You can also create new projects, delete old ones, or see the 
                            invitations that other users have sent you to join their projects. Finally, with the account settings tab you
                            will be able to manage your account information.
                        </p>
                        <h3>The Dashboard Tabs</h3>
                        <ul>
                            <li>Open Projects : <br/> This tab contains projects created by you on the first box and projects
                                created by others, that you have joined as a member.
                            </li>
                            <li>Create Project : <br/> Here you can create a new project. Creating a new project makes you the
                                manager and gives you the manager's rights. As a manager you can set the milestones of the project,
                                assign tasks to people, invite your colleagues as members, etc.
                            </li>
                            <li>Invitations : Here you can see a list of invitations that other users have sent you to join their
                            projects
                            </li>
                            <li>Account Settings: In this tab your manage your account information</li>
                        </ul>  
                        <h3>The Project Page</h3>
                        <p>By clicking the "open" button in any project in the open projects tab, you are redirected to this
                        project's page. There by clicking in the left panel options you can view,close and update info through the
                        tabs.</p>
                    </article>
                </div>
            </div>
        </div>
    </body>
</html>