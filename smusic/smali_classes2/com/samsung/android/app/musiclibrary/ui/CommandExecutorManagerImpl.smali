.class public final Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
.super Ljava/lang/Object;
.source "CommandExecutorManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;


# static fields
.field private static final EXECUTOR_TIMEOUT_LIMIT:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

.field private final mCommandExecutorType:I

.field private mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

.field private mEnabled:Z

.field private mScreenState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommandExecutorManagerImpl() - commandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .line 39
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    .line 40
    return-void
.end method


# virtual methods
.method public varargs addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V
    .locals 4
    .param p1, "screenState"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "executors"    # [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCommandExecutor() - screenState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCommandExecutorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", executors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mScreenState:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    if-nez v1, :cond_0

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    invoke-virtual {v1, v2, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->addCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 60
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "addedExecutors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 54
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    goto :goto_0
.end method

.method cancelCommand()V
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCommand() - mScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mScreenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 88
    return-void
.end method

.method destroy()V
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy() - mScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mScreenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->removeCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutors:[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 124
    return-void
.end method

.method disable()V
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable() - mScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mScreenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCommandExecutorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mEnabled:Z

    .line 116
    :cond_0
    return-void
.end method

.method enable()V
    .locals 4

    .prologue
    .line 91
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable() - mScreenState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mScreenState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCommandExecutorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mCommandExecutorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mEnabled:Z

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mEnabled:Z

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mScreenState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->setCurrentScreenState(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getNextCommand()Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v0

    .line 102
    .local v0, "nextCommand":Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->executeCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->clearNextCommand()V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mEnabled:Z

    return v0
.end method

.method public onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V
    .locals 1
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    .line 65
    return-void
.end method

.method public requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V
    .locals 1
    .param p1, "requestNlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelNlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V

    .line 77
    return-void
.end method

.method public setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextCommand() - command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->mBixbyCompat:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V

    .line 71
    return-void
.end method
