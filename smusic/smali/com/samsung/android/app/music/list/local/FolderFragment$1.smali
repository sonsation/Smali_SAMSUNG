.class Lcom/samsung/android/app/music/list/local/FolderFragment$1;
.super Ljava/lang/Object;
.source "FolderFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/FolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/FolderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/FolderFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 202
    const-string v2, "UiList"

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

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/FolderFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "keyword":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/FolderFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/FolderAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/FolderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x100007

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/FolderFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/FolderFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/FolderFragment;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2403"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
