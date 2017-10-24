.class public Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
.super Ljava/lang/Object;
.source "SecTransitionOption.java"


# instance fields
.field private mDuration:I

.field private mMovePivot:I

.field private mScalePivot:I

.field private mStartDelay:I

.field private mTransitionType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    .line 36
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    .line 38
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    .line 39
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    .line 40
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V
    .locals 1
    .param p1, "options"    # Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    .line 36
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    .line 38
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    .line 39
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    .line 40
    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->copyFrom(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    .line 45
    return-void
.end method

.method public static final combineOptions(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 3
    .param p0, "base"    # Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .param p1, "sub"    # Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    .prologue
    const/4 v2, -0x1

    .line 153
    new-instance v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;-><init>(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    .line 155
    .local v0, "combined":Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    if-eq v1, v2, :cond_0

    .line 156
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    .line 158
    :cond_0
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    if-eq v1, v2, :cond_1

    .line 159
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    .line 161
    :cond_1
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    if-eq v1, v2, :cond_2

    .line 162
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    .line 164
    :cond_2
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    if-eq v1, v2, :cond_3

    .line 165
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    .line 167
    :cond_3
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    if-eq v1, v2, :cond_4

    .line 168
    iget v1, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    .line 171
    :cond_4
    return-object v0
.end method

.method public static final generateDefaultOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 2
    .param p0, "isRtl"    # Z

    .prologue
    .line 134
    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    .line 135
    .local v0, "defaultOption":Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    if-eqz p0, :cond_0

    .line 136
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setMovePivot(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    .line 138
    :cond_0
    return-object v0
.end method

.method private static final generateEmptyOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-direct {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;-><init>()V

    .line 124
    .local v0, "options":Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    const/16 v1, 0x190

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    .line 125
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    .line 126
    return-object v0
.end method

.method public static final generateMoveOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method public static final generateMoveOption(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 2
    .param p0, "pivot"    # I

    .prologue
    .line 179
    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateEmptyOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    .line 180
    .local v0, "options":Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setMovePivot(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    .line 182
    return-object v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V
    .locals 1
    .param p1, "options"    # Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    .prologue
    .line 50
    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    .line 53
    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    .line 54
    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    .line 55
    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    .line 56
    iget v0, p1, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    iput v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    .line 49
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mDuration:I

    return v0
.end method

.method public getMovePivot()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    return v0
.end method

.method public getScalePivot()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mScalePivot:I

    return v0
.end method

.method public getStartDelay()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mStartDelay:I

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    return v0
.end method

.method public isGlobalAlphaEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    iget v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMoveEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iget v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isScaleEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget v1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setMovePivot(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 0
    .param p1, "pivot"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mMovePivot:I

    .line 79
    return-object p0
.end method

.method public setTransitionType(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 0
    .param p1, "transitionType"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->mTransitionType:I

    .line 97
    return-object p0
.end method
