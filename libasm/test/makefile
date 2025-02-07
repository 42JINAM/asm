# 기본 변수 설정
LIBASM = ../libasm.a       # libasm.a 경로
CC = clang                  # C 컴파일러
CFLAGS = -Wall -Wextra     # 컴파일 플래그

# 각 .c 파일에 대한 오브젝트 파일 및 실행 파일 이름 설정
SRCS = ft_strlen.c ft_strcpy.c ft_strcmp.c
OBJS = $(SRCS:.c=.o)

# 각 .c 파일을 컴파일하여 실행 파일로 만드는 규칙

# ft_strlen을 빌드하는 규칙
ft_strlen: ft_strlen.o $(LIBASM)
	$(CC) $(CFLAGS) -o tester ft_strlen.o $(LIBASM)

# ft_strcpy를 빌드하는 규칙
ft_strcpy: ft_strcpy.o $(LIBASM)
	$(CC) $(CFLAGS) -o tester ft_strcpy.o $(LIBASM)

# ft_strcmp를 빌드하는 규칙
ft_strcmp: ft_strcmp.o $(LIBASM)
	$(CC) $(CFLAGS) -o tester ft_strcmp.o $(LIBASM)

# ft_write를 빌드하는 규칙
ft_write: ft_write.o $(LIBASM)
	$(CC) $(CFLAGS) -o tester ft_write.o $(LIBASM)

# ft_read를 빌드하는 규칙
ft_read: ft_read.o $(LIBASM)
	$(CC) $(CFLAGS) -o tester ft_read.o $(LIBASM)
# ft_strdup를 빌드하는 규칙
ft_strdup: ft_strdup.o $(LIBASM)
	$(CC) $(CFLAGS)-g -o tester ft_strdup.o $(LIBASM)






# ft_strlen.o 생성 규칙
ft_strlen.o: ft_strlen.c
	$(CC) $(CFLAGS) -c ft_strlen.c -o ft_strlen.o

# ft_strcpy.o 생성 규칙
ft_strcpy.o: ft_strcpy.c
	$(CC) $(CFLAGS) -c ft_strcpy.c -o ft_strcpy.o

# ft_strcmp.o 생성 규칙
ft_strcmp.o: ft_strcmp.c
	$(CC) $(CFLAGS) -c ft_strcmp.c -o ft_strcmp.o -no-pie -g

# ft_write.o 생성 규칙
ft_write.o: ft_strcpy.c
	$(CC) $(CFLAGS) -c ft_write.c -o ft_write.o

# ft_read.o 생성 규칙
ft_read.o: ft_read.c
	$(CC) $(CFLAGS) -c ft_read.c -o ft_read.o

# ft_strdup.o 생성 규칙
ft_strdup.o: ft_strdup.c
	$(CC) $(CFLAGS) -c ft_strdup.c -o ft_strdup.o





# libasm.a가 갱신되었는지 확인하고, 갱신된 경우만 다시 빌드
$(LIBASM):
	make -C $(dir $(LIBASM))  # ../libasm.a를 새로 빌드

# clean: 빌드된 오브젝트 파일 삭제
clean:
	rm -f *.o

# fclean: clean과 함께 생성된 실행 파일과 libasm.a 삭제
fclean: clean
	rm -f tester

# re: fclean 후 all을 실행하여 다시 빌드
re: fclean all

.PHONY: all clean fclean re
