SRC_DIR := src


.PHONY: all help

all: style migrate run


app:
ifndef name
	@echo "Error: Please provide a name for the app."
else
	python $(SRC_DIR)/manage.py startapp $(name) $(SRC_DIR)/apps/$(name)
endif

style:
	black --line-length 99 --check $(SRC_DIR)
	

migration:
	python $(SRC_DIR)/manage.py makemigrations

migrate:
	python $(SRC_DIR)/manage.py migrate

run:
	python $(SRC_DIR)/manage.py runserver

help:
	@echo "Available commands:"
	@echo "  all"
	@echo "  app"
	@echo "  style"
	@echo "  migration"
	@echo "  migrate"
	@echo "  run"
