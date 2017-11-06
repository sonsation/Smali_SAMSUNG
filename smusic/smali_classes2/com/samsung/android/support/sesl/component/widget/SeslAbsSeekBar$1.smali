.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar$1;
.super Ljava/lang/Object;
.source "SeslAbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->initMuteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1857
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->access$002(Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;I)I

    .line 1858
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsSeekBar;->onSlidingRefresh(I)V

    .line 1859
    return-void
.end method
