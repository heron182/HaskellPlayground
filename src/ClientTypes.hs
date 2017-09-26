data Client = GovOrg String
            | Company String Integer String String
            | Individual Person
            deriving Show

data Person = Person String String Gender
            deriving Show

data Gender = Male | Female | Unknown
            deriving Show

clientName:: Client -> String
clientName client = case client of
                    GovOrg name -> name
                    Company name id person addrs -> name
                    Individual person ->
                        case person of Person fName lName gender -> fName ++ " " ++ lName
