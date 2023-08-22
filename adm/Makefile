.PHONY: all
all: ${HOME}/datintro23.sh
all: datintro-setup
all: datintro-grade

${HOME}/datintro23.sh: datintro-setup
${HOME}/datintro23.sh: datintro-grade

.PHONY: datintro-setup
datintro-setup:
	${MAKE} -C gits all

.PHONY: datintro-grade
datintro-grade:
	${MAKE} -C grading all


.PHONY: clean distclean
clean:
	${MAKE} -C gits $@
	${MAKE} -C grading $@

distclean:
	${MAKE} -C gits $@
	${MAKE} -C grading $@
	${RM} ${HOME}/datintro23.sh
