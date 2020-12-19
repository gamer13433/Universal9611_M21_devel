extern bool is_throttle_limit(unsigned int clipped_freq, int cpu);

static inline bool is_throttle_limit(unsigned int clipped_freq, int cpu)
{
	return false;
}
