.class public Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;
.super Ljava/lang/Object;
.source "SetPlaySettingExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
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
    .line 24
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->TAG:Ljava/lang/String;

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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 65
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 11
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 69
    const-string v8, "SET_PLAY_SETTING"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 70
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v8, "PLAY_SETTING"

    invoke-virtual {p1, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "parameter":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->TAG:Ljava/lang/String;

    const-string v9, "execute() - Empty Parameter"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "PlaySetting"

    .line 78
    .local v2, "name":Ljava/lang/String;
    const-string v0, "Exist"

    .line 79
    .local v0, "attr":Ljava/lang/String;
    const-string v6, "no"

    .line 108
    .local v6, "value":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v8, "Settings"

    invoke-direct {v3, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    invoke-virtual {v3, v2, v0, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 113
    .end local v0    # "attr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_1
    return v7

    .line 81
    .restart local v4    # "parameter":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->getPosition(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;

    move-result-object v5

    .line 83
    .local v5, "setting":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
    if-eqz v5, :cond_2

    .line 84
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getPlayOption()I

    move-result v1

    .line 86
    .local v1, "current":I
    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->getPrefValue()I

    move-result v8

    if-eq v1, v8, :cond_1

    .line 87
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - Valid Parameter : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;->getPrefValue()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setPlayOption(I)V

    .line 89
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updatePlayOption()V

    .line 91
    const-string v2, "PlaySetting"

    .line 92
    .restart local v2    # "name":Ljava/lang/String;
    const-string v0, "AlreadySet"

    .line 93
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v6, "no"

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v0    # "attr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - Valid Parameter(already set) : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "PlaySetting"

    .line 97
    .restart local v2    # "name":Ljava/lang/String;
    const-string v0, "AlreadySet"

    .line 98
    .restart local v0    # "attr":Ljava/lang/String;
    const-string/jumbo v6, "yes"

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "current":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor;->TAG:Ljava/lang/String;

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

    .line 102
    const-string v2, "PlaySetting"

    .line 103
    .restart local v2    # "name":Ljava/lang/String;
    const-string v0, "Valid"

    .line 104
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v6, "no"

    .restart local v6    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 113
    .end local v0    # "attr":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v5    # "setting":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetPlaySettingExecutor$PlaySetting;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method
