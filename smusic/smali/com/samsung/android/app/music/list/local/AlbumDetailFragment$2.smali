.class Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$2;
.super Ljava/lang/Object;
.source "AlbumDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    .line 263
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1081"

    const-string v3, "Local"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method
