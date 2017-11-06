.class Lcom/samsung/android/app/music/common/player/SeekController$1;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/SeekController;->animatedGoto0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/SeekController;

.field final synthetic val$oldOffset:I

.field final synthetic val$overShootK:F


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/SeekController;FI)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/SeekController;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    iput p2, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->val$overShootK:F

    iput p3, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->val$oldOffset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    .local v1, "progress":I
    if-gez v1, :cond_0

    .line 250
    neg-int v2, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->val$overShootK:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 251
    .local v0, "offset":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/SeekController;->access$000(Lcom/samsung/android/app/music/common/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->val$oldOffset:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 255
    .end local v0    # "offset":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/SeekController;->access$000(Lcom/samsung/android/app/music/common/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 256
    return-void

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/SeekController;->access$000(Lcom/samsung/android/app/music/common/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$1;->val$oldOffset:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    goto :goto_0
.end method
