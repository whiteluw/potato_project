CC = g++
CFLAGS = -static -std=c++17 -O2
LDFLAGS = -lstdc++fs
TARGET = sweetpotato.exe
SHAREDIR = /c/Users/User/sweetpotato/share
BINDIR = /c/Windows/System32

.PHONY: all install uninstall clean

all:
	$(CC) $(CFLAGS) main.cpp -o $(TARGET) $(LDFLAGS)

install: all
	@mkdir -p $(SHAREDIR)/assets
	@cp $(TARGET) $(BINDIR)/sweetpotato.exe
	@cp assets/* $(SHAREDIR)/assets/
	@echo "安装完成，请使用 sweetpotato 启动程序"

uninstall:
	@rm -f $(BINDIR)/sweetpotato.exe
	@rm -rf $(SHAREDIR)
	@echo "已移除 sweetpotato 程序与资源"

clean:
	@rm -f $(TARGET)
