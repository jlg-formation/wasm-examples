#include <stdio.h>
#include <string.h>
#include <wasi/api.h>

int main(int argc, char **argv) {
    const char *content;
    const char *filename;
    const __wasi_fd_t preopened_dir_fd = 3;
    __wasi_fd_t output_fd;
    __wasi_ciovec_t iov;
    __wasi_errno_t wasi_error;
    __wasi_errno_t close_error;
    __wasi_size_t written_size;
    size_t expected_size;

    if (argc != 3) {
        fprintf(stderr, "usage: write_file <content> <filename>\n");
        return 1;
    }

    content = argv[1];
    filename = argv[2];
    expected_size = strlen(content);
    wasi_error = __wasi_path_open(
        preopened_dir_fd,
        0,
        filename,
        strlen(filename),
        __WASI_OFLAGS_CREAT | __WASI_OFLAGS_TRUNC,
        __WASI_RIGHTS_FD_WRITE,
        0,
        0,
        &output_fd
    );
    if (wasi_error != 0) {
        fprintf(stderr, "error: unable to open '%s' (WASI errno=%u)\n", filename, wasi_error);
        return 1;
    }

    iov.buf = (const uint8_t *)content;
    iov.buf_len = expected_size;
    written_size = 0;
    wasi_error = __wasi_fd_write(output_fd, &iov, 1, &written_size);
    if (wasi_error != 0) {
        fprintf(stderr, "error: unable to write '%s' (WASI errno=%u)\n", filename, wasi_error);
        (void)__wasi_fd_close(output_fd);
        return 1;
    }

    if (written_size != expected_size) {
        fprintf(stderr, "error: short write on '%s' (%zu/%zu bytes)\n", filename, (size_t)written_size, expected_size);
        (void)__wasi_fd_close(output_fd);
        return 1;
    }

    close_error = __wasi_fd_close(output_fd);
    if (close_error != 0) {
        fprintf(stderr, "error: unable to close '%s' (WASI errno=%u)\n", filename, close_error);
        return 1;
    }

    fprintf(stderr, "success: wrote %zu bytes to '%s'\n", written_size, filename);
    return 0;
}