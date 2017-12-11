# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := run-benchmarks
DEFS_Debug := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_GNU_SOURCE' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O3 -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_COMPILE_TIME_CPUFLAGS=RTE_CPUFLAG_SSE,RTE_CPUFLAG_SSE2,RTE_CPUFLAG_SSE3,RTE_CPUFLAG_SSSE3,RTE_CPUFLAG_SSE4_1,RTE_CPUFLAG_SSE4_2,RTE_CPUFLAG_AES,RTE_CPUFLAG_PCLMULQDQ,RTE_CPUFLAG_AVX -include /home/stack/asim/mtcp/dpdk/include/rte_config.h -I /home/stack/asim/mtcp/dpdk/include -I /home/stack/asim/mtcp/mtcp/include -pthread \
	-pthread \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I$(srcdir)/deps/uv/include

DEFS_Release := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_GNU_SOURCE' \
	'-D_POSIX_C_SOURCE=200112'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3 -march=native -DRTE_MACHINE_CPUFLAG_SSE -DRTE_MACHINE_CPUFLAG_SSE2 -DRTE_MACHINE_CPUFLAG_SSE3 -DRTE_MACHINE_CPUFLAG_SSSE3 -DRTE_MACHINE_CPUFLAG_SSE4_1 -DRTE_MACHINE_CPUFLAG_SSE4_2 -DRTE_MACHINE_CPUFLAG_AES -DRTE_MACHINE_CPUFLAG_PCLMULQDQ -DRTE_MACHINE_CPUFLAG_AVX -DRTE_COMPILE_TIME_CPUFLAGS=RTE_CPUFLAG_SSE,RTE_CPUFLAG_SSE2,RTE_CPUFLAG_SSE3,RTE_CPUFLAG_SSSE3,RTE_CPUFLAG_SSE4_1,RTE_CPUFLAG_SSE4_2,RTE_CPUFLAG_AES,RTE_CPUFLAG_PCLMULQDQ,RTE_CPUFLAG_AVX -include /home/stack/asim/mtcp/dpdk/include/rte_config.h -I /home/stack/asim/mtcp/dpdk/include -I /home/stack/asim/mtcp/mtcp/include -pthread \
	-pthread \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I$(srcdir)/deps/uv/include

OBJS := \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-async.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-async-pummel.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-fs-stat.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-getaddrinfo.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-loop-count.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-million-async.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-million-timers.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-multi-accept.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-ping-pongs.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-pound.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-pump.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-sizes.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-spawn.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-thread.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-tcp-write-batch.o \
	$(obj).target/$(TARGET)/deps/uv/test/benchmark-udp-pummel.o \
	$(obj).target/$(TARGET)/deps/uv/test/dns-server.o \
	$(obj).target/$(TARGET)/deps/uv/test/echo-server.o \
	$(obj).target/$(TARGET)/deps/uv/test/blackhole-server.o \
	$(obj).target/$(TARGET)/deps/uv/test/run-benchmarks.o \
	$(obj).target/$(TARGET)/deps/uv/test/runner.o \
	$(obj).target/$(TARGET)/deps/uv/test/runner-unix.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/deps/uv/libuv.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-march=native -Wl,--whole-archive -Wl,-ldpdk -Wl,--no-whole-archive \
	-lm \
	-ldl \
	-lmtcp \
	-lpthread \
	-lnuma \
	-rdynamic \
	-m64 \
	-pthread \
	-L/home/stack/asim/mtcp/mtcp/lib/ \
	-L/home/stack/asim/mtcp/dpdk/lib/

LDFLAGS_Release := \
	-march=native -Wl,--whole-archive -Wl,-ldpdk -Wl,--no-whole-archive \
	-lm \
	-ldl \
	-lmtcp \
	-lpthread \
	-lnuma \
	-rdynamic \
	-m64 \
	-pthread \
	-L/home/stack/asim/mtcp/mtcp/lib/ \
	-L/home/stack/asim/mtcp/dpdk/lib/

LIBS := \
	-lm \
	-ldl \
	-lrt

$(builddir)/run-benchmarks: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/run-benchmarks: LIBS := $(LIBS)
$(builddir)/run-benchmarks: LD_INPUTS := $(OBJS) $(obj).target/deps/uv/libuv.a
$(builddir)/run-benchmarks: TOOLSET := $(TOOLSET)
$(builddir)/run-benchmarks: $(OBJS) $(obj).target/deps/uv/libuv.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/run-benchmarks
# Add target alias
.PHONY: run-benchmarks
run-benchmarks: $(builddir)/run-benchmarks

