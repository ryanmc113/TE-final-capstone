<template>
    <div>
        <table><thead><tr><th>Days in the gym</th></tr></thead><tbody>
            <tr v-for="day in workoutDays" v-bind:key="day.id">
                <router-link :to="{ name: 'workouts', params: { id: day.id } }"> {{day.time}}</router-link>
                </tr>
                </tbody>
                </table>
        
    </div>
</template>

<script>
import UserService from '../services/UserService.js'

export default {
    data(){
        return{
            workoutDays: [
                {id: "1",
                time: "January 1st"},
                 {id: "2",
                time: " january 2nd"},
                 {id: "3",
                time: "january 9th"}
            ]
        }
    },
    methods: {
        getDaysAtGym(){
            UserService.getVisitLog().then(response=>{
this.workoutDays = response.data
            })
        }
    }
}
</script>
