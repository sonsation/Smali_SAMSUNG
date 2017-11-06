.class public Lcom/samsung/android/app/music/common/gcm/GcmController;
.super Ljava/lang/Object;
.source "GcmController.java"


# static fields
.field public static final ACTION_PUSH_TOKEN_UPDATED:Ljava/lang/String; = "com.sec.samsung.music.app.action.push_token_updated"

.field public static final GCM_SENDER_ID:Ljava/lang/String; = "463731407234 "

.field private static final TAG:Ljava/lang/String; = "GcmController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initGcm(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->initPPMT(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static sendPushMessage(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const-string v0, "GcmController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPushMessage from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->sendMessage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public static setPushToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->setPushToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    const-string v1, "com.sec.samsung.music.app.KEY_PUSH_TOKEN"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.samsung.music.app.action.push_token_updated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.samsung.music.app.KEY_PUSH_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    const-string v1, "GcmController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GCM Registration Token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static startGcmService(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->startPPMT(Landroid/content/Context;)V

    .line 38
    return-void
.end method
