pub contract Authentication {
    pub var studentProfile: {UInt64: studProfiles}
    
    pub struct studProfiles{
        pub let name: String
        pub let age: Int
        pub let email:String 
        pub let isStudent: Bool
        pub let studentId: UInt64
        pub let grade: String 
        
        // You have to pass in 6 arguments when creating this Struct.
        init(_name: String,_age:Int, _email: String, _isStudent:Bool, _studentId: UInt64,_grade:String) {
            self.name = _name
            self.age = _age
            self.email = _email
            self.isStudent=_isStudent
            self.studentId = _studentId
            self.grade=_grade
        }
    }

    pub fun addProfile(name: String,age: Int, email: String, isStudent: Bool, studentId: UInt64,grade:String) {
        let newProfile = studProfiles(_name: name, _age:age,_email: email, _isStudent: isStudent, _studentId: studentId,_grade:grade)
        self.studentProfile[studentId] = newProfile
    }

    init() {
        self.studentProfile = {}
    }

}
