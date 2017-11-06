.class public Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;
.super Ljava/lang/Object;
.source "SetDownloadAudioQualityExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor$Quality;
    }
.end annotation


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
    .line 26
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->TAG:Ljava/lang/String;

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
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 67
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 10
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    .line 71
    const-string v7, "SET_AUDIO_QUALITY_DOWNLOADING"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 72
    sget-object v7, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "execute() - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v7, "DOWNLOAD_AUDIO_QUALITY"

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "parameter":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    sget-object v7, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->TAG:Ljava/lang/String;

    const-string v8, "execute() - Empty Parameter"

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "Exist"

    .line 80
    .local v0, "attr":Ljava/lang/String;
    const-string v5, "no"

    .line 108
    .local v5, "value":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v7, "Settings"

    invoke-direct {v2, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v7, "DownloadAudioQuality"

    invoke-virtual {v2, v7, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v7, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v8, v6, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 113
    .end local v0    # "attr":Ljava/lang/String;
    .end local v2    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v3    # "parameter":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    return v6

    .line 82
    .restart local v3    # "parameter":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor$Quality;->getQuality(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor$Quality;

    move-result-object v4

    .line 84
    .local v4, "quality":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor$Quality;
    if-eqz v4, :cond_2

    .line 85
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v7

    const-string v8, "milk_download_quality"

    .line 86
    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, "currentQuality":I
    invoke-virtual {v4}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor$Quality;->getPrefValue()I

    move-result v7

    if-eq v1, v7, :cond_1

    .line 89
    sget-object v7, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "execute() - Valid Different Parameter : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v7

    const-string v8, "milk_download_quality"

    .line 91
    invoke-virtual {v4}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor$Quality;->getPrefValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 92
    iget-object v7, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateDownloadAudioQuality()V

    .line 94
    const-string v0, "AlreadySet"

    .line 95
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v5, "no"

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0    # "attr":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "execute() - Valid Same Parameter : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "AlreadySet"

    .line 99
    .restart local v0    # "attr":Ljava/lang/String;
    const-string/jumbo v5, "yes"

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "currentQuality":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "execute() - Invalid Parameter : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "Valid"

    .line 104
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v5, "no"

    .restart local v5    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 113
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "parameter":Ljava/lang/String;
    .end local v4    # "quality":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetDownloadAudioQualityExecutor$Quality;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1
.end method
