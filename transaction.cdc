import Authentication from 0x05

transaction(name: String,age: Int, email: String, isStudent:Bool, studentId: UInt64,grade:String){
    
    prepare(signer: AuthAccount){}

    execute{
        Authentication.addProfile(name: name,age:age,email:email,isStudent:isStudent,studentId:studentId,grade:grade)
        log("NEW PROFILE IS ADDED SUCCESSFULLY !!!!!")

    }
}        
