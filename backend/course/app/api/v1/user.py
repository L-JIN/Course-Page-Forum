from flask import jsonify, g
from flask import request
from flask_jwt_extended import create_access_token

from app.libs.enums import UserTypeEnum
from app.libs.error_code import DeleteSuccess, Success
from app.libs.redprint import Redprint
from app.libs.token_auth import login_required, role_required, private
from app.models.base import db
from app.models.user import User
from app.validators.forms import UserForm, UserUpdateForm

api = Redprint('user')


@api.route('/teachers', methods=['GET'])
def get_teachers():
    users = User.query.filter_by(_auth=UserTypeEnum.TEACHER.value).all()
    return jsonify(users)


@api.route('/students', methods=['GET'])
@role_required(UserTypeEnum.TEACHER)
def get_students():
    users = User.query.filter_by(_auth=UserTypeEnum.STUDENT.value).all()
    return jsonify(users)


@api.route('/<string:gid>', methods=['GET'])
@private(User)
def super_get_user(gid):
    user = User.query.filter_by(gid=gid).first_or_404()
    return jsonify(user)


@api.route('/<string:gid>', methods=['PUT'])
@private(User)
def update_user(gid):
    user = User.query.filter_by(gid=gid).first_or_404()
    form = UserUpdateForm().validate_for_api()
    with db.auto_commit():
        form.populate_obj(user)
    return Success()


@api.route('', methods=['GET'])
@private(User)
def get_user():
    gid = g.user['gid']
    user = User.query.filter_by(gid=gid).first_or_404()
    return jsonify(user)


@api.route('/<string:gid>', methods=['DELETE'])
@private(User)
def delete_user(gid):
    # gid = g.user['gid']
    with db.auto_commit():
        user = User.query.filter_by(gid=gid).first_or_404()
        db.session.delete(user)
    return DeleteSuccess()


@api.route('/register', methods=['POST'])
@login_required
def register():
    form = UserForm().validate_for_api()
    user = User.register(form.nickname.data,
                         form.email.data,
                         g.user['gid'],
                         g.user['uid'])
    scope = User.assign_scope(user)
    identity = {
        'scope': scope,
        'uid': g.user['uid'],
        'gid': g.user['gid']
    }
    access_token = create_access_token(identity)

    return jsonify({'access_token': access_token, 'registered': identity['scope'] != 'Scope', 'gid': identity['gid']})


@api.route('/<string:gid>/courses', methods=['GET'])
@private(User)
def get_courses(gid):
    user = User.query.filter_by(gid=gid).first_or_404()
    courses = user.courses
    return jsonify(courses)


@api.route('/<string:gid>/auth', methods=['POST'])
def update_auth(gid):
    user = User.query.filter_by(gid=gid).first_or_404()
    with db.auto_commit():
        user._auth = request.json['auth']
    return Success()
