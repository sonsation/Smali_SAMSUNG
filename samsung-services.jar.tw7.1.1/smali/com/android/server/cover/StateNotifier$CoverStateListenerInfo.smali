.class Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/StateNotifier;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 123
    iput-object p3, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 124
    iput p4, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 125
    iput p5, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 126
    iput p6, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    .line 121
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->-get3(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->-get3(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 135
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->-get1(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->-get1(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 138
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 130
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 135
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onCoverAppStateChanged(Z)V
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 197
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCoverAppStateChanged : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 200
    :cond_0
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 202
    invoke-static {v2}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;

    move-result-object v0

    .line 204
    .local v0, "callback":Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;
    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;->onCoverAppCovered(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed onCoverAppCovered callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onCoverAttachStateChanged(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 178
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 179
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCoverAttachStateChanged : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 182
    :cond_0
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 184
    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 186
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_1

    .line 187
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed onCoverAttachStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 143
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCoverSwitchStateChanged : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_0
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 149
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 148
    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object v0

    .line 150
    .local v0, "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    :cond_1
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed onCoverStateChanged coverCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onCoverSwitchStateChanged(Z)V
    .locals 4
    .param p1, "switchState"    # Z

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 161
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCoverSwitchStateChanged : token is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void

    .line 164
    :cond_0
    iget v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 166
    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 168
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_1

    .line 169
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cover/StateNotifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
