.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
.super Ljava/lang/Object;
.source "CommandExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;
    }
.end annotation


# virtual methods
.method public varargs abstract addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
