.class Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$2;
.super Ljava/lang/Object;
.source "DialIndicatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 267
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 272
    .local v0, "intVal":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/DialIndicatorView;I)V

    .line 273
    return-void
.end method
