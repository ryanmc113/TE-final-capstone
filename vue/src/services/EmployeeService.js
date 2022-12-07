import axios from 'axios';

export default {
    getUsers(){
        return axios.get('/employee/users')
      },
      createLogInDatabase(log){
            return axios.post(`/employee/user/log`, log)
      },
      getMachineMetrics(){
            return axios.get(`/employee/machines`)
      }
}