.class Lcom/android/systemui/qs/tiles/WifiCallingTile$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiCallingTile;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get2(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get2(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get2(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 130
    const-string/jumbo v3, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 129
    if-eqz v3, :cond_3

    .line 131
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo v3, "action_wifi_qs_refresh_att"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get1(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    .line 137
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto :goto_0

    .line 139
    :cond_4
    const-string/jumbo v3, "action_wifi_qs_setdim_att"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 140
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set0(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    .line 141
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto :goto_0

    .line 145
    :cond_5
    const-string/jumbo v3, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const-string/jumbo v3, "apntype"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "apntype":Ljava/lang/String;
    const-string/jumbo v3, "ikeerror"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, "ikeerror":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get0(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive : IPSEC_CONNECTION_EVENT apntype "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ikeerror "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string/jumbo v3, "ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_7

    .line 150
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v7}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    .line 154
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->refreshState()V

    goto/16 :goto_0

    .line 151
    :cond_7
    const-string/jumbo v3, "ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x65

    if-ne v2, v3, :cond_6

    .line 152
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v3, v6}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-set3(Lcom/android/systemui/qs/tiles/WifiCallingTile;Z)Z

    goto :goto_1
.end method
