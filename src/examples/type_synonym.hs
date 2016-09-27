import qualified Data.Map

type Name = String
type PhoneNumber = String
type PhoneBook = [(Name, PhoneNumber)]

phoneBook :: PhoneBook
phoneBook = [("Thuc", "1234"), ("Thao", "4567")]

inPhoneBook :: Name -> PhoneNumber -> Bool
inPhoneBook name phoneNumber = (name, phoneNumber) `elem` phoneBook

type AssocList k = Data.Map.Map Integer k

assocList :: AssocList Double
assocList = Data.Map.fromList [(1, 1.0), (2, 2.0)]

main = do
  putStrLn $ show $ inPhoneBook "Thuc" "1234" -- True
  putStrLn $ show $ inPhoneBook "Thao" "4567" -- True
  putStrLn $ show $ inPhoneBook "Thuc" "4567" -- False

  putStrLn $ show $ Data.Map.lookup 2 $ assocList -- Just 2.0
