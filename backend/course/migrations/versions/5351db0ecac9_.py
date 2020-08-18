"""empty message

Revision ID: 5351db0ecac9
Revises: ffe3f323e216
Create Date: 2020-08-19 02:07:14.346207

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '5351db0ecac9'
down_revision = 'ffe3f323e216'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('assignment', sa.Column('course_cid', sa.Integer(), nullable=True))
    op.drop_constraint('assignment_ibfk_1', 'assignment', type_='foreignkey')
    op.create_foreign_key(None, 'assignment', 'course', ['course_cid'], ['cid'])
    op.drop_column('assignment', 'schedule_id')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('assignment', sa.Column('schedule_id', mysql.INTEGER(display_width=11), autoincrement=False, nullable=True))
    op.drop_constraint(None, 'assignment', type_='foreignkey')
    op.create_foreign_key('assignment_ibfk_1', 'assignment', 'schedule', ['schedule_id'], ['id'])
    op.drop_column('assignment', 'course_cid')
    # ### end Alembic commands ###
