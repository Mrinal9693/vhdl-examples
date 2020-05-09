/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/nibba/Xilinx/online_class/MUX_4_1_if.vhd";



static void work_a_3516697115_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4478);
    t8 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t8 = 0;

LAB7:    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4480);
    t8 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t8 = 0;

LAB15:    if (t8 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4482);
    t8 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t8 = 0;

LAB23:    if (t8 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4484);
    t8 = 1;
    if (2U == 2U)
        goto LAB29;

LAB30:    t8 = 0;

LAB31:    if (t8 != 0)
        goto LAB27;

LAB28:
LAB3:    t1 = (t0 + 2824);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = (0 - 3);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = (t0 + 2904);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t18;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB3;

LAB5:    t9 = 0;

LAB8:    if (t9 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t10 = (t1 + t9);
    t11 = (t6 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB6;

LAB10:    t9 = (t9 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(46, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = (1 - 3);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = (t0 + 2904);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t18;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB3;

LAB13:    t9 = 0;

LAB16:    if (t9 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t10 = (t1 + t9);
    t11 = (t6 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB14;

LAB18:    t9 = (t9 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(48, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = (2 - 3);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = (t0 + 2904);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t18;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB3;

LAB21:    t9 = 0;

LAB24:    if (t9 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t10 = (t1 + t9);
    t11 = (t6 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB22;

LAB26:    t9 = (t9 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(50, ng0);
    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = (3 - 3);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t12 = (t13 + t17);
    t18 = *((unsigned char *)t12);
    t19 = (t0 + 2904);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t18;
    xsi_driver_first_trans_fast_port(t19);
    goto LAB3;

LAB29:    t9 = 0;

LAB32:    if (t9 < 2U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t10 = (t1 + t9);
    t11 = (t6 + t9);
    if (*((unsigned char *)t10) != *((unsigned char *)t11))
        goto LAB30;

LAB34:    t9 = (t9 + 1);
    goto LAB32;

}


extern void work_a_3516697115_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3516697115_3212880686_p_0};
	xsi_register_didat("work_a_3516697115_3212880686", "isim/MUX_4_1_if_test_isim_beh.exe.sim/work/a_3516697115_3212880686.didat");
	xsi_register_executes(pe);
}
