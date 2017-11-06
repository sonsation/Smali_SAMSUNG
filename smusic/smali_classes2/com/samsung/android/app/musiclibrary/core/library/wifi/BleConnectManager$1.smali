.class Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BleConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBleConnectionReceiver() - action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v4, "com.sec.android.m2tv.TV_DETECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isDmrPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mBleConnectionReceiver() - DMR is playing."

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v4, v7}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;Z)Z

    .line 199
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .line 200
    .local v1, "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;->onTvDetected(Z)V

    goto :goto_1

    .line 202
    .end local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    :cond_2
    const-string v4, "com.sec.android.m2tv.TV_DETACHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v4, v8}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;Z)Z

    .line 204
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .line 205
    .restart local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;->onTvDetached()V

    goto :goto_2

    .line 207
    .end local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    :cond_3
    const-string v4, "com.sec.android.m2tv.TV_LIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 208
    const-string/jumbo v4, "tv_list"

    .line 209
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 210
    .local v3, "tvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/library/beaconmanager/Tv;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 211
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mBleConnectionReceiver() - Can\'t get Tv list"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 215
    .local v2, "size":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBleConnectionReceiver() - available TV: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-le v2, v7, :cond_6

    .line 217
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .line 218
    .restart local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    invoke-interface {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;->onTvListDialogShow(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 220
    .end local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    :cond_6
    if-ne v2, v7, :cond_0

    .line 221
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/library/beaconmanager/Tv;

    invoke-virtual {v4}, Lcom/samsung/android/library/beaconmanager/Tv;->getModelName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->requestConnection(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    .end local v2    # "size":I
    .end local v3    # "tvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/library/beaconmanager/Tv;>;"
    :cond_7
    const-string v4, "com.sec.android.m2tv.TV_SHOW_TV_ON_DLG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 224
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .line 225
    .restart local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;->onTvTurnOnDialogShow()V

    goto :goto_4

    .line 227
    .end local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    :cond_8
    const-string v4, "com.sec.android.m2tv.TV_CANCEL_TV_ON_DLG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;

    .line 229
    .restart local v1    # "listener":Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/BleConnectManager$OnTvStateChangeListener;->onTvTurnOnDialogDismiss()V

    goto :goto_5
.end method
