.class Lcom/android/server/connectivity/NetworkMonitor$2;
.super Landroid/app/IProcessObserver$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const v7, 0x82010

    const/4 v6, 0x0

    .line 1146
    if-eqz p3, :cond_1

    .line 1147
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap5(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 1149
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, p2}, Lcom/android/server/connectivity/NetworkMonitor;->-set6(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 1150
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set8(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 1151
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {p2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->-set5(Lcom/android/server/connectivity/NetworkMonitor;J)J

    .line 1152
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "pkgs":[Ljava/lang/String;
    aget-object v0, v1, v6

    .line 1155
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1156
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get8(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v3, v2}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 1159
    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onForegroundActivitiesChanged: pid-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1160
    const-string/jumbo v4, ", mIsCaptivePortalLoginActivityCreated:"

    .line 1159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1161
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->-get20(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    .line 1159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get32(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1163
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onForegroundActivitiesChanged: calling state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "pkgs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1164
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "pkgs":[Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap0(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1165
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onForegroundActivitiesChanged: mobile data not connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1167
    :cond_3
    const/16 v2, 0x3e8

    if-ne v2, p2, :cond_4

    .line 1168
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onForegroundActivitiesChanged: skip system uid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return-void

    .line 1170
    :cond_4
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get19(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1171
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onForegroundActivitiesChanged: DO NOT check after captiveportallogin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set11(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 1173
    return-void

    .line 1174
    :cond_5
    const-string/jumbo v2, "com.android.captiveportallogin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1175
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->-set11(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 1178
    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get20(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, v0}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap1(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1191
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set3(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 1192
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v7, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 1205
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 1199
    return-void
.end method
