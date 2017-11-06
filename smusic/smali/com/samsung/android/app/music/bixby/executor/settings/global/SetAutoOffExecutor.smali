.class public final Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;
.super Ljava/lang/Object;
.source "SetAutoOffExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor$ValidScope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WITHOUT_NUMBER_REGULAR_EXPRESSION:Ljava/lang/String; = "[^\\d]"


# instance fields
.field private final mAutoOffControllable:Lcom/samsung/android/app/music/common/settings/AutoOffControllable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/settings/AutoOffControllable;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "autoOffControllable"    # Lcom/samsung/android/app/music/common/settings/AutoOffControllable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mAutoOffControllable:Lcom/samsung/android/app/music/common/settings/AutoOffControllable;

    .line 37
    return-void
.end method

.method private getInvalidNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "Settings"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "Time"

    const-string v2, "Valid"

    const-string v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-object v0
.end method

.method private getValidNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "Settings"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "Time"

    const-string v2, "Valid"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 17
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const-string v13, "SET_AUTO_OFF"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 42
    sget-object v13, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "execute() - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v13, "SleepTimerOff"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getState()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 45
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mAutoOffControllable:Lcom/samsung/android/app/music/common/settings/AutoOffControllable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/samsung/android/app/music/common/settings/AutoOffControllable;->setAutoOff(II)V

    .line 46
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v13, "Settings"

    invoke-direct {v7, v13}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 47
    .local v7, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v13, "SleepTimer"

    const-string v14, "Valid"

    const-string/jumbo v15, "yes"

    invoke-virtual {v7, v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 50
    const/4 v13, 0x1

    .line 112
    .end local v7    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :goto_0
    return v13

    .line 53
    :cond_0
    const-string v13, "AUTO_OFF_TIME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "parameter":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 57
    sget-object v13, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->TAG:Ljava/lang/String;

    const-string v14, "execute() - Empty parameter."

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v13, "Settings"

    invoke-direct {v7, v13}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v7    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v13, "Time"

    const-string v14, "Exist"

    const-string v15, "no"

    invoke-virtual {v7, v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v15, 0x1

    invoke-direct {v14, v15, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 62
    const/4 v13, 0x1

    goto :goto_0

    .line 66
    .end local v7    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    :try_start_0
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "parameters":[Ljava/lang/String;
    array-length v9, v10

    .line 68
    .local v9, "parameterCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_2

    .line 69
    aget-object v13, v10, v4

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v4

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    :cond_2
    const/4 v13, 0x0

    aget-object v13, v10, v13

    const-string v14, "[^\\d]"

    const-string v15, ""

    .line 73
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 72
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 74
    .local v12, "year":I
    const/4 v13, 0x1

    aget-object v13, v10, v13

    const-string v14, "[^\\d]"

    const-string v15, ""

    .line 75
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 74
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 76
    .local v6, "month":I
    const/4 v13, 0x2

    aget-object v13, v10, v13

    const-string v14, "[^\\d]"

    const-string v15, ""

    .line 77
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 76
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "day":I
    const/4 v13, 0x5

    aget-object v13, v10, v13

    const-string v14, "[^\\d]"

    const-string v15, ""

    .line 79
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 80
    .local v11, "second":I
    if-nez v12, :cond_3

    if-nez v6, :cond_3

    if-nez v1, :cond_3

    if-eqz v11, :cond_4

    .line 81
    :cond_3
    sget-object v13, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->TAG:Ljava/lang/String;

    const-string v14, "execute() - Wrong value is bigger than zero."

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v15, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->getInvalidNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 83
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 86
    :cond_4
    const/4 v13, 0x3

    aget-object v13, v10, v13

    const-string v14, "[^\\d]"

    const-string v15, ""

    .line 87
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 86
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 88
    .local v3, "hour":I
    const/4 v13, 0x4

    aget-object v13, v10, v13

    const-string v14, "[^\\d]"

    const-string v15, ""

    .line 89
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 88
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 90
    .local v5, "minute":I
    if-nez v3, :cond_5

    if-nez v5, :cond_5

    .line 91
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mAutoOffControllable:Lcom/samsung/android/app/music/common/settings/AutoOffControllable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/samsung/android/app/music/common/settings/AutoOffControllable;->setAutoOff(II)V

    .line 92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v15, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->getValidNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 93
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 96
    :cond_5
    if-ltz v3, :cond_6

    const/16 v13, 0x17

    if-gt v3, v13, :cond_6

    if-ltz v5, :cond_6

    const/16 v13, 0x3b

    if-gt v5, v13, :cond_6

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mAutoOffControllable:Lcom/samsung/android/app/music/common/settings/AutoOffControllable;

    invoke-interface {v13, v3, v5}, Lcom/samsung/android/app/music/common/settings/AutoOffControllable;->setAutoOff(II)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v15, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->getValidNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 102
    .end local v1    # "day":I
    .end local v3    # "hour":I
    .end local v4    # "i":I
    .end local v5    # "minute":I
    .end local v6    # "month":I
    .end local v9    # "parameterCount":I
    .end local v10    # "parameters":[Ljava/lang/String;
    .end local v11    # "second":I
    .end local v12    # "year":I
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "execute() - Occur error while set auto off. - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "day":I
    .restart local v3    # "hour":I
    .restart local v4    # "i":I
    .restart local v5    # "minute":I
    .restart local v6    # "month":I
    .restart local v9    # "parameterCount":I
    .restart local v10    # "parameters":[Ljava/lang/String;
    .restart local v11    # "second":I
    .restart local v12    # "year":I
    :cond_6
    sget-object v13, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->TAG:Ljava/lang/String;

    const-string v14, "execute() - Invalid parameter."

    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v14, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v15, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/bixby/executor/settings/global/SetAutoOffExecutor;->getInvalidNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v13, v14}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 110
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 112
    .end local v1    # "day":I
    .end local v3    # "hour":I
    .end local v4    # "i":I
    .end local v5    # "minute":I
    .end local v6    # "month":I
    .end local v8    # "parameter":Ljava/lang/String;
    .end local v9    # "parameterCount":I
    .end local v10    # "parameters":[Ljava/lang/String;
    .end local v11    # "second":I
    .end local v12    # "year":I
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
