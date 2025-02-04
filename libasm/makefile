NAME = libasm.a
AR = ar
ARFLAGS = crs
RM = rm
RMFLAGS = -rf
NASM = nasm
NASMFLAGS = -f elf64

OBJ_DIR = objs
SRCS_FILES = ft_strlen ft_strcpy ft_strcmp ft_write ft_read

OBJS = $(addprefix $(OBJ_DIR)/,$(addsuffix .o, $(SRCS_FILES)))

all: $(NAME)

$(NAME): $(OBJS)
	@$(AR) $(ARFLAGS) $@ $^

$(OBJ_DIR)/%.o : %.s
	@mkdir -p $(OBJ_DIR)
	$(NASM) $(NASMFLAGS) -o $@ $<

clean :
	$(RM) $(RMFLAGS) $(OBJ_DIR)

fclean: clean
	$(RM) $(RMFLAGS) $(NAME)

re :
	make fclean
	make all

.PHONY : all clean fclean re
