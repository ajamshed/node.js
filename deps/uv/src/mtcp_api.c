/*----------------------------------------------------------------------------------*/
#include <sys/types.h>
#include <rte_ethdev.h>
#include <mtcp_api.h>
#include <sched.h>
#include <pthread.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
/*----------------------------------------------------------------------------------*/
int node_mtcp_init_wrapper() 
{
	int ret = 0;
	mctx_t mctx = NULL;
	const int cpu = 0; /* TODO: FIXME - Pass through command-line option? */
	
	/* XXX: fix static string literal */
	ret = mtcp_init("/home/stack/asim/uttam/node-asim/mtcp.conf"); /* TODO: FIXME - Pass through command-line option? */
	if (ret) {
		fprintf(stderr, "Failed to initialize mtcp\n");
		exit(EXIT_FAILURE);
	}

	/* XXX: fix magic numbers */
	mtcp_core_affinitize(cpu);
	mctx = mtcp_create_context(cpu);	/* TODO: FIXME - Add a func/arg for passing qid */
	if (!mctx) {
		fprintf(stderr, "Failed to create mtcp context!\n");
		ret = -1;
	}

	in_addr_t daddr = inet_addr("192.168.0.4");
	in_port_t dport = htons(27017);
	mtcp_init_rss(mctx, INADDR_ANY, 1, daddr, dport);

	fprintf(stderr, "node_mtcp_init_port() success\n");

	return ret;
}
/*----------------------------------------------------------------------------------*/

