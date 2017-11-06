.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;


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

.field final synthetic val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performAnimation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 188
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$400(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v2

    sub-int v0, p1, v2

    .line 189
    .local v0, "height":I
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$600(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    invoke-interface {v2, v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->setHeight(I)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$700(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 195
    .local v1, "movableView":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .line 196
    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$800(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$4;->val$parallaxHolder:Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    invoke-interface {v4}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->getPositionY()I

    move-result v4

    add-int/2addr v3, v4

    .line 195
    invoke-virtual {v1, v5, v3, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 198
    .end local v1    # "movableView":Landroid/view/View;
    :cond_1
    return-void
.end method
