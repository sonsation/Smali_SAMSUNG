.class public Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;
.super Ljava/lang/Object;
.source "SetStreamingAudioQualityExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
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
    .line 27
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->TAG:Ljava/lang/String;

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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 69
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 12
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 73
    const-string v9, "SET_AUDIO_QUALITY_STREAMING"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 74
    sget-object v9, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "execute() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v9, "STREAMING_AUDIO_QUALITY"

    invoke-virtual {p1, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "parameter":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->TAG:Ljava/lang/String;

    const-string v9, "execute() - Empty Parameter"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "Exist"

    .line 82
    .local v0, "attr":Ljava/lang/String;
    const-string v6, "no"

    .line 116
    .local v6, "value":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v8, "Settings"

    invoke-direct {v3, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v8, "StreamingAudioQuality"

    invoke-virtual {v3, v8, v0, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 121
    .end local v0    # "attr":Ljava/lang/String;
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_1
    return v7

    .line 84
    .restart local v4    # "parameter":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->getQuality(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;

    move-result-object v5

    .line 86
    .local v5, "quality":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    if-eqz v5, :cond_4

    .line 87
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 88
    .local v2, "key":Ljava/lang/String;
    const-string v9, "StreamingAudioQualityMobileNetwork"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 89
    const-string v2, "milk_streaming_quality_mobile"

    .line 94
    :cond_1
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v9

    .line 95
    invoke-virtual {v9, v2, v8}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, "currentQuality":I
    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->getPrefValue()I

    move-result v8

    if-eq v1, v8, :cond_3

    .line 98
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - Valid Different Parameter : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;->getPrefValue()I

    move-result v9

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    .line 100
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateStreamingAudioQuality()V

    .line 102
    const-string v0, "AlreadySet"

    .line 103
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v6, "no"

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "currentQuality":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    const-string v9, "StreamingAudioQualityWifiNetwork"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    const-string v2, "milk_streaming_quality_wifi"

    goto :goto_2

    .line 105
    .restart local v1    # "currentQuality":I
    :cond_3
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - Valid Same Parameter : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "AlreadySet"

    .line 107
    .restart local v0    # "attr":Ljava/lang/String;
    const-string/jumbo v6, "yes"

    .restart local v6    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 110
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "currentQuality":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - Invalid Parameter : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "Valid"

    .line 112
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v6, "no"

    .restart local v6    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .end local v0    # "attr":Ljava/lang/String;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v5    # "quality":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetStreamingAudioQualityExecutor$Quality;
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    move v7, v8

    .line 121
    goto/16 :goto_1
.end method
