#include <p101_env/env.h>
#include <p101_error/error.h>
#include <p101_posix_optional/p101_stdlib.h>
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    struct p101_error *error;
    struct p101_env   *env;
    void              *ptr;
    int                result;

    error  = p101_error_create(false);
    env    = p101_env_create(error, NULL);
    ptr    = NULL;
    result = p101_posix_memalign(env, error, &ptr, sizeof(void *), 64);    // NOLINT(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)

    if(p101_error_has_error(error))
    {
        fprintf(stderr, "p101_posix_memalign failed: %s\n", p101_error_get_message(error));
    }
    else
    {
        printf("p101_posix_memalign: 64 bytes aligned to %zu (result = %d)\n", sizeof(void *), result);
        free(ptr);
    }

    p101_env_destroy(env);
    p101_error_destroy(error);

    return EXIT_SUCCESS;
}
