.class Lcom/samsung/android/app/music/list/local/ArtistFragment$1;
.super Ljava/lang/Object;
.source "ArtistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/ArtistFragment;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 213
    const-string v0, "UiList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onItemClick() | position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    .line 217
    .local v6, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
    invoke-virtual {v6, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "keyword":Ljava/lang/String;
    invoke-virtual {v6, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->access$200(Lcom/samsung/android/app/music/list/local/ArtistFragment;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 220
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2154"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method
