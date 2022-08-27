.PHONY: install
install: ${HOME}/datintro22.sh
install: ${HOME}/datintro-setup.sh
install: datintro-grade


${HOME}/datintro22.sh: ${HOME}/datintro-setup.sh

${HOME}/datintro-setup.sh: gits/gits-setup.sh
	cp $< $@

gits/%:
	${MAKE} -C $(dir $@) $(notdir $@)


${HOME}/datintro22.sh: datintro-grade

.PHONY: datintro-grade
datintro-grade:
	${MAKE} -C grading all


.PHONY: clean distclean
clean:
	${RM} ${HOME}/datintro-setup.sh

distclean:
	${RM} ${HOME}/datintro22.sh
