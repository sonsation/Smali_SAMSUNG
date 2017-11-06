.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;


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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    iput p2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenOffsetChanged(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;->val$page:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;

    .line 146
    .local v0, "parallaxHolder":Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChildrenOffsetChanged() | parallaxHolder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | recyclerView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$1;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$200(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V

    .line 151
    :cond_0
    return-void
.end method
