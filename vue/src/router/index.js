import Vue from 'vue'
import Router from 'vue-router'
import Home from '../views/Home.vue'
import Login from '../views/Login.vue'
import Logout from '../views/Logout.vue'
import Register from '../views/Register.vue'
import store from '../store/index'
import EmployeeLogin from '../views/EmployeeLogin.vue'
import EmployeeAccount from '../views/EmployeeAccount.vue'
import MyAccountPersonal from '../views/MyAccountPersonal.vue'
import MyAccountWorkoutHistory from '../views/MyAccountWorkoutHistory.vue'
import EmployeeGetDays from '../views/EmployeeGetDays.vue'
import EmployeeGetWorkouts from '../views/EmployeeGetWorkouts.vue'
import Workouts from '../views/workouts.vue'
Vue.use(Router)

/**
 * The Vue Router is used to "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */

const router = new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/history/:id',
      name: "usersWorkoutsThatDay",
      component: Workouts,
      meta: {
        requiresAuth: true
      }

    },
    {
      path: '/history',
      name: "userHistory",
      component: MyAccountWorkoutHistory,
      meta: {
        requiresAuth: true
      }

    },
    {
      path: '/personal',
      name: "usersInfo",
      component: MyAccountPersonal,
      meta: {
        requiresAuth: true
      }

    },
    {
      path: '/',
      name: 'home',
      component: Home,
      meta: {
        requiresAuth: true
      }
    },
    {
      path: "/login",
      name: "login",
      component: Login,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/logout",
      name: "logout",
      component: Logout,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/register",
      name: "register",
      component: Register,
      meta: {
        requiresAuth: false
      }
    },
    {
      path: "/login/employee",
      name: "employee-login",
      component: EmployeeLogin,
      meta: {
        requiresAuth: false
      }
    },
    {
      path:"/employee",
      name:"employee-account",
      component: EmployeeAccount,
      meta:{
        requiresAuth: true,
        requiresRole: false
      }
    },
    {
      path:"/employee/:id/history",
      name:"employee-view-user-history",
      component: EmployeeGetDays,
      meta: {
        requiresAuth: true,
        requiresRole: false
      }
    },
    {
    path:"employee/:id/history:id",
    name: "employee-view-user-workout",
    component: EmployeeGetWorkouts,
    meta: {
      requiresAuth: true,
      requiresRole: false
    }
    }
  ]
})

router.beforeEach((to, from, next) => {
  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);
  //const requiresRole = to.matched.some(x => x.meta.requiresRole);
  // const requiredRole = to.matched.some(x => x.meta.requiredRole);

  // If it does and they are not logged in, send the user to "/login"
  //also requires a role redirect to login && role ===''
  if (requiresAuth && store.state.token === '') {
    next("/login");
   } 
  // else if (requiresRole && !store.state.user.role.includes("EMPLOYEE")) {
  //   // don't leave
  //   alert('You are not authorized. Please login as an EMPLOYEE');
  // } 
  else {
    // Else let them go to their next destination
    next();
  }
});

export default router;
