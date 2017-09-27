data Client = GovOrg String
            | Company String Integer String String
            | Individual Person
            deriving Show

data Person = Person String String Gender
            deriving Show

data Gender = Male | Female | Unknown
            deriving Show

data GenderCount = GenderCount Int Int Int
            deriving Show

clientName:: Client -> String
clientName client = case client of
                    GovOrg name -> name
                    Company name id person addrs -> name
                    Individual person ->
                        case person of Person fName lName gender -> fName ++ " " ++ lName

companyName:: Client -> Maybe String
companyName company = case company of
                      Company name _ _ _ -> Just name
                      _                  -> Nothing

personGender:: Person -> Int
personGender (Person _ _ gender) = case gender of
                                   Male    -> 1
                                   Female  -> 0
                                   Unknown -> 0

countGender:: [Person] -> Int
countGender personList = let p = (head personList)
                         in if null (tail personList) then
                             personGender p
                            else personGender p + countGender (tail personList)
