.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;
.super Ljava/lang/Object;
.source "RadioMainFavoriteMenu.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->clickFavoriteBtn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

.field final synthetic val$track:Lcom/samsung/android/app/music/common/model/Track;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 4
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 300
    if-eqz p1, :cond_0

    .line 301
    invoke-static {}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$200()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;ZZI)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    :cond_0
    return-void
.end method

.method public showLoadingProgress(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 311
    return-void
.end method
