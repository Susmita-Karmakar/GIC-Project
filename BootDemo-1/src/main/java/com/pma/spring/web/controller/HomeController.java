package com.pma.spring.web.controller;

import java.util.List;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pma.spring.web.entity.ProjectRegister;
import com.pma.spring.web.entity.UserRegister;
//import com.pma.spring.web.repository.UserRepository;
import com.pma.spring.web.service.ProjectServiceImpl;
import com.pma.spring.web.service.UserServiceImpl;

@Controller

public class HomeController {

	
//
//	@Autowired
//	UserRepository loginRepository;

	@Autowired
	UserServiceImpl userService;
	
	@Autowired
	ProjectServiceImpl projectService;
	
	
	// -------------- Home Page ------------------

	@RequestMapping("home")
	public String open() {
		return "Home";
	}

	// --------------Register Display page -----------------

	@GetMapping("registerForm")
	public String register() {
		return "UserRegister";
	}

	// ------------- Register page Fetching ------------------

	@PostMapping("registerForm") // value="registerForm",method=RequestMethod.POST)
	public ModelAndView saveUser(UserRegister user) {
		System.out.println(user);

		if (userService.save(user) != null) {
			return new ModelAndView("UserLogin", "message", "User Registered Successfully.");
		}
		return null;

	}

	// ----------------Login Display Page ----------

	@GetMapping("loginForm")
	public String login() {
		return "UserLogin";
	}

	// --------------- Login Page ----------------

	@PostMapping("loginForm") 
	public ModelAndView authenticate(String email, String password) {
		UserRegister user = userService.validate(email, password);

		if (user != null) {
			return new ModelAndView("Home", "nameKey", email);
		} else {
			return new ModelAndView("UserLogin", "errorKey", "Please enter valid Email and Password!");
		}
	}

	// -------------- Contact Us Page --------------------

	@RequestMapping("contact")
	public String contact() {
		return "ContactUs";
	}

	// ---------------- About Us ------------------

	@RequestMapping("about")
	public String about() {
		return "AboutUs";
	}

	// -------------- FindUser Get the Page --------
	@GetMapping("find")
	public String findUser() {
		return "Find";
	}

// ------------------ Find user View Page -----------------

	@PostMapping("findUser") 
	public ModelAndView findByName(String name) {

		ModelAndView modelAndView = null;
		try {
			UserRegister user = userService.findByName(name);
			System.out.println(name + " " + user);

			if (user != null)
			{
				modelAndView = new ModelAndView("UserProfile", "loginKey", user);
			}

		} catch (EntityNotFoundException e) {
			modelAndView = new ModelAndView("UserLogin", "ek", "please enter valid userid to find");

		}
		return modelAndView;
	}

	// ----------------------- View All Users Page view -----------------

	@GetMapping("displayAll") 
	ModelAndView viewAllUsers() {

		ModelAndView modelAndView = null;
		try {
			List<UserRegister> listUser = userService.findAll();

			if (!listUser.isEmpty())

			{
				modelAndView = new ModelAndView("ViewAll", "listKey", listUser);
			}
		} catch (EntityNotFoundException e) {
			modelAndView = new ModelAndView("Find", "ek", "please enter valid userid to find");
		}
		return modelAndView;
	}

	// -------------------- FAQ page ------------------------
	
	@RequestMapping("FAQ")
	public String faq() {

		return "FAQ";
	}

//	----------------- Delete User ------------------
	
	@RequestMapping("/deleteuser/{id}")
	public String deleteUser(@PathVariable(value = "id") int id) {
		this.userService.deleteById(id);
		return "redirect:/displayAll";
	}
	
	
//	-------------------- Project Upload ---------------
	
	@GetMapping("projectUpload")
	public String projectUploadView() {
		return "UploadProject";
	}
	
//	------------------ Save Project --------------------
	
	@PostMapping("projectUpload") 
	public ModelAndView projectUpload(ProjectRegister project) {
		System.out.println(project);

		if (projectService.save(project) != null) {
			return new ModelAndView("UploadProject");//, "message", "User Registered Successfully.");
		}
		return null;

	}
	
//	------------------ Display list of Projects -------------------
	
	@GetMapping("projectList") 
	ModelAndView viewAllProjects() {

		ModelAndView modelAndView = null;
		try {
			List<ProjectRegister> listProjects = projectService.findAll();

			if (!listProjects.isEmpty())

			{
				modelAndView = new ModelAndView("ViewAllProjects", "listProjectKey", listProjects);
			}
		} catch (EntityNotFoundException e) {
			modelAndView = new ModelAndView("UploadProject");//, "ek", "please enter valid userid to find");
		}
		return modelAndView;
	}
	
	
//	--------------- Update user view ------------------------
	
	@RequestMapping("/updateUser")
	  
	  public ModelAndView updateUser(@RequestParam(value="id") int id) {
	  
	  UserRegister user= userService.updateUser(id); if(user!=null)
	  
	  return new ModelAndView("UpdateUser","userKey",user);
	  
	  return null;
	  
	  }
	  
//   ------------------------ Update User ---------------------

	  @RequestMapping(value="updateUserData", method=RequestMethod.POST) 
	  
	  public ModelAndView updateUserData(UserRegister user)
	  {
	  
//		  System.out.println("user updated");
//		  System.out.println(user.getId());
//		  System.out.println(user.getName());
//		  System.out.println(user.getEmail());
//		  System.out.println(user.getAddress());
//		  System.out.println(user.getPassword());	  
//		  System.out.println(user.getPhoneNumber());
//		  System.out.println(user.getDob());
		  
	  ModelAndView modelAndView=null;
	  if(userService.save(user)!=null)
	  
		  
	  modelAndView= new ModelAndView("UpdateUser","updatemessage","User data updated");
	  
	  return modelAndView; 
	  
	 
	  }

//	---------------------- update user view page -----------
//	@RequestMapping("updateUser")
//	public String updateView() {
//		return "Update";
//	}
//
////	--------------------- Update user page ------------
//
//	@PutMapping("/updateUser")  
//	public UserRegister updateUser(UserRegister user)    
//	{  
//		return userService.updateUser(user);
//		 
//	} 



	// @RequestMapping(value="authenicate",method=RequestMethod.POST)
	// public ModelAndView authenticate(String userName,String password) {
	// User user=loginReposotory.findByUserNameAndPassword(userName,password);
	// if(user!=null)
	// {
	// return new ModelAndView("Home","nameKey",userName);
	// }
	// else {
	// return new ModelAndView("index","errorKey","please enter valid user or
	// password");
	// }
	// }

	// @RequestMapping(value="regForm",method=RequestMethod.POST)
	// public ModelAndView saveUser(User user) {
	//
	// if(loginReposotory.save(user)!=null)
	//
	//
	// return new ModelAndView("index");
	// return null;
	//
	// }

	// @RequestMapping("login")
	// public String login() {
	//
	// return "index";
	// }
	//
	//
	// @RequestMapping("find")
	// public String findUser() {
	//
	// return "Find";
	// }

	// @RequestMapping(value="findUser",method=RequestMethod.POST)
	// public ModelAndView findByUserName(String userName ) {
	//
	// ModelAndView mv=null;
	// try { User user=loginReposotory.getById(userName);
	//
	// if(user!=null)
	//
	// {
	// mv=new ModelAndView("Display","loginKey",user);
	// }
	//
	// }
	// catch(EntityNotFoundException e)
	// {
	// mv= new ModelAndView("Find","ek","please enter valid userid to find");
	//
	// }
	// return mv;
	// }

	// @RequestMapping(value="displayAll",method=RequestMethod.GET)
	// public ModelAndView viewAllUsers( ) {
	//
	// ModelAndView mv=null;
	// try {
	// List<User> listUser=loginReposotory.findAll();
	//
	// if(!listUser.isEmpty())
	//
	// {
	// mv=new ModelAndView("ViewAll","listKey",listUser);
	// }
	//
	// }
	// catch(EntityNotFoundException e)
	// {
	// mv= new ModelAndView("Find","ek","please enter valid userid to find");
	//
	// }
	// return mv;
	// }

}