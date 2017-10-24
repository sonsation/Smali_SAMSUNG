.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;
.super Ljava/lang/Object;
.source "SprTimeInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# static fields
.field static final DAY_MILLISECONDS:I = 0x5265c00

.field public static final DAY_TYPE:I = 0x1

.field static final WEEK_MILLISECONDS:I = 0x240c8400

.field public static final WEEK_TYPE:I = 0x2


# instance fields
.field private mDuration:I

.field private mPeriodType:I

.field private mQuotient:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 15
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "duration"    # I
    .param p2, "type"    # I
    .param p3, "quotient"    # I

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 12
    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 20
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 21
    iput p2, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 22
    iput p3, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 19
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11
    .param p1, "input"    # F

    .prologue
    const/4 v10, 0x1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    .local v0, "currentTime":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v2, v0, v6

    .line 42
    .local v2, "now":J
    iget v6, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    if-ne v6, v10, :cond_1

    .line 43
    const-wide/32 v6, 0x5265c00

    rem-long/2addr v2, v6

    .line 48
    :goto_0
    iget v6, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    int-to-long v6, v6

    rem-long v4, v2, v6

    .line 50
    .local v4, "tick":J
    iget v6, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    if-le v6, v10, :cond_0

    .line 51
    iget v6, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    int-to-long v6, v6

    div-long v6, v4, v6

    iget v8, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    int-to-long v8, v8

    mul-long v4, v6, v8

    .line 54
    :cond_0
    long-to-float v6, v4

    iget v7, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    return v6

    .line 45
    .end local v4    # "tick":J
    :cond_1
    const-wide/32 v6, 0xf731400

    sub-long v6, v2, v6

    const-wide/32 v8, 0x240c8400

    rem-long v2, v6, v8

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mDuration:I

    .line 25
    return-void
.end method

.method public setPeriodType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mPeriodType:I

    .line 29
    return-void
.end method

.method public setQuotient(I)V
    .locals 0
    .param p1, "quotient"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;->mQuotient:I

    .line 33
    return-void
.end method
