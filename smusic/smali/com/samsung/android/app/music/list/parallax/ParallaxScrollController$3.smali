.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->setParallaxHolder(ILcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

.field final synthetic val$page:I

.field final synthetic val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;ILcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    iput p2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->val$page:I

    iput-object p3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->val$page:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->val$page:I

    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;->val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3$1;-><init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    :cond_0
    return-void
.end method
