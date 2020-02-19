run-grumphp:
	docker exec -it tuto-sf2 ./vendor/bin/grumphp run

fix-psalm:
	docker exec -it tuto-sf2 ./vendor/bin/psalm --config devops/grumphp/psalm/psalm.xml --alter --issues=MissingReturnType --dry-run src

fix-phpcsfixer:
	docker exec -it tuto-sf2 '/usr/var/app/vendor/bin/php-cs-fixer' '--allow-risky=yes' '--config=/usr/var/app/devops/grumphp/phpcsfixer/.php_cs' '--verbose' 'fix'



