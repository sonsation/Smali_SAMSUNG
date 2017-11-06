.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3$1;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3$1;->this$1:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3$1;->this$1:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3$1;->this$1:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->scrollTo(I)V

    .line 179
    return-void
.end method
