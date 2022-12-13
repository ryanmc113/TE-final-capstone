<template>
    <div>
        <employee-workout-history :userId="parseInt($route.params.userId)"/>
    </div>
</template>

<script>

import EmployeeWorkoutHistory from '../components/EmployeeWorkoutHistory.vue';
export default {
components:{
    EmployeeWorkoutHistory
}
        
    
}
</script>