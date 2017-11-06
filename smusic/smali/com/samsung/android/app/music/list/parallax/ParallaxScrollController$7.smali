.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 345
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 364
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 365
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 366
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setEnabled(Z)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 356
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 357
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setEnabled(Z)V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 372
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 348
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 349
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 350
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$7;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setEnabled(Z)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method
