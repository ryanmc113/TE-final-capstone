import axios from 'axios';

export default {
    getUsers(firstName, lastName){
        return axios.get('/employee/users', firstName, lastName)
      }
}