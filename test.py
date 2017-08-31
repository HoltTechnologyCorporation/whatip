from subprocess import check_output


def test_whatip():
    out = check_output('whatip', shell=True).decode('utf-8')
    assert out.split(' ')[0].count('.') == 3
