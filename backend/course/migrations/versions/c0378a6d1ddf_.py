"""empty message

Revision ID: c0378a6d1ddf
Revises: b2a05e487f56
Create Date: 2020-09-03 11:27:07.282250

"""
from alembic import op
import sqlalchemy as sa

# revision identifiers, used by Alembic.
revision = 'c0378a6d1ddf'
down_revision = 'b2a05e487f56'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_unique_constraint('_user_course_uc', 'enroll', ['user_gid', 'course_cid'])
    op.drop_constraint(None, 'enroll', type_='foreignkey')
    op.drop_constraint(None, 'enroll', type_='foreignkey')
    op.create_foreign_key(None, 'enroll', 'user', ['user_gid'], ['gid'], ondelete='CASCADE')
    op.create_foreign_key(None, 'enroll', 'course', ['course_cid'], ['cid'], ondelete='CASCADE')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, 'enroll', type_='foreignkey')
    op.drop_constraint(None, 'enroll', type_='foreignkey')
    op.create_foreign_key(None, 'enroll', 'course', ['course_cid'], ['cid'])
    op.create_foreign_key(None, 'enroll', 'user', ['user_gid'], ['gid'])
    op.drop_constraint('_user_course_uc', 'enroll', type_='unique')
    # ### end Alembic commands ###
