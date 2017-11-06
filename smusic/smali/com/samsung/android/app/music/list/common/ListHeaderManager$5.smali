.class Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;
.super Ljava/lang/Object;
.source "ListHeaderManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/ListHeaderManager;->initPlayAll(Landroid/view/View;)V
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
    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 229
    iget-object v3, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "music_service_pref"

    const/4 v5, 0x4

    .line 230
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "shuffle"

    .line 231
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 234
    .local v0, "isShuffleOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->shuffleAll(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 241
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v1

    .line 242
    .local v1, "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    .line 243
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1543"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .end local v0    # "isShuffleOn":Z
    .end local v1    # "screenIdGetter":Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    :cond_0
    move v0, v2

    .line 231
    goto :goto_0

    .line 239
    .restart local v0    # "isShuffleOn":Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$5;->this$0:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->access$800(Lcom/samsung/android/app/music/list/common/ListHeaderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->playAll(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    goto :goto_1
.end method
