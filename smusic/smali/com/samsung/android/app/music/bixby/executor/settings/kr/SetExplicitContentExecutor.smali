.class public Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;
.super Ljava/lang/Object;
.source "SetExplicitContentExecutor.java"

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
    .line 27
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->TAG:Ljava/lang/String;

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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 39
    return-void
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 9
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    .line 43
    const-string v6, "SET_EXPLICIT_CONTENT"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 44
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execute() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v6, "EnableExplicitContentOn"

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 48
    .local v2, "on":Z
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v6, "Settings"

    invoke-direct {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz v2, :cond_1

    .line 50
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 51
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v4

    .line 52
    .local v4, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .line 53
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v0

    .line 55
    .local v0, "explicitType":I
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execute() - explicit type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sparse-switch v0, :sswitch_data_0

    .line 69
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "explicit-invalid"

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v6, "WarningPopup"

    const-string v7, "Exist"

    const-string/jumbo v8, "yes"

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v0    # "explicitType":I
    .end local v4    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v7, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 87
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "on":Z
    :goto_1
    return v5

    .line 60
    .restart local v0    # "explicitType":I
    .restart local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .restart local v2    # "on":Z
    .restart local v4    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setExplicitContent(Z)Z

    move-result v3

    .line 61
    .local v3, "success":Z
    if-eqz v3, :cond_0

    .line 62
    const-string v6, "WarningPopup"

    const-string v7, "Exist"

    const-string v8, "no"

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    const-string v6, "EnableExplicitContent"

    const-string v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v0    # "explicitType":I
    .end local v3    # "success":Z
    .end local v4    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_1
    sget-object v6, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "execute() - on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetExplicitContentExecutor;->mSettingsFragment:Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;->setExplicitContent(Z)Z

    move-result v3

    .line 76
    .restart local v3    # "success":Z
    if-eqz v3, :cond_2

    .line 77
    const-string v6, "EnableExplicitContent"

    const-string v7, "AlreadyOff"

    const-string v8, "no"

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    const-string v6, "EnableExplicitContent"

    const-string v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .end local v2    # "on":Z
    .end local v3    # "success":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
