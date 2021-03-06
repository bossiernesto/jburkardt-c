struct c4_complex
{
  float real;
  float imag;
};

float             c4_abs ( struct c4_complex *c );
struct c4_complex *c4_acos ( struct c4_complex *c1 );
struct c4_complex *c4_acosh ( struct c4_complex *c1 );
struct c4_complex *c4_add ( struct c4_complex *c1, struct c4_complex *c2 );
float             c4_arg ( struct c4_complex *c );
struct c4_complex *c4_asin ( struct c4_complex *c1 );
struct c4_complex *c4_asinh ( struct c4_complex *c1 );
struct c4_complex *c4_atan ( struct c4_complex *c1 );
struct c4_complex *c4_atanh ( struct c4_complex *c1 );
struct c4_complex *c4_conj ( struct c4_complex *c1 );
void               c4_copy ( struct c4_complex *c1, struct c4_complex *c2 );
struct c4_complex *c4_cos ( struct c4_complex *c1 );
struct c4_complex *c4_cosh ( struct c4_complex *c1 );
struct c4_complex *c4_cube_root ( struct c4_complex *c1 );
struct c4_complex *c4_div ( struct c4_complex *c1, struct c4_complex *c2 );
struct c4_complex *c4_div_r4 ( struct c4_complex *c1, float r );
struct c4_complex *c4_exp ( struct c4_complex *c1 );
struct c4_complex *c4_i ( void );
float             c4_imag ( struct c4_complex *c );
struct c4_complex *c4_inv ( struct c4_complex *c1 );
struct c4_complex *c4_log ( struct c4_complex *c1 );
float c4_mag ( struct c4_complex *c );
struct c4_complex *c4_mul ( struct c4_complex *c1, struct c4_complex *c2 );
struct c4_complex *c4_neg ( struct c4_complex *c1 );
struct c4_complex *c4_normal_01 ( int *seed );
struct c4_complex *c4_one ( void );
float             c4_real ( struct c4_complex *c );
struct c4_complex *c4_sin ( struct c4_complex *c1 );
struct c4_complex *c4_sinh ( struct c4_complex *c1 );
struct c4_complex *c4_sqrt ( struct c4_complex *c1 );
struct c4_complex *c4_sub ( struct c4_complex *c1, struct c4_complex *c2 );
void               c4_swap ( struct c4_complex *c1, struct c4_complex *c2 );
struct c4_complex *c4_tan ( struct c4_complex *c1 );
struct c4_complex *c4_tanh ( struct c4_complex *c1 );
void               c4_to_cartesian ( struct c4_complex *c, float *x, float *y );
void               c4_to_polar ( struct c4_complex *c, float *r, float *theta );
struct c4_complex *c4_uniform_01 ( int *seed );
struct c4_complex *c4_zero ( void );
struct c4_complex *cartesian_to_c4 ( float x, float y );
struct c4_complex *polar_to_c4 ( float r, float theta );
float              r4_uniform_01 ( int *seed );
void               sort_heap_external ( int n, int *indx, int *i, int *j, int isgn );
void               timestamp ( void );
