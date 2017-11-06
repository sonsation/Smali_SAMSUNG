.class Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;
.super Ljava/lang/Object;
.source "BackgroundFadeController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 263
    const-string v1, "edge_lighting"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->access$1002(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;Z)Z

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 267
    .local v0, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/edgelighting/BackgroundFadeController;ZZ)V

    .line 270
    .end local v0    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_0
    return-void
.end method
