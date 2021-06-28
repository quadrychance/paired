rule archive_results:
    input:
        get_results_filename("{dataset}")
    output:
        get_results_filename("{dataset}.tar.gz")
    log:
        get_log_filename("{dataset}.tar.gz.log")
    shell:
        "tar -czvf {output} {input} &> {log}"