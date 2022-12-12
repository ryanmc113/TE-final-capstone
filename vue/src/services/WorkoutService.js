import axios from "axios";

export default{
    // addCheckInTime(id, checkInTime){
    //     return axios.post(`/log/visit/${id}`, checkInTime)
    // },
    addCheckInTime(checkInTime){
        return axios.post(`workouts/check-in`, checkInTime)
    },
    
    //the path to add an exercise to a visit(do we need userID or visitID)
    addExercise(exercise){
        return axios.post('workouts/log-workout', exercise)
    },

    updateCheckOut(checkOutTime){
        return axios.put('workouts/check-out', checkOutTime)
    }
}