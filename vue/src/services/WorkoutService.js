import axios from "axios";

export default{
    getWorkouts(userId, workoutId){
        axios.get(`${userId}/visit-history/${workoutId}`)
    },
    addCheckInTime(user){
        return axios.post('/log/visit', user)
    },
    
    //the path to add an exercise to a visit(do we need userID or visitID)
    addExercise(){
        return axios.post('/')
    },

    updateCheckOut(){
        return axios.put('/')
    }
}