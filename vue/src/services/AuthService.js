import axios from 'axios';

export default {

  login(user) {
    return axios.post("/login", user)
  },
  
  loginEmployee(employee){
    return axios.post("/login/employee", employee)
  },

  register(user) {
    return axios.post("/register", user)
  },
  updateUser(user) {
    return axios.put("admin/update", user)
  }

 

}
