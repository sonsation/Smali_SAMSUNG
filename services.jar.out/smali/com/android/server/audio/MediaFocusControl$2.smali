.class Lcom/android/server/audio/MediaFocusControl$2;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 921
    if-ne p1, v1, :cond_2

    .line 923
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get7()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 924
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set1(Lcom/android/server/audio/MediaFocusControl;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 920
    :cond_1
    return-void

    .line 923
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 926
    :cond_2
    if-eq p1, v4, :cond_3

    .line 927
    if-nez p1, :cond_1

    .line 928
    :cond_3
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->-get7()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 929
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set1(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 931
    if-ne p1, v4, :cond_4

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    .line 932
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 933
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const-string/jumbo v1, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get3(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 936
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set3(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 938
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get8(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 939
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 940
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    const-string/jumbo v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 942
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get3(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 943
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->-set3(Lcom/android/server/audio/MediaFocusControl;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 928
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 951
    if-eqz p1, :cond_1

    .line 952
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 953
    .local v0, "updateState":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->-get6(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 954
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "### RIL State is changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->-get6(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string/jumbo v1, "MediaFocusControl"

    const-string/jumbo v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 958
    const-string/jumbo v1, "ril_state_connected=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->-set2(Lcom/android/server/audio/MediaFocusControl;I)I

    .line 950
    .end local v0    # "updateState":I
    :cond_1
    return-void
.end method
