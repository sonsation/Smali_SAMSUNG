.class Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;
.super Ljava/lang/Object;
.source "RadioMainDownloadMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

.field final synthetic val$track:Lcom/samsung/android/app/music/common/model/Track;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->isCelebTrack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    const-string v0, "RadioMainDownloadMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBtnStatus : track.getIsPurhchasable()  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    .line 90
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 104
    :cond_3
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "2"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->this$0:Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu$2;->val$track:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainDownloadMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;Z)V

    goto :goto_0
.end method
