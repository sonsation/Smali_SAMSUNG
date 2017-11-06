.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;
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
    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 303
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageScrollStateChanged() | state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Z)V

    .line 315
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$1000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Z)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 274
    if-lez p3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$900(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)I

    move-result v3

    if-ge p1, v3, :cond_1

    move v2, p1

    .line 276
    .local v2, "targetPosition":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    .line 278
    .local v1, "targetParallaxHolder":Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPageScrolled() | target position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | parallaxHolder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v0, v3

    .line 283
    .local v0, "positionY":I
    if-eqz v1, :cond_0

    .line 284
    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->scrollTo(I)V

    .line 287
    .end local v0    # "positionY":I
    .end local v1    # "targetParallaxHolder":Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
    .end local v2    # "targetPosition":I
    :cond_0
    return-void

    .line 275
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 291
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$902(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;I)I

    .line 292
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    .line 293
    .local v0, "parallaxHolder":Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPageSelected() | position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | parallaxHolder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$5;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$300(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v1, v2

    .line 296
    .local v1, "positionY":I
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;->scrollTo(I)V

    .line 299
    :cond_0
    return-void
.end method
