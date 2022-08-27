.PHONY: install
install: ${HOME}/datintro22.sh
install: datintro-setup
install: datintro-grade

${HOME}/datintro22.sh: datintro-setup
${HOME}/datintro22.sh: datintro-grade

.PHONY: datintro-setup
datintro-setup:
	${MAKE} -C gits all

.PHONY: datintro-grade
datintro-grade:
	${MAKE} -C grading all


.PHONY: clean distclean
distclean:
	${RM} ${HOME}/datintro22.sh
