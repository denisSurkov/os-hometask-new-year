import datetime
import random
import time
import os

USERS_CNT = 20
TIME_TO_SLEEP_SECS = 10

FILE_NAME = os.path.join(os.getcwd(), 'task-access.logs')

LOGS_AND_CODES = {
    'INFO': ('200', '201', '202', '204'),
    'WARN': ('400', '401', '418'),
    'ERROR': ('500', '501', '502'),
}

TOTAL_USERS = ('john', 'admin', 'john2', 'john3', 'johny', 'johny1', 'johny2',
               'admin1', 'admin2', 'admin3', 'moderator', 'vanya', 'hacker')
RESOURCES = ('films', 'games', 'activities')
METHODS = ('get_all', 'create', 'delete')


def requests_gen():
    only_logs_levels = list(LOGS_AND_CODES.keys())
    while True:
        date_time = datetime.datetime.utcnow().isoformat()
        severity = random.choice(only_logs_levels)
        http_status = random.choice(LOGS_AND_CODES[severity])
        request_time = random.randint(1, 101)
        request_user = random.choice(TOTAL_USERS)
        resource_path = f'/api/v1/{random.choice(RESOURCES)}/{random.choice(METHODS)}'

        yield f'{date_time} {severity} {http_status} {request_user} {request_time} {resource_path}'


if __name__ == '__main__':
    gen_ = requests_gen()
    while True:
        with open(FILE_NAME, 'a') as f:
            new_request = next(gen_)
            print(new_request)
            f.write(new_request)
            f.write('\n')
        time.sleep(TIME_TO_SLEEP_SECS)
