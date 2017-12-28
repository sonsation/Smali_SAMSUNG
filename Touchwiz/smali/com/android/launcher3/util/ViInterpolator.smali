.class public final Lcom/android/launcher3/util/ViInterpolator;
.super Ljava/lang/Object;
.source "ViInterpolator.java"


# static fields
.field public static final ACCELERATION:I = 0x1

.field public static final DECELERATION:I = 0x2

.field public static final SHARP:I = 0x3

.field public static final SINE_IN_33:I = 0xa

.field public static final SINE_IN_50:I = 0xb

.field public static final SINE_IN_60:I = 0xc

.field public static final SINE_IN_70:I = 0xd

.field public static final SINE_IN_80:I = 0xe

.field public static final SINE_IN_90:I = 0xf

.field public static final SINE_IN_OUT_33:I = 0x1e

.field public static final SINE_IN_OUT_50:I = 0x1f

.field public static final SINE_IN_OUT_60:I = 0x20

.field public static final SINE_IN_OUT_70:I = 0x21

.field public static final SINE_IN_OUT_80:I = 0x22

.field public static final SINE_IN_OUT_90:I = 0x23

.field public static final SINE_OUT_33:I = 0x14

.field public static final SINE_OUT_50:I = 0x15

.field public static final SINE_OUT_60:I = 0x16

.field public static final SINE_OUT_70:I = 0x17

.field public static final SINE_OUT_80:I = 0x18

.field public static final SINE_OUT_90:I = 0x19

.field public static final STANDARD:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterploator(I)Landroid/view/animation/PathInterpolator;
    .locals 5
    .param p0, "param"    # I

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 105
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "y2":F
    move v1, v3

    .local v1, "x2":F
    move v2, v3

    .local v2, "y1":F
    move v0, v3

    .line 109
    .local v0, "x1":F
    :goto_0
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v4

    .line 39
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_1
    const v0, 0x3ecccccd    # 0.4f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 40
    .restart local v3    # "y2":F
    goto :goto_0

    .line 42
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_2
    const v0, 0x3ecccccd    # 0.4f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 43
    .restart local v3    # "y2":F
    goto :goto_0

    .line 45
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 46
    .restart local v3    # "y2":F
    goto :goto_0

    .line 48
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_4
    const v0, 0x3ecccccd    # 0.4f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f19999a    # 0.6f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    .restart local v3    # "y2":F
    goto :goto_0

    .line 51
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_5
    const v0, 0x3ea8f5c3    # 0.33f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f547ae1    # 0.83f

    .restart local v1    # "x2":F
    const v3, 0x3f547ae1    # 0.83f

    .line 52
    .restart local v3    # "y2":F
    goto :goto_0

    .line 54
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_6
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f547ae1    # 0.83f

    .restart local v1    # "x2":F
    const v3, 0x3f547ae1    # 0.83f

    .line 55
    .restart local v3    # "y2":F
    goto :goto_0

    .line 57
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_7
    const v0, 0x3f19999a    # 0.6f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f547ae1    # 0.83f

    .restart local v1    # "x2":F
    const v3, 0x3f547ae1    # 0.83f

    .line 58
    .restart local v3    # "y2":F
    goto :goto_0

    .line 60
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_8
    const v0, 0x3f333333    # 0.7f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f547ae1    # 0.83f

    .restart local v1    # "x2":F
    const v3, 0x3f547ae1    # 0.83f

    .line 61
    .restart local v3    # "y2":F
    goto :goto_0

    .line 63
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_9
    const v0, 0x3f4ccccd    # 0.8f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f547ae1    # 0.83f

    .restart local v1    # "x2":F
    const v3, 0x3f547ae1    # 0.83f

    .line 64
    .restart local v3    # "y2":F
    goto :goto_0

    .line 66
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_a
    const v0, 0x3f666666    # 0.9f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f547ae1    # 0.83f

    .restart local v1    # "x2":F
    const v3, 0x3f547ae1    # 0.83f

    .line 67
    .restart local v3    # "y2":F
    goto :goto_0

    .line 69
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_b
    const v0, 0x3e2e147b    # 0.17f

    .restart local v0    # "x1":F
    const v2, 0x3e2e147b    # 0.17f

    .restart local v2    # "y1":F
    const v1, 0x3f2b851f    # 0.67f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 70
    .restart local v3    # "y2":F
    goto :goto_0

    .line 72
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_c
    const v0, 0x3e2e147b    # 0.17f

    .restart local v0    # "x1":F
    const v2, 0x3e2e147b    # 0.17f

    .restart local v2    # "y1":F
    const/high16 v1, 0x3f000000    # 0.5f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 75
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_d
    const v0, 0x3e2e147b    # 0.17f

    .restart local v0    # "x1":F
    const v2, 0x3e2e147b    # 0.17f

    .restart local v2    # "y1":F
    const v1, 0x3ecccccd    # 0.4f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 76
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 78
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_e
    const v0, 0x3e2e147b    # 0.17f

    .restart local v0    # "x1":F
    const v2, 0x3e2e147b    # 0.17f

    .restart local v2    # "y1":F
    const v1, 0x3e99999a    # 0.3f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 79
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 81
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_f
    const v0, 0x3e2e147b    # 0.17f

    .restart local v0    # "x1":F
    const v2, 0x3e2e147b    # 0.17f

    .restart local v2    # "y1":F
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 84
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_10
    const v0, 0x3e2e147b    # 0.17f

    .restart local v0    # "x1":F
    const v2, 0x3e2e147b    # 0.17f

    .restart local v2    # "y1":F
    const v1, 0x3dcccccd    # 0.1f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 85
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 87
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_11
    const v0, 0x3ea8f5c3    # 0.33f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3f2b851f    # 0.67f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 88
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 90
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_12
    const v0, 0x3ea8f5c3    # 0.33f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const/high16 v1, 0x3f000000    # 0.5f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 91
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 93
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_13
    const v0, 0x3ea8f5c3    # 0.33f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3ecccccd    # 0.4f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 94
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 96
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_14
    const v0, 0x3ea8f5c3    # 0.33f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3e99999a    # 0.3f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 97
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 99
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_15
    const v0, 0x3ea8f5c3    # 0.33f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 100
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 102
    .end local v0    # "x1":F
    .end local v1    # "x2":F
    .end local v2    # "y1":F
    .end local v3    # "y2":F
    :pswitch_16
    const v0, 0x3ea8f5c3    # 0.33f

    .restart local v0    # "x1":F
    const/4 v2, 0x0

    .restart local v2    # "y1":F
    const v1, 0x3dcccccd    # 0.1f

    .restart local v1    # "x2":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 103
    .restart local v3    # "y2":F
    goto/16 :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
