.class public final Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;
.super Ljava/lang/Object;
.source "SetSmartVolumeExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/SettingsFragment;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settingsFragment"    # Lcom/samsung/android/app/music/common/settings/SettingsFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 35
    return-void
.end method

.method private isRadio()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 81
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 7
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 39
    const-string v4, "SET_SMART_VOLUME"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 40
    sget-object v4, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "execute() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->isRadio()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v4

    if-nez v4, :cond_1

    .line 44
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->TAG:Ljava/lang/String;

    const-string v5, "execute() - This is a streaming content."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "Settings"

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v4, "Content"

    const-string v5, "IsStreaming"

    const-string/jumbo v6, "yes"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 76
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return v3

    .line 52
    :cond_1
    const-string v4, "SmartVolumeOn"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 53
    .local v1, "on":Z
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setSmartVolume(Z)Z

    move-result v2

    .line 55
    .local v2, "success":Z
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v4, "Settings"

    invoke-direct {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz v1, :cond_3

    .line 57
    if-eqz v2, :cond_2

    .line 58
    const-string v4, "SmartVolume"

    const-string v5, "AlreadyOn"

    const-string v6, "no"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetSmartVolumeExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v5, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v4, "SmartVolume"

    const-string v5, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_3
    if-eqz v2, :cond_4

    .line 66
    const-string v4, "SmartVolume"

    const-string v5, "AlreadyOff"

    const-string v6, "no"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_4
    const-string v4, "SmartVolume"

    const-string v5, "AlreadyOff"

    const-string/jumbo v6, "yes"

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v1    # "on":Z
    .end local v2    # "success":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method
