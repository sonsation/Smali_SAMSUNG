.class Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->collapseGlowIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->access$102(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->access$202(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;I)I

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->access$302(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;I)I

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->setTouchPointAngle(F)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$3;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->access$402(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;Z)Z

    .line 296
    return-void
.end method
