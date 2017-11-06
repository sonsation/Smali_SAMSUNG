.class Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;->initSelectAll(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    .line 214
    .local v0, "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 215
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1542"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setItemCheckedAll(Z)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$4;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->startActionMode()V

    .line 219
    return-void
.end method
