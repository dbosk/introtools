.PHONY: all
all: grade.sh

grade.sh: ../../grading/grade.sh
	cp $< $@

.PHONY: clean
clean:
	${RM} grade.sh

../%:
	${MAKE} -C $(dir $@) $(notdir $@)
