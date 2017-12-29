.class Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
.super Ljava/lang/Object;
.source "GenericCoverServiceController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/GenericCoverServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenericPressEventListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/GenericCoverServiceController;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/GenericCoverServiceController;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    .line 252
    iput-object p3, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    .line 253
    iput p4, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    .line 254
    iput p5, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    .line 255
    iput p6, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    .line 250
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 260
    invoke-static {}, Lcom/android/server/cover/GenericCoverServiceController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-static {v0}, Lcom/android/server/cover/GenericCoverServiceController;->-get1(Lcom/android/server/cover/GenericCoverServiceController;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->this$0:Lcom/android/server/cover/GenericCoverServiceController;

    invoke-static {v0}, Lcom/android/server/cover/GenericCoverServiceController;->-get1(Lcom/android/server/cover/GenericCoverServiceController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 264
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 259
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSystemCoverEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 269
    invoke-static {}, Lcom/android/server/cover/GenericCoverServiceController;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null listener received onSystemCoverEvent!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 274
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    .line 273
    invoke-static {v2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;

    move-result-object v0

    .line 275
    .local v0, "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0    # "callback":Lcom/samsung/android/cover/INfcLedCoverTouchListenerCallback;
    :cond_1
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/cover/GenericCoverServiceController;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed onSystemCoverEvent callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
