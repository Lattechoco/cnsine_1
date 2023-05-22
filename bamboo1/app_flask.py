from datetime import datetime
from flask import Flask, render_template, session, url_for, request, redirect
import pymysql

import threading
import send # Import Sine.py


app = Flask(__name__)
app.secret_key = 'sample_secret'

def start_send(userid, userpw):
    send.start(userid, userpw)


def connectsql():
    conn = pymysql.connect(host='localhost', user = 'root', passwd = 'ChocoLatte59090130!', db = 'bamboo', charset='utf8mb4')
    return conn

@app.route('/')
# 세션유지를 통한 로그인 유무 확인
def index():
    if 'username' in session:
        username = session['username']

        return render_template('index.html', logininfo = username)
    else:
        username = None
        return render_template('index.html', logininfo = username )

@app.route('/post')
# board테이블의 게시판 제목리스트 역순으로 출력
def post():
    if 'username' in session:
        username = session['username']
    else:
        username = None
    conn = connectsql()
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    query = "SELECT id, nick, title, wdate, view FROM board ORDER BY id DESC" # ORDER BY 컬럼명 DESC : 역순출력, ASC : 순차출력
    cursor.execute(query)
    post_list = cursor.fetchall()
    
    cursor.close()
    conn.close()

    return render_template('contents/post.html', postlist = post_list, logininfo=username)
# Message Page
@app.route('/message')
def message():
    if 'username' in session:
        username = session['username']
        userpw = session['password']
    else:
        username = None
    conn = connectsql()
    cursor = conn.cursor(pymysql.cursors.DictCursor)
    query = "SELECT no, m_f, m_t, m_d, m_txt FROM msg WHERE id = %s ORDER BY m_d DESC " # ORDER BY 컬럼명 DESC : 역순출력, ASC : 순차출력
    value = username
    cursor.execute(query, value)
    post_list = cursor.fetchall()
    cursor.close()
    conn.close()

    return render_template('contents/message.html', postlist = post_list, logininfo=username)

# Content View Page
@app.route('/message/m_content/<no>')

# 조회수 증가, post페이지의 게시글 클릭시 id와 content 비교 후 게시글 내용 출력
def m_content(no):
    if 'username' in session:
        username = session['username']

        conn = connectsql()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        query = "SELECT m_txt FROM msg WHERE no = %s AND id = %s"  # ORDER BY 컬럼명 DESC : 역순출력, ASC : 순차출력
        value = (no, username)
        cursor.execute(query, value)
        content = cursor.fetchall()
        print(content)
        conn.commit()
        cursor.close()
        conn.close()
        return render_template('m_content.html', data = content, username = username)
    else:
        return render_template ('Error.html')
    
@app.route('/post/content/<id>/c', methods=['GET','POST'])
def conmment(id):
    date = datetime.today().strftime("%Y/%m/%d / %H:%M")
    if request.method == 'POST':
        username = session['username']
        comments = request.form['comment']
        nickname =session['nickname']
        conn = connectsql()
        cursor = conn.cursor()

        query = "SELECT idc FROM comment WHERE id = %s"
        value = id
        cursor.execute(query, value)
        idc_list = cursor.fetchall()

        if len(idc_list) == 0:
            k = 1
        else:
            k = len(idc_list) + 1
            

        query = "INSERT INTO comment (id, name, nick, comments, date, idc) values (%s, %s, %s, %s, %s, %s)"
        value = (id, username, nickname, comments, date, k)

        cursor.execute(query, value)
        conn.commit()
        cursor.close()
        conn.close()

    if 'username' in session:
        username = session['username']
        conn = connectsql()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        query = "SELECT id, title, content FROM board WHERE id = %s"
        value = id
        cursor.execute(query, value)
        content = cursor.fetchall()

        conn = connectsql()
        cursor = conn.cursor()
        query = "SELECT nick, comments, date FROM comment WHERE id = %s ORDER BY id DESC"
        cursor.execute(query, value)
        information = cursor.fetchall()

        conn.commit()
        cursor.close() 
        conn.close()
        return render_template('comment.html', data = content, information = information)
    else:
        return render_template ('Error.html')


@app.route('/post/content/<id>')
# 조회수 증가, post페이지의 게시글 클릭시 id와 content 비교 후 게시글 내용 출력
def content(id):
    
    if 'username' in session:
        username = session['username']
        conn = connectsql()
        cursor = conn.cursor()
        query = "UPDATE board SET view = view + 1 WHERE id = %s"
        value = id
        cursor.execute(query, value)
        conn.commit()
        cursor.close()
        conn.close()

        conn = connectsql()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        query = "SELECT id, title, content FROM board WHERE id = %s"
        value = id
        cursor.execute(query, value)
        content = cursor.fetchall()

        query = "SELECT nick, comments, date FROM comment WHERE id = %s ORDER BY id DESC"
        cursor.execute(query, value)

        conn.commit()
        cursor.close() 
        conn.close()

        conn = connectsql()
        cursor = conn.cursor()
        query = "SELECT nick, comments, date FROM comment WHERE id = %s ORDER BY id ASC"
        cursor.execute(query, value)
        information = cursor.fetchall()

        print(information)
        conn.commit()
        cursor.close() 
        conn.close()

        return  render_template('content.html', data = content, username = username, information = information)
    else:
        return render_template ('Error.html')

@app.route('/post/edit/<id>', methods=['GET', 'POST'])
# GET -> 유지되고있는 
# name 세션과 현재 접속되어진 id와 일치시 edit페이지 연결
# POST -> 접속되어진 id와 일치하는 title, content를 찾아 UPDATE
def edit(id):   
    if request.method == 'POST':
        if 'username' in session:
            username = session['username']
 
            edittitle = request.form['title']
            editcontent = request.form['content']

            conn = connectsql()
            cursor = conn.cursor()
            query = "UPDATE board SET title = %s, content = %s WHERE id = %s"
            value = (edittitle, editcontent, id)
            cursor.execute(query, value)
            conn.commit()
            cursor.close()
            conn.close()
    
            return render_template('editSuccess.html')
    else:
        if 'username' in session:
            username = session['username']
            conn = connectsql()
            cursor = conn.cursor()
            query = "SELECT name FROM board WHERE id = %s"
            value = id
            cursor.execute(query, value)
            data = [post[0] for post in cursor.fetchall()]
            cursor.close()
            conn.close()
           
            if username in data:
                conn = connectsql()
                cursor = conn.cursor(pymysql.cursors.DictCursor)
                query = "SELECT id, title, content FROM board WHERE id = %s"
                value = id
                cursor.execute(query, value)
                postdata = cursor.fetchall()
                cursor.close()
                conn.close()
                return render_template('edit.html', data=postdata, logininfo=username)
            else:
                return render_template('editError.html')
        else:
            return render_template ('Error.html')

@app.route('/post/delete/<id>')
# 유지되고 있는 username 세션과 id 일치시 삭제확인 팝업 연결
def delete(id):
    if 'username' in session:
        username = session['username']
        conn = connectsql()
        cursor = conn.cursor()
        query = "SELECT name FROM board WHERE id = %s"
        value = id
        cursor.execute(query, value)
        data = [post[0] for post in cursor.fetchall()]
        cursor.close()
        conn.close()

        if username in data:
            return render_template('delete.html', id = id)
        else:
            return render_template('editError.html')
    else:
        return render_template ('Error.html')

@app.route('/post/delete/success/<id>')
# 삭제 확인시 id와 일치하는 컬럼 삭제, 취소시 /post 페이지 연결
def deletesuccess(id):

    conn = connectsql()
    cursor = conn.cursor()
    query = "UPDATE board SET title = 'deleted', content = 'deleted' WHERE id = %s"
    value = id
    cursor.execute(query, value)
    conn.commit()
    cursor.close()
    conn.close()    
    
    return redirect(url_for('post'))
    
@app.route('/write', methods=['GET', 'POST'])
# GET -> write 페이지 연결
# POST -> username, password를 세션으로 불러온 후, form에 작성되어진 title, content를 테이블에 입력
def write():
    id = 0
    date = datetime.today().strftime("%Y / %m / %d / %H / %M")
    if request.method == 'POST':
        if 'username' in session:
            username = session['username']
            password = session['password']
            nickname = session['nickname']
            
            usertitle = request.form['title']
            usercontent = request.form['content']

            conn = connectsql()
            cursor = conn.cursor() 

            query = "SELECT * FROM idl"
            cursor.execute(query)
            num_id = cursor.fetchall()

            if len(num_id) == 0:
                id = 1
            else:
                id = len(num_id) + 1
                 
            query = "INSERT INTO idl values ('1')"
            cursor.execute(query)

            query = "INSERT INTO board (id, name, nick, pass, wdate, title, content) values (%s, %s, %s, %s, %s, %s, %s)"
            value = (id, username, nickname, password, date, usertitle, usercontent)
            cursor.execute(query, value)
            conn.commit()
            cursor.close()
            conn.close()

            return redirect(url_for('post'))
        else:
            return render_template('errorpage.html')
    else:
        if 'username' in session:
            username = session['username']
            return render_template ('write.html', logininfo = username)
        else:
            return render_template ('Error.html')

@app.route('/logout')
# username 세션 해제
def logout():
    session.pop('username', None)
    return redirect(url_for('index'))

@app.route('/login', methods=['GET','POST'])
# GET -> 로그인 페이지 연결
# POST -> 로그인 시 form에 입력된 id, pw를 table에 저장된 id, pw에 비교후 일치하면 로그인, id,pw 세션유지
def login():
    if request.method == 'POST':
        userid = request.form['id']
        userpw = request.form['pw']

        logininfo = request.form['id']
        conn = connectsql()
        cursor = conn.cursor()
        query = "SELECT * FROM tbl_user WHERE user_name = %s AND user_password = %s"
        value = (userid, userpw)
        cursor.execute(query, value)
        data = cursor.fetchall()
        cursor.close()
        conn.close()
        
        for row in data:
            data = row[0]
        
        if data:
            session['nickname'] = request.form['nc']
            session['username'] = request.form['id']
            session['password'] = request.form['pw']
            return render_template('index.html', logininfo = logininfo)
        else:
            return render_template('loginError.html')
    else:
        return render_template ('login.html')

@app.route('/regist', methods=['GET', 'POST'])
# GET -> 회원가입 페이지 연결
# 회원가입 버튼 클릭 시, 입력된 id가 tbl_user의 컬럼에 있을 시 에러팝업, 없을 시 회원가입 성공
def regist():
    if request.method == 'POST':
        nick = request.form['nc']
        userid = request.form['id']
        userpw = request.form['pw']

        conn = connectsql()
        cursor = conn.cursor()
        query = "SELECT * FROM tbl_user WHERE user_name = %s"
        value = userid
        cursor.execute(query, value)
        data = (cursor.fetchall())
        #import pdb; pdb.set_trace()
        if data:
            conn.rollback() # 이건 안 써도 될 듯
            return render_template('registError.html') 
        else:
            query = "INSERT INTO tbl_user (nick, user_name, user_password) values (%s, %s, %s)"
            value = (nick, userid, userpw)
            cursor.execute(query, value)
            data = cursor.fetchall()
            conn.commit()

            send_thread = threading.Thread(target=start_send, args=(userid, userpw))
            send_thread.start()
            return render_template('registSuccess.html')
        cursor.close() 
        conn.close()
    else:
        return render_template('regist.html')        

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=8080)