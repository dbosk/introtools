# Shared Canvas LMS push/pull rules for the module directories.
# Modelled on ~/devel/edu/tilkry/modules/module.mk.
#
# Each module directory lists its files:
#   PAGES       += page.md         # pushed with: canvaslms pages edit -c ${COURSE} -f page.md
#   ASSIGNMENTS += assignment.md   # pushed with: canvaslms assignments edit -c ${COURSE} -f assignment.md
# and then `include ../module.mk`.
#
# The YAML front matter of each file identifies the Canvas item (regex,
# title/name), its module membership and position (modules:), published
# state, etc.  See README.md at the repo root.

COURSE ?= datintro26
PULL_COURSE ?= datintro25

.PHONY: all
all:

.PHONY: pull pull-pages pull-assignments pull-quizzes
pull: pull-pages pull-assignments pull-quizzes

pull-pages:

pull-assignments:

pull-quizzes:

PUSH_STAMPDIR_PAGES := .pushed-pages.d
PUSH_STAMPDIR_ASSIGNMENTS := .pushed-assignments.d
PUSH_STAMPDIR_QUIZZES := .pushed-quizzes.d
PUSH_STAMPDIR_QUIZZES_QUESTIONS := .pushed-quizzes-questions.d

.PHONY: push push-pages push-assignments push-quizzes push-quizzes-questions
push: push-pages push-assignments push-quizzes

.PHONY: push-pages
ifeq ($(strip $(PAGES)),)
push-pages:
else
push-pages: .pushed-pages

.pushed-pages: $(addprefix $(PUSH_STAMPDIR_PAGES)/,$(PAGES))
	touch $@

$(PUSH_STAMPDIR_PAGES)/%: %
	@mkdir -p $(dir $@)
	canvaslms pages edit -c "${COURSE}" -f "$<"
	touch $@
endif

.PHONY: push-assignments
ifeq ($(strip $(ASSIGNMENTS)),)
push-assignments:
else
push-assignments: .pushed-assignments

.pushed-assignments: $(addprefix $(PUSH_STAMPDIR_ASSIGNMENTS)/,$(ASSIGNMENTS))
	touch $@

$(PUSH_STAMPDIR_ASSIGNMENTS)/%: %
	@mkdir -p $(dir $@)
	canvaslms assignments edit -c "${COURSE}" -f "$<"
	touch $@
endif

.PHONY: push-quizzes
ifeq ($(strip $(QUIZZES)),)
push-quizzes:
else
push-quizzes: .pushed-quizzes

.pushed-quizzes: $(addprefix $(PUSH_STAMPDIR_QUIZZES)/,$(QUIZZES))
	touch $@

$(PUSH_STAMPDIR_QUIZZES)/%: %
	@mkdir -p $(dir $@)
	canvaslms quizzes edit -c "${COURSE}" -f "$<"
	touch $@
endif

.PHONY: push-quizzes-questions
ifeq ($(strip $(QUIZZES)),)
push-quizzes-questions:
else
push-quizzes-questions: .pushed-quizzes-questions

.pushed-quizzes-questions: $(addprefix $(PUSH_STAMPDIR_QUIZZES_QUESTIONS)/,$(QUIZZES))
	touch $@

$(PUSH_STAMPDIR_QUIZZES_QUESTIONS)/%: %
	@mkdir -p $(dir $@)
	canvaslms quizzes edit -c "${COURSE}" -f "$<" --replace-items
	touch $@
endif

.PHONY: force-push force-push-pages force-push-assignments force-push-quizzes
force-push: force-push-pages force-push-assignments force-push-quizzes

force-push-pages:
	for page in ${PAGES}; do \
		echo "Pushing $$page to ${COURSE} ..."; \
		canvaslms pages edit --create -c "${COURSE}" -f "$${page}"; \
	done; \
	echo "Done."

force-push-assignments:
	for file in ${ASSIGNMENTS}; do \
		echo "Pushing $$file to ${COURSE} ..."; \
		canvaslms assignments edit --create -c "${COURSE}" -f "$${file}"; \
	done; \
	echo "Done."

force-push-quizzes:
	for quiz in ${QUIZZES}; do \
		echo "Pushing $$quiz to ${COURSE} ..."; \
		canvaslms quizzes edit --create -c "${COURSE}" -f "$${quiz}"; \
	done; \
	echo "Done."
