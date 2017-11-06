.class Lcom/samsung/android/app/music/list/local/GenreFragment$1;
.super Ljava/lang/Object;
.source "GenreFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/GenreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/GenreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/GenreFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/GenreFragment;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/GenreFragment;

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
    .line 201
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onItemClick() | position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/GenreFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/local/GenreFragment$GenreAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "keyword":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/GenreFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x100006

    invoke-static {v1, v2, v0, v0}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/GenreFragment$1;->this$0:Lcom/samsung/android/app/music/list/local/GenreFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/GenreFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2303"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method
