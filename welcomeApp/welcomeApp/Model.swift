//
//  Model.swift
//  welcomeApp
//
//  Created by Александр Тиунович on 11.10.23.
//

import Foundation



struct User {
    
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        
        User(
            login: "Tim",
            password: "123",
            person: Person(
                name: "Tim",
                surname: "Cook",
                photo: "tim",
                bio: """
                Тим Кук родился в 1960 году в городе Мобил, штат Алабама, но детство провел в городке Робертсдейл. Мать будущего предпринимателя была фармацевтом, а отец - рабочим верфи. Кук мало рассказывал о своем детстве. Известна история о том, как он увидел расправу Ку-клукс-клана над негритянской семьей. Испугавшись, Тим крикнул, чтобы они остановились, но, приглядевшись, узнал в одном из участников действа местного священника и сбежал. Эта история, по словам предпринимателя, серьезно повлияла на его взгляды.
                """,
                job: "Apple",
                position: "SEO",
                departmant: "main")
        )
        
        
    }
}

struct Person {
    
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: String
    let position: String
    let departmant: String
}


