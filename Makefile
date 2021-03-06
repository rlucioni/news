paperboy:
	python paperboy.py

deploy:
	zappa deploy prod

invoke:
	zappa invoke prod 'paperboy.deliver'

lint:
	flake8 .

package:
	zappa package prod

prune:
	python prune.py

requirements:
	pip install -r requirements.txt

rollback:
	zappa rollback prod -n 1

schedule:
	zappa schedule prod

ship: update prune

status:
	zappa status prod

tail:
	zappa tail prod --since 1d

undeploy:
	zappa undeploy prod --remove-logs

unschedule:
	zappa unschedule prod

update:
	zappa update prod
