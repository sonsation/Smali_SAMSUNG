.class Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;->val$localIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;->this$0:Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->access$000(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;->val$localIds:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->toPrimitive(Ljava/util/ArrayList;)[J

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->access$300(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;Landroid/app/Activity;[J[J)V

    .line 112
    return-void
.end method
