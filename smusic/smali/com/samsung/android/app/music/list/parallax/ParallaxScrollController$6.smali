.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$6;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->initExpandableView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$6;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performAnimation(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$6;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1100(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$6;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1100(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 341
    return-void
.end method
