/* 
 * CS:APP Data Lab 
 * 
 * <吴羽迪 2300010631>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2024 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */

/* 
 * bitOr - x|y using only ~ and & 
 *   Example: bitOr(6, 5) = 7
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitOr(int x, int y) {
  return ~((~x) & (~y));
}
/* 
 * upperBits - pads n upper bits with 1's
 *  You may assume 0 <= n <= 32
 *  Example: upperBits(4) = 0xF0000000
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 10
 *  Rating: 1
 */
int upperBits(int n) {
  int mask = ~0 << (32 + (~n + 1));
  return ~(~(!n) + 1) & mask;
}
/*
 * fullAdd - 4-bits add using bit-wise operations only.
 *   (0 <= x, y < 16) 
 *   Example: fullAdd(12, 7) = 3,
 *            fullAdd(7, 8) = 15,
 *   Legal ops: ~ | ^ & << >>
 *   Max ops: 30
 *   Rating: 2
 */
int fullAdd(int x, int y) {
    int sum1 = x ^ y;
    int carry1 = (x & y) << 1;
    int sum2 = sum1 ^ carry1;
    int carry2 = (sum1 & carry1) << 1;
    int sum3 = sum2 ^ carry2;
    int carry3 = (sum2 & carry2) << 1;
    int sum4 = sum3 ^ carry3;
    int carry4 = (sum3 & carry3) << 1;
    return sum4 & 15;
}
/* 
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateLeft(0x87654321,4) = 0x76543218
 *   Legal ops: ~ & ^ | + << >> !
 *   Max ops: 25
 *   Rating: 3 
 */
int rotateLeft(int x, int n) {
  int left = (~(!!n) + 1) & (x >> (32 + (~n + 1))) & ~(~0 << n);
    int right = x << n;
    return left + right;
}
/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5) = 0, bitParity(7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int bitParity(int x) {
/**
 * x与x>>16异或可以得到前一半和后一半的奇偶性，以此类推
 */
  x = x ^ (x >> 16);
  x = x ^ (x >> 8);
  x = x ^ (x >> 4);
  x = x ^ (x >> 2);
  x = x ^ (x >> 1);
  return x & 0x1;
}
/* 
 * palindrome - return 1 if x is palindrome in binary form,
 *   return 0 otherwise
 *   A number is palindrome if it is the same when reversed
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   Example: palindrome(0xff0000ff) = 1,
 *            palindrome(0xff00ff00) = 0
 *   Legal ops: ~ ! | ^ & << >> +
 *   Max ops: 40
 *   Rating: 4

 */
int palindrome(int x) {
/**
 * 翻转一个十六位数可以按照如下步骤进行：
 * 交换前八位和后八位；交换每八位内的左右四位；
 * 交换每四位内的左右两位；交换每两位内的左右位。
 */
  int left = (x >> 16) & 0x0000FFFF;
  int right = x & 0x0000FFFF;

  left = (left >> 8) | (left << 8);
  left = ((left & 0x00000f0f) << 4) | ((left & 0x0000f0f0) >> 4);
  left = ((left & 0x00003333) << 2) | ((left & 0x0000cccc) >> 2);
  left = ((left & 0x00005555) << 1) | ((left & 0x0000aaaa) >> 1);
  return !(left ^ right); // 最后直接取！就行了
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return ~x + 1;
}
/* 
 * oneMoreThan - return 1 if y is one more than x, and 0 otherwise
 *   Examples oneMoreThan(0, 1) = 1, oneMoreThan(-1, 1) = 0
 *   Legal ops: ~ & ! ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int oneMoreThan(int x, int y) {
  int sum = x + 1;
  int a = x >> 31;
  int b = sum >> 31;
  return !(y ^ sum) & !(!a & b);
  /* 排除a=0和b=1的情况，即x=int_max, x+1=int_min的情况 */
}
/*
 * ezThreeFourths - multiplies by 3/4 rounding toward 0,
 *   Should exactly duplicate effect of C expression (x*3/4),
 *   including overflow behavior.
 *   Examples: ezThreeFourths(11) = 8
 *             ezThreeFourths(-9) = -6
 *             ezThreeFourths(1073741824) = -268435456 (overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 3
 */
int ezThreeFourths(int x) {
  // 注意，要完全模拟(x*3/4)的作用，要先考虑*3溢出的情况
  int threex = x + (x << 1);
  // 然后正负要分开讨论
  int sign = threex >> 31;
  return (threex + (sign & 3)) >> 2; // 注意&会比+先计算
}
/* 
 * isLess - if x < y  then return 1, else return 0 
 *   Example: isLess(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLess(int x, int y) {
  // 获取符号位（第31位）
    int sign_x = (x >> 31) & 1;  // x的符号位
    int sign_y = (y >> 31) & 1;  // y的符号位
    
    // 情况1: x和y符号不同
    int diff_sign = sign_x & !sign_y;  // x为负且y为正时返回1
    
    // 情况2: x和y符号相同，检查x-y的符号
    int same_sign = !(sign_x ^ sign_y);  // 符号相同时为1
    int diff = x + (~y + 1);             // x - y
    int diff_sign_bit = (diff >> 31) & 1; // x-y的符号位
    
    // 如果符号不同且x为负，或者符号相同且x-y为负，则返回1
    return diff_sign | (same_sign & diff_sign_bit);
}
/*
 * satMul2 - multiplies by 2, saturating to Tmin or Tmax if overflow
 *   Examples: satMul2(0x30000000) = 0x60000000
 *             satMul2(0x40000000) = 0x7FFFFFFF (saturate to TMax)
 *             satMul2(0x90000000) = 0x80000000 (saturate to TMin)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int satMul2(int x) {
  int times2 = x << 1;
  int tmin = 1 << 31;
  int tmax = ~tmin;
  int overflow = (x ^ times2) >> 31;
  
  // 检测溢出方向：x的符号位决定是正溢出还是负溢出
  int sign_mask = x >> 31;
  
  // 构造边界值：TMax或TMin
  int boundary = (tmax & ~sign_mask) | (tmin & sign_mask);
  
  // 选择结果：溢出时返回边界值，否则返回正常结果
  return (overflow & boundary) | (~overflow & times2);
  // 条件成立输出ffffffff，否则输出0
  // 条件用&，每一类之间用|
}
/*
 * modThree - calculate x mod 3 without using %.
 *   Example: modThree(12) = 0,
 *            modThree(2147483647) = 1,
 *            modThree(-8) = -2,
 *   Legal ops: ~ ! | ^ & << >> +
 *   Max ops: 60
 *   Rating: 4
 */
int modThree(int x) {
  //2的偶数次幂模3余1，二分是最快的，注意处理正负
  int mask,y,z,a,b,c,tmp;
  mask = (x >> 31);
  x = (x^(x>>31))+((x>>31)&1);
  //cout<<"absx = "<<x<<endl;
  tmp = (0xFF << 8) + 0xFF;
  y = ((x >> 16) & tmp) + (x & tmp);
  y = (((1 << 16) & y) >> 16) + (y & tmp);
  z = ((y >> 8) & (0XFF)) + (y & (0XFF));
  z = (((1 << 8) & z) >> 8) + (z & (0xFF));
  a = ((z >> 4) & (0Xf)) + (z & (0Xf));
  a = (((1 << 4) & a) >> 4) + (a & (0xf));
  b = ((a >> 2) & (0X3)) + (a & (0X3));
  b = (((1 << 2) & b) >> 2) + (b & (0x3));
  c = b & (b>>1);
  c = c + (c << 1);
  b = b + ~c + 1;
  return (mask & (~b + 1)) + ((~mask) & (b));
}
/* 
 * float_half - Return bit-level equivalent of expression 0.5*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_half(unsigned uf) {
  int sign_mask = 0x80000000, exp_mask = 0x7f800000, frac_mask = 0x7fffff;
  int sign = uf & sign_mask, exp = uf & exp_mask, frac = uf & frac_mask;
  int round = !((uf & 3) ^ 3);
  //只有后两位是11时，除以2后的结果要加1
  if(exp == 0){
    frac = (frac >> 1) + round; // 尾数右移1，舍入
    return sign | frac;
  }
  if((exp >> 23)== 1){
    frac = 0x400000 + (frac >> 1) + round; // 尾数右移1，舍入
    return sign | frac;
  }
  if(exp == exp_mask ){
    return uf;
  }
  exp = exp - 0x800000;
  return sign | exp | frac;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
   unsigned sign = x >> 31 & 1, exp, frac, round;
   int x_exp, frac_mask;
   if (!x) // x=0，会在求x最高非零位时出错，所以特判
      return 0;
   if (!(x ^ (1 << 31))) // x=TMin，会在下一步对x取反过程中出错，所以特判
      return 0xcf << 24;
   if (sign)
      x = -x;
   // x_exp 代表 x 的最高非零位的位置，也即 x 的精度位的最高位的位置
   x_exp = 31;
   while (!(x >> x_exp))
      x_exp--;
   exp = x_exp + 0x7f; // exp+bias
   x <<= (31 - x_exp); // 得到小数部分
   frac_mask = 0x7fffff;
   // 右移 8 位，使得尾数位对齐
   frac = (x >> 8) & frac_mask;
   round = x & 0xff; // 得到要被舍入的小数部分
   frac += ((round > 0x80) || ((round == 0x80) && (frac & 1))); // 等价于判断是否大于128，或者等于128且最低位为1，即向偶数舍入
   // 对于舍入后进位的情况，因为最高位从23变为24，所以要且上一个掩码，而且增加一位阶码
   if (frac >> 23) {
      frac &= frac_mask;
      exp += 1;
   }
   return sign << 31 | exp << 23 | frac;
}
/* 
 * float64_f2i - Return bit-level equivalent of expression (int) f
 *   for 64 bit floating point argument f.
 *   Argument is passed as two unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   double-precision floating point value.
 *   Notice: uf1 contains the lower part of the f64 f
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 20
 *   Rating: 4
 */
int float64_f2i(unsigned uf1, unsigned uf2) {
    unsigned sign = (uf2 >> 31);
    int exp_mask = 0x7ff;
    int exp = ((uf2 >> 20) & exp_mask) - 1023;
    unsigned frac = ((uf2 & 0xfffff) << 11) | (((uf1 >> 21) & exp_mask)) | (0x80000000); // uf2的低20位+uf1的高11位
    if (exp < 0)
        return 0;
    if (exp >= 31)
        return 0x80000000;
    frac = (frac >> (31 - exp));
    if (sign)
        return -frac;
    return frac;
}
/* 
 * float_pwr2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 30 
 *   Rating: 4
 */
unsigned float_pwr2(int x) {
    if(x < -149)
      return 0;
    if(x >= 128)
      return 0x7F800000;
    if(x <= -127)
      return 1 << (149 + x);
    if(x <= 127)
      return (x + 127) << 23;
}

