.class Lcom/samsung/android/app/music/list/local/AlbumFragment$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$SpanSizeLookup;
.source "AlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/AlbumFragment;->onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

.field final synthetic val$gridLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AlbumFragment;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;->val$gridLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->getItemCount()I

    move-result v0

    .line 271
    .local v0, "length":I
    if-gt v0, p1, :cond_0

    .line 272
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getSpanSize() couldn\'t move position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;->val$gridLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 277
    :goto_0
    return v1

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->getItemViewType(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;->val$gridLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;

    .line 277
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0
.end method
