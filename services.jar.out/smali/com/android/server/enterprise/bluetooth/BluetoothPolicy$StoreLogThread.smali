.class Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;
.super Ljava/lang/Thread;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1048
    const/4 v5, 0x0

    .line 1051
    :cond_0
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-get2(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1052
    .local v5, "log":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1053
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1054
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1055
    .local v6, "time":J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1056
    .local v3, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "time"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string/jumbo v8, "log"

    invoke-virtual {v3, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string/jumbo v8, "BluetoothPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "StoreLogThread - cv: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v8, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;->this$0:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    invoke-static {v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->-get1(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v8

    const-string/jumbo v9, "BluetoothLogTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1060
    const-string/jumbo v8, "BluetoothPolicyService"

    const-string/jumbo v9, "StoreLogThread - Failed on inserting log"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1063
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "log":Ljava/lang/String;
    .end local v6    # "time":J
    :catch_0
    move-exception v4

    .line 1064
    .local v4, "iex":Ljava/lang/InterruptedException;
    const-string/jumbo v8, "BluetoothPolicyService"

    const-string/jumbo v9, "StoreLogThread - InterruptedException on take"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
