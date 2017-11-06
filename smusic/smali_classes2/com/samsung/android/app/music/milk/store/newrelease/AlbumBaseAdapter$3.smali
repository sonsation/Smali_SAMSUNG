.class Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$3;
.super Ljava/lang/Object;
.source "AlbumBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

.field final synthetic val$album:Lcom/samsung/android/app/music/common/model/Album;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Lcom/samsung/android/app/music/common/model/Album;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$3;->val$album:Lcom/samsung/android/app/music/common/model/Album;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$3;->this$0:Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$3;->val$album:Lcom/samsung/android/app/music/common/model/Album;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Ljava/lang/String;)V

    .line 102
    return-void
.end method
