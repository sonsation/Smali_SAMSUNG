.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public grip:F

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3822
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3821
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 3827
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3828
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3829
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3831
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3950
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3952
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3953
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3954
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3955
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3956
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3957
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3958
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3959
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3960
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3962
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 3965
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    .line 3949
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 9
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    const/4 v8, 0x0

    .line 3975
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3976
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3977
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_2

    .line 3978
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3979
    .local v3, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3980
    .local v2, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3981
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 3982
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 3983
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3985
    :cond_1
    invoke-static {v3, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3988
    .end local v2    # "count":I
    .end local v3    # "otherValues":[F
    .end local v4    # "values":[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3989
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3990
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3991
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3992
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3993
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3994
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3995
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3996
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 4000
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->palm:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 3974
    return-void
.end method

.method public getAxisValue(I)F
    .locals 10
    .param p1, "axis"    # I

    .prologue
    .line 4022
    sparse-switch p1, :sswitch_data_0

    .line 4051
    if-ltz p1, :cond_0

    const/16 v5, 0x3f

    if-le p1, v5, :cond_1

    .line 4052
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4024
    :sswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    return v5

    .line 4026
    :sswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    return v5

    .line 4028
    :sswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    return v5

    .line 4030
    :sswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    return v5

    .line 4032
    :sswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    return v5

    .line 4034
    :sswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    return v5

    .line 4036
    :sswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    return v5

    .line 4038
    :sswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    return v5

    .line 4040
    :sswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    return v5

    .line 4043
    :sswitch_9
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    return v5

    .line 4047
    :sswitch_a
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    return v5

    .line 4054
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4055
    .local v2, "bits":J
    const-wide/high16 v6, -0x8000000000000000L

    ushr-long v0, v6, p1

    .line 4056
    .local v0, "axisBit":J
    and-long v6, v2, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 4057
    const/4 v5, 0x0

    return v5

    .line 4059
    :cond_2
    const-wide/16 v6, -0x1

    ushr-long/2addr v6, p1

    not-long v6, v6

    and-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4060
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    return v5

    .line 4022
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .prologue
    const/4 v12, 0x0

    .line 4075
    sparse-switch p1, :sswitch_data_0

    .line 4113
    :goto_0
    if-ltz p1, :cond_0

    const/16 v8, 0x3f

    if-le p1, v8, :cond_1

    .line 4114
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4077
    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4074
    :goto_1
    return-void

    .line 4080
    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_1

    .line 4083
    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_1

    .line 4086
    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_1

    .line 4089
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_1

    .line 4092
    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_1

    .line 4095
    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_1

    .line 4098
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_1

    .line 4101
    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_1

    .line 4105
    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_1

    .line 4110
    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    goto :goto_0

    .line 4116
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4117
    .local v2, "bits":J
    const-wide/high16 v8, -0x8000000000000000L

    ushr-long v0, v8, p1

    .line 4118
    .local v0, "axisBit":J
    const-wide/16 v8, -0x1

    ushr-long/2addr v8, p1

    not-long v8, v8

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 4119
    .local v5, "index":I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4120
    .local v7, "values":[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 4121
    if-nez v7, :cond_4

    .line 4122
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 4123
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4140
    :cond_2
    :goto_2
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4142
    :cond_3
    aput p2, v7, v5

    goto :goto_1

    .line 4125
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4126
    .local v4, "count":I
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 4127
    if-eq v5, v4, :cond_2

    .line 4128
    add-int/lit8 v8, v5, 0x1

    .line 4129
    sub-int v9, v4, v5

    .line 4128
    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_2

    .line 4132
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 4133
    .local v6, "newValues":[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 4134
    add-int/lit8 v8, v5, 0x1

    .line 4135
    sub-int v9, v4, v5

    .line 4134
    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 4136
    move-object v7, v6

    .line 4137
    iput-object v6, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_2

    .line 4075
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
    .end sparse-switch
.end method
