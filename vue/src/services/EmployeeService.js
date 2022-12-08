import axios from 'axios';

export default {
    getUsers(){
        return axios.get('/employee/users')
      },
      createLogInDatabase(log){
            return axios.post(`/log/visit`, log)
      },
      getMachineMetrics(){
            return axios.get(`/employee/machines`)
      }
}