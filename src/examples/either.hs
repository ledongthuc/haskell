import qualified Data.Map

type PhoneNumber = String
type FullName = String
data Status = Single | Married deriving (Show, Eq)
type InfoStatus = (FullName, Status)
type PhoneBook = Data.Map.Map PhoneNumber InfoStatus

type ErrorMessage = String

phoneBook::PhoneBook
phoneBook = Data.Map.fromList [("01223038564", ("Le Dong Thuc",     Married)), 
                               ("1234",        ("Sin Thi Thu Thao", Married)), 
                               ("9282747373",  ("Le Gia Nghi",      Single))]

checkSingleNameByPhone::PhoneNumber -> PhoneBook -> Either FullName ErrorMessage
checkSingleNameByPhone phoneNumber phoneBook = case Data.Map.lookup phoneNumber phoneBook of
                                          Nothing -> Right "Phone number is not existed"
                                          Just (fullName, status) -> if status == Married then Right (fullName ++" is not single")
                                                                                          else Left fullName

main = do
  putStrLn $ show $ phoneBook -- Print original data: fromList [("01223038564","Le Dong Thuc"),("1234","Sin Thi Thu Thao")]
  putStrLn $ show $ checkSingleNameByPhone "01223038564" phoneBook -- Right "Le Dong Thuc is not single"
  putStrLn $ show $ checkSingleNameByPhone "1234" phoneBook -- Right "Sin Thi Thu Thao is not single"
  putStrLn $ show $ checkSingleNameByPhone "4321" phoneBook -- Right "Phone number is not existed"
  putStrLn $ show $ checkSingleNameByPhone "9282747373" phoneBook -- Left "Le Gia Nghi"
