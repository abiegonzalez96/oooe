sys = {
    cores = {
        coreA = {
            type = "SMT";
            dcache = "l1dA";
            icache = "l1iA";
		};
    };

    lineSize = 64;

    caches = {
        l1dA = {
            size = 65536;
        };
        l1iA = {
            size = 32768;
        };
        l2 = {
            caches = 1;
            size = 2097152;
            children = "l1iA|l1dA";
        };
    };
};

sim = {
    // Default amt of cycles until a "weave phase"
    phaseLength = 10000;

    // TODO: Switch threads frequently, How?
    schedQuantum = 5000;

    // TODO: What is this?
    procStatsFilter = "l1.*|l2.*";

    // Log to file (makes info work), log/ is dir
	logToFile = true;

	// Global simulator heap size in MB (default is 1024MB)
    gmMBytes = 1024;

	// Enable remote GDB debugging
	// enableDebugger = true;
};

process0 = {
    // command = "./benchmark/basic_test";
    // command = "ls -alh --color tests/";
	// command = "cat tests/config/smt.cfg";
	// command = "./benchmark/data_cache_miss";
	command = "uname -r";
	// command = "du -h";
	// command = "ctags src/";
	// command = "diff LICENSE README.md";
	// command = "df -h";
    // command = "ls -alh --color src/";

	// Disble deadlock detection
	// deadlockDetection = false;

	// reorder buffer size (entries)
	rob = 16;
};

process1 = {
    // command = "ls -alh --color tests/";
	// command = "cat tests/config/smt.cfg";
	command = "uname -r";
	// command = "du -h";
	// command = "ctags src/";
	// command = "diff LICENSE README.md";
	// command = "df -h";
    // command = "ls -alh --color src/";

	// reorder buffer size (entries)
	rob = 16;
};


# process1 = {
# 	command = "uname -r";
#     // command = "ls -alh --color src/";
# };

# process2 = {
# 	command = "echo 'Flushing, Queens!'";
# };
# 
# process3 = {
# 	command = "hostname -i";
# };