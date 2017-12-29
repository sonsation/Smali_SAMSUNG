.class Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;
.super Ljava/lang/Object;
.source "PathLineAnimationModelFactory.java"

# interfaces
.implements Lcom/altamirasoft/path_animation/PathAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;


# direct methods
.method constructor <init>(Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelay(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDelay:[I

    if-nez v0, :cond_1

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDelay:I

    int-to-long v0, v0

    return-wide v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDelay:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDelay:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDirection(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDirection:[I

    if-nez v0, :cond_1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDirection:I

    return v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDirection:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDirection:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDuration(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDuration:[I

    if-nez v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultDuration:I

    int-to-long v0, v0

    return-wide v0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDuration:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mDuration:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mInterpolator:[Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mInterpolator:[Landroid/animation/TimeInterpolator;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mInterpolator:[Landroid/animation/TimeInterpolator;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRepeatCount(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatCount:[I

    if-nez v0, :cond_1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatCount:I

    return v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatCount:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatCount:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRepeatMode(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatMode:[I

    if-nez v0, :cond_1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultRepeatMode:I

    return v0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatMode:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mRepeatMode:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStartPoint(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mStartPoint:[I

    if-nez v0, :cond_1

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->defaultStartPoint:I

    return v0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mStartPoint:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;

    iget-object v0, v0, Lcom/altamirasoft/path_animation/PathLineAnimationModelFactory;->mStartPoint:[I

    aget v0, v0, p1

    return v0
.end method
