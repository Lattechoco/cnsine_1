from time import sleep
import pymysql
import queue


conn = pymysql.connect(host='localhost', user = 'root', passwd = 'ChocoLatte59090130!', db = 'bamboo', charset='utf8mb4')
queue1 = queue.Queue()
queue2 = queue.Queue()
global task
global num
task = False
num = 1

def start(U_id, U_passwd):
    global task
    queue1.put(U_id)
    queue2.put(U_passwd)

    for re in range(queue1.qsize()):
        if task == False:
            print(queue1.qsize())
            wait()

        else:
            re = re - 1
            print(queue1.qsize())

def wait():
    global task
    task = True
    id = queue1.get()
    pw = queue2.get()
    req(id, pw)
    task = False

def req(id, pw):
    global num
    cursor = conn.cursor()
    query = "INSERT INTO req (id, pw, num) VALUES (%s, %s, %s);"
    value = (id, pw, num)
    cursor.execute(query, value)
    conn.commit()
    num = num+1