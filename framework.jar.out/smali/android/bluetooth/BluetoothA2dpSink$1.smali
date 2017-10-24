.class Landroid/bluetooth/BluetoothA2dpSink$1;
.super Landroid/bluetooth/IBluetoothSinkServiceChangeCallback$Stub;
.source "BluetoothA2dpSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothA2dpSink;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothA2dpSink;

    .prologue
    .line 173
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSinkServiceChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceStateChange(Z)V
    .locals 6
    .param p1, "up"    # Z

    .prologue
    .line 175
    invoke-static {}, Landroid/bluetooth/BluetoothA2dpSink;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothA2dpSink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBluetoothServiceStateChange: up="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    if-nez p1, :cond_2

    .line 178
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->-get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/ServiceConnection;

    move-result-object v4

    monitor-enter v4

    .line 180
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothA2dpSink;->-set0(Landroid/bluetooth/BluetoothA2dpSink;Landroid/bluetooth/IBluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    .line 181
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->-get4(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v5}, Landroid/bluetooth/BluetoothA2dpSink;->-get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->-get1(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 186
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_1

    .line 188
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->-get2(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterSinkServiceChangeCallback(Landroid/bluetooth/IBluetoothSinkServiceChangeCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :cond_1
    :goto_1
    monitor-exit v4

    .line 174
    return-void

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "re":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v3, "BluetoothA2dpSink"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 178
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 189
    .restart local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "BluetoothA2dpSink"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/bluetooth/IBluetoothManager;
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->-get3(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/content/ServiceConnection;

    move-result-object v4

    monitor-enter v4

    .line 197
    :try_start_5
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-static {v3}, Landroid/bluetooth/BluetoothA2dpSink;->-get5(Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/IBluetoothA2dpSink;

    move-result-object v3

    if-nez v3, :cond_1

    .line 198
    invoke-static {}, Landroid/bluetooth/BluetoothA2dpSink;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BluetoothA2dpSink"

    const-string/jumbo v5, "Binding service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothA2dpSink$1;->this$0:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dpSink;->doBind()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 201
    :catch_2
    move-exception v2

    .line 202
    .restart local v2    # "re":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "BluetoothA2dpSink"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 195
    .end local v2    # "re":Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method
