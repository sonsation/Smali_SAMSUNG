.class public Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;
.super Ljava/lang/Object;
.source "SetCacheSizeExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
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
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->TAG:Ljava/lang/String;

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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 66
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

    .line 70
    const-string v8, "SET_CACHE_SIZE"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 71
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->TAG:Ljava/lang/String;

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

    .line 73
    const-string v8, "CACHE_SIZE"

    invoke-virtual {p1, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "parameter":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->TAG:Ljava/lang/String;

    const-string v9, "execute() - Empty Parameter"

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "Exist"

    .line 79
    .local v0, "attr":Ljava/lang/String;
    const-string v6, "no"

    .line 105
    .local v6, "value":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v8, "Settings"

    invoke-direct {v1, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v8, "TemporaryStorageLimit"

    invoke-virtual {v1, v8, v0, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v9, v7, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 110
    .end local v0    # "attr":Ljava/lang/String;
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_1
    return v7

    .line 81
    .restart local v4    # "parameter":Ljava/lang/String;
    :cond_0
    invoke-static {v4}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->getSize(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    move-result-object v5

    .line 83
    .local v5, "position":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    if-eqz v5, :cond_2

    .line 84
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->getMaxStreamingCacheSize()J

    move-result-wide v2

    .line 86
    .local v2, "currentValue":J
    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->getPrefValue()J

    move-result-wide v8

    cmp-long v8, v2, v8

    if-eqz v8, :cond_1

    .line 87
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->TAG:Ljava/lang/String;

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

    .line 88
    invoke-virtual {v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->getPrefValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMaxStreamingCacheSize(J)V

    .line 89
    iget-object v8, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->updateCacheSizeOption()V

    .line 91
    const-string v0, "AlreadySet"

    .line 92
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v6, "no"

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v0    # "attr":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->TAG:Ljava/lang/String;

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

    .line 95
    const-string v0, "AlreadySet"

    .line 96
    .restart local v0    # "attr":Ljava/lang/String;
    const-string/jumbo v6, "yes"

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v0    # "attr":Ljava/lang/String;
    .end local v2    # "currentValue":J
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;->TAG:Ljava/lang/String;

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

    .line 100
    const-string v0, "Valid"

    .line 101
    .restart local v0    # "attr":Ljava/lang/String;
    const-string v6, "no"

    .restart local v6    # "value":Ljava/lang/String;
    goto/16 :goto_0

    .line 110
    .end local v0    # "attr":Ljava/lang/String;
    .end local v4    # "parameter":Ljava/lang/String;
    .end local v5    # "position":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method
