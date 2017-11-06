.class Lcom/samsung/android/app/music/common/player/SeekController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeekController.java"


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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/SeekController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/SeekController;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    iput p2, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->val$oldOffset:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController;->access$000(Lcom/samsung/android/app/music/common/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->val$oldOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/SeekController;->access$102(Lcom/samsung/android/app/music/common/player/SeekController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController;->access$200(Lcom/samsung/android/app/music/common/player/SeekController;)V

    .line 264
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController;->access$000(Lcom/samsung/android/app/music/common/player/SeekController;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->val$oldOffset:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/SeekController;->access$102(Lcom/samsung/android/app/music/common/player/SeekController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController;->access$300(Lcom/samsung/android/app/music/common/player/SeekController;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->access$400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$2;->this$0:Lcom/samsung/android/app/music/common/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/SeekController;->access$200(Lcom/samsung/android/app/music/common/player/SeekController;)V

    .line 272
    return-void
.end method
