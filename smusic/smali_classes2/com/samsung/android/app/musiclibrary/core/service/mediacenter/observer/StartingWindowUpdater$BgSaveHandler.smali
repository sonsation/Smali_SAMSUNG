.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;
.super Landroid/os/Handler;
.source "StartingWindowUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgSaveHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    .line 517
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 518
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 523
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;

    .line 524
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v0    # "data":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SMUSIC-SV-MediaCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartingWindow: fail to save msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
