import axios from "axios";

const http = axios.create({
    baseURL: "https://type.fit/api/"
})

export default{
    getRandomQuote(){
        return http.get("quotes")
    }
}