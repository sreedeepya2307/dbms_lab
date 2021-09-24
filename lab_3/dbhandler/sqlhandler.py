import mysql.connector

class Mysqlh:

    def _init_(self):
        pass
    def add_user(self):
        cnx= mysql.connector.connect(user='root',password='Database@95',database='userdb')
        cursor = cnx.cursor()
        query1 = ("insert into user_data values('mahesh',5908,'2001-08-23')")
        query2 = ("insert into user_data values('vasthav',4632,'2002-01-19')")
        cursor.execute(query1)
        cursor.execute(query2)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("adding details to user_data table")
        
    def update_user(self):
        cnx= mysql.connector.connect(user='root',password='Database@95',database='userdb')
        cursor = cnx.cursor()
        query4 = ("update user_data set name='Vasthav',dob='2002-01-20' where phno=4632")
        cursor.execute(query4)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("updating details of user_data table")
        
    def delete_user(self):
        cnx= mysql.connector.connect(user='root',password='Database@95',database='userdb')
        cursor = cnx.cursor()
        query3 = (" delete from user_data where phno=4632 ")
        cursor.execute(query3)
        cursor = cnx.cursor()
        cursor.execute("commit")
        print("deleting details from user_data table")
        
    def display_user(self):
        cnx= mysql.connector.connect(user='root',password='Database@95',database='userdb')
        cursor = cnx.cursor()
        query = ("select * from user_data")
        cursor.execute(query)
        print(list(cursor))


if __name__=="__main__":
    mysqlh=Mysqlh()
    print("user_data table details")
    mysqlh.display_user()
    mysqlh.add_user()
    mysqlh.display_user()
    mysqlh.update_user()
    mysqlh.display_user()
    mysqlh.delete_user()
    mysqlh.display_user()
    