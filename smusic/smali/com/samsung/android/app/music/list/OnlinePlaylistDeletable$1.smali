.class Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;
.super Ljava/lang/Object;
.source "OnlinePlaylistDeletable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->deleteItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

.field final synthetic val$localIds:Ljava/util/ArrayList;

.field final synthetic val$onlineIds:Ljava/util/ArrayList;

.field final synthetic val$onlineSourceIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->val$onlineSourceIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->val$localIds:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->val$onlineIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->access$000(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->access$000(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->val$onlineSourceIds:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deletePlaylists(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/ArrayList;)I

    move-result v0

    .line 102
    .local v0, "reqId":I
    iget-object v1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->access$100(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->val$localIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->access$200(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;->val$onlineIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .end local v0    # "reqId":I
    :cond_0
    return-void
.end method
