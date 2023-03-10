import axios from "axios";

export default{
  
    addCheckInTime(checkInTime){
        return axios.post(`workouts/check-in`, checkInTime)
    },
    
    //the path to add an exercise to a visit(do we need userID or visitID)
    addExercise(exercise){
        return axios.post('workouts/log-workout', exercise)
    },

    updateCheckOut(checkOutTime){
        return axios.put('workouts/check-out', checkOutTime)
    },

    getClassSch(){
        return axios.get('workouts/classes')
    },

    getExercisesLogged(visitId){
        return axios.get(`workouts/visit/${visitId}`)
    }
}