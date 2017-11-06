.class Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;
.super Ljava/lang/Object;
.source "PlayerChangeBufferingUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeToMediaPlayer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$1;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 146
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-static {}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AS: Back key pressed and AVPlayer action will be canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->changeToDefaultPlayer()V

    .line 149
    return-void
.end method
