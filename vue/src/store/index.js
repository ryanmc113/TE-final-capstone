import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

/*
 * The authorization header is set for axios when you login but what happens when you come back or
 * the page is refreshed. When that happens you need to check for the token in local storage and if it
 * exists you should set the header so that it will be attached to each request
 */
const currentToken = localStorage.getItem('token')
const currentUser = JSON.parse(localStorage.getItem('user'));
const currentVisitID = localStorage.getItem('visitId');
const currentVisitor = localStorage.getItem('currentVisitor')




if(currentToken != null) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

export default new Vuex.Store({
  state: {
    employeeUserLogging: [],
    visitId: currentVisitID || "",
    token: currentToken || '',
    user: currentUser || {},
    employeeLoggedIn: currentVisitor || '',
  },
  mutations: {
    SET_VISITOR(state){
state.employeeLoggedIn = true
localStorage.setItem('currentVisitor', true)
    },
    DELETE_VISITOR(state){
      state.employeeLoggedIn = ''
      localStorage.removeItem('currentVisitor')
    },
    SET_EMPLOYEE_LOGGING(state, newLog){
      state.employeeUserLogging.push(newLog)
      
      //localStorage.setItem('logs', state.employeeUserLogging)
    },
     UPDATE_EMPLOYEE_LOG(state, id, time){
     let updatedLogEndTime = state.employeeUserLogging.filter((user) => {
        return user.userId == id; 
      })
        updatedLogEndTime[0].timeOut = time;
     },
    DELETE_EMPLOYEE_LOG(state, id){
      state.employeeUserLogging = state.employeeUserLogging.filter((user) =>{
return user.userId != id 
      })

    },
    SET_VISIT_ID(state, id){
      state.visitId = id;
      localStorage.setItem('visitId', id);

    },
    DELETE_VISIT_ID(state){
      state.visitId = ''
      localStorage.removeItem('visitId')
    },
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    },

    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user',JSON.stringify(user));
    },
    LOGOUT(state) {
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      
      state.token = '';
      state.user = {};
      axios.defaults.headers.common = {};
    }
    // SET_EMPLOYEE(state, EMPLOYEE) {
    //   state.user = EMPLOYEE;
    //   localStorage.setItem('employee',JSON.stringify(EMPLOYEE));
    // },
    // LOGOUT_EMPLOYEE(state) {
    //   localStorage.removeItem('token');
    //   localStorage.removeItem('employee');
    //   state.token = '';
    //   state.user = {};
    //   axios.defaults.headers.common = {};
    // },
  }
})
