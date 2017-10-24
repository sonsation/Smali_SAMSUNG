.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2169
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2170
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2169
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 88
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2175
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 2174
    :cond_0
    :goto_0
    return-void

    .line 2177
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v76

    .line 2178
    .local v76, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    .line 2179
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 2178
    move-object/from16 v0, v76

    invoke-static {v0, v6, v13}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    goto :goto_0

    .line 2182
    .end local v76    # "resolver":Landroid/content/ContentResolver;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v13

    .line 2182
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2187
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_1

    .line 2188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2189
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v13, 0xc

    invoke-virtual {v6, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 2190
    .local v64, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v64

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2191
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x7530

    move-object/from16 v0, v64

    move-wide/from16 v1, v16

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2192
    return-void

    .line 2194
    .end local v64    # "nmsg":Landroid/os/Message;
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13, v6}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    .line 2197
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2198
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .local v53, "i":I
    :goto_1
    if-ltz v53, :cond_3

    .line 2199
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 2200
    .local v73, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_2

    .line 2202
    :try_start_2
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2198
    :cond_2
    :goto_2
    add-int/lit8 v53, v53, -0x1

    goto :goto_1

    .line 2203
    :catch_0
    move-exception v51

    .line 2204
    .local v51, "ex":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to update time zone for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2197
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v73    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .restart local v53    # "i":I
    :cond_3
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2211
    .end local v53    # "i":I
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2212
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_3
    if-ltz v53, :cond_5

    .line 2213
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 2214
    .restart local v73    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v6, :cond_4

    .line 2216
    :try_start_5
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2212
    :cond_4
    :goto_4
    add-int/lit8 v53, v53, -0x1

    goto :goto_3

    .line 2217
    :catch_1
    move-exception v51

    .line 2218
    .restart local v51    # "ex":Landroid/os/RemoteException;
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to clear dns cache for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 2211
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v73    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .restart local v53    # "i":I
    :cond_5
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2225
    .end local v53    # "i":I
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/net/ProxyInfo;

    .line 2230
    .local v71, "proxy":Landroid/net/ProxyInfo;
    if-eqz v71, :cond_6

    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getKnoxVpnProfile()I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_6

    .line 2231
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "skipping the proxy broadcast for applications added to knox vpn profile"

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2235
    :cond_6
    const/16 v66, 0x0

    .line 2237
    .local v66, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v40

    .line 2238
    .local v40, "bundle":Landroid/os/Bundle;
    if-eqz v40, :cond_7

    .line 2239
    const-string/jumbo v6, "packageName"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 2242
    .end local v66    # "packageName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, ""

    .line 2243
    .local v7, "host":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 2245
    .local v8, "port":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 2246
    .local v9, "username":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 2248
    .local v10, "password":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 2249
    .local v11, "exclList":Ljava/lang/String;
    sget-object v12, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2250
    .local v12, "pacFileUrl":Landroid/net/Uri;
    if-eqz v71, :cond_8

    .line 2251
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 2252
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 2254
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->semGetUsername()Ljava/lang/String;

    move-result-object v9

    .line 2255
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->semGetPassword()Ljava/lang/String;

    move-result-object v10

    .line 2257
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v11

    .line 2258
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v12

    .line 2260
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2261
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_5
    if-ltz v53, :cond_10

    .line 2262
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 2263
    .restart local v73    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_a

    .line 2265
    invoke-static/range {v66 .. v66}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v6

    if-eqz v6, :cond_b

    .line 2273
    :cond_9
    :goto_6
    if-eqz v71, :cond_d

    :try_start_8
    invoke-virtual/range {v71 .. v71}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v6

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v6, v0, :cond_d

    .line 2275
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_c

    sget-object v6, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2277
    const-string/jumbo v6, "connectivity"

    .line 2276
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v43

    check-cast v43, Lcom/android/server/ConnectivityService;

    .line 2278
    .local v43, "connectivityService":Lcom/android/server/ConnectivityService;
    if-eqz v43, :cond_c

    .line 2279
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/16 v16, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2261
    .end local v43    # "connectivityService":Lcom/android/server/ConnectivityService;
    :cond_a
    :goto_7
    add-int/lit8 v53, v53, -0x1

    goto :goto_5

    .line 2267
    :cond_b
    :try_start_9
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_9

    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_6

    .line 2284
    :cond_c
    :try_start_a
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v71

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    .line 2294
    :catch_2
    move-exception v51

    .line 2295
    .restart local v51    # "ex":Landroid/os/RemoteException;
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to update http proxy for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2296
    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2295
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    .line 2260
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v73    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2287
    .restart local v53    # "i":I
    .restart local v73    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_d
    if-eqz v9, :cond_e

    :try_start_c
    const-string/jumbo v6, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2290
    :cond_e
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6, v7, v8, v11, v12}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_7

    .line 2288
    :cond_f
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v6 .. v12}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    .end local v73    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_10
    monitor-exit v13

    .line 2260
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2303
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "port":Ljava/lang/String;
    .end local v9    # "username":Ljava/lang/String;
    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "exclList":Ljava/lang/String;
    .end local v12    # "pacFileUrl":Landroid/net/Uri;
    .end local v40    # "bundle":Landroid/os/Bundle;
    .end local v53    # "i":I
    .end local v71    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v6, :cond_11

    .line 2304
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2305
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v13, 0x14

    invoke-virtual {v6, v13}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 2306
    .restart local v64    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v64

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2307
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x2710

    move-object/from16 v0, v64

    move-wide/from16 v1, v16

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2308
    return-void

    .line 2310
    .end local v64    # "nmsg":Landroid/os/Message;
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/am/ProcessRecord;

    .line 2311
    .local v39, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2312
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    monitor-exit v13

    .line 2311
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2316
    .end local v39    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/am/ProcessRecord;

    .line 2317
    .restart local v39    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2318
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v39

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap10(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    monitor-exit v13

    .line 2317
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2322
    .end local v39    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2323
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    monitor-exit v13

    .line 2322
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2327
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    monitor-enter v24

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2328
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 2329
    .local v15, "appId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    .line 2330
    .local v21, "userId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/os/Bundle;

    .line 2331
    .restart local v40    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "pkg"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2332
    .local v14, "pkg":Ljava/lang/String;
    const-string/jumbo v6, "reason"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2333
    .local v22, "reason":Ljava/lang/String;
    const-string/jumbo v6, "installPackageLI"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get8(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1

    .line 2335
    const/16 v20, 0x0

    const/16 v21, -0x1

    .line 2334
    invoke-virtual/range {v13 .. v22}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .end local v21    # "userId":I
    :goto_8
    monitor-exit v24

    .line 2327
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2337
    .restart local v21    # "userId":I
    :cond_12
    :try_start_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    .line 2338
    const/16 v20, 0x0

    .line 2337
    invoke-virtual/range {v13 .. v22}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_8

    .line 2327
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v15    # "appId":I
    .end local v21    # "userId":I
    .end local v22    # "reason":Ljava/lang/String;
    .end local v40    # "bundle":Landroid/os/Bundle;
    :catchall_7
    move-exception v6

    monitor-exit v24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2343
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v6}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 2346
    :sswitch_b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v55

    .line 2347
    .local v55, "inm":Landroid/app/INotificationManager;
    if-nez v55, :cond_13

    .line 2348
    return-void

    .line 2351
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v77, v0

    check-cast v77, Lcom/android/server/am/ActivityRecord;

    .line 2352
    .local v77, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v69, v0

    .line 2353
    .local v69, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v69, :cond_14

    .line 2354
    return-void

    .line 2358
    :cond_14
    :try_start_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v69

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v13, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v44

    .line 2359
    .local v44, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 2360
    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    invoke-virtual/range {v44 .. v44}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v13, v17

    .line 2359
    const v16, 0x10403c4

    move/from16 v0, v16

    invoke-virtual {v6, v0, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v81

    .line 2361
    .local v81, "text":Ljava/lang/String;
    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, v44

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2362
    const v13, 0x108087b

    .line 2361
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2363
    const-wide/16 v16, 0x0

    .line 2361
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2364
    const/4 v13, 0x1

    .line 2361
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2367
    const v16, 0x106005a

    .line 2366
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getColor(I)I

    move-result v13

    .line 2361
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v16, 0x10403c5

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2361
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 2372
    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v25, v0

    .line 2373
    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, v77

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 2371
    const/16 v24, 0x0

    .line 2372
    const/high16 v26, 0x10000000

    const/16 v27, 0x0

    .line 2371
    invoke-static/range {v23 .. v28}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 2361
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_4

    move-result-object v28

    .line 2376
    .local v28, "notification":Landroid/app/Notification;
    const/4 v6, 0x1

    :try_start_13
    new-array v0, v6, [I

    move-object/from16 v29, v0

    .line 2377
    .local v29, "outId":[I
    const-string/jumbo v24, "android"

    const-string/jumbo v25, "android"

    .line 2379
    move-object/from16 v0, v77

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v30, v0

    .line 2377
    const/16 v26, 0x0

    .line 2378
    const v27, 0x10403c4

    move-object/from16 v23, v55

    .line 2377
    invoke-interface/range {v23 .. v30}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_0

    .line 2380
    .end local v29    # "outId":[I
    :catch_3
    move-exception v50

    .line 2381
    .local v50, "e":Ljava/lang/RuntimeException;
    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    .line 2382
    const-string/jumbo v13, "Error showing notification for heavy-weight app"

    .line 2381
    move-object/from16 v0, v50

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_4

    goto/16 :goto_0

    .line 2385
    .end local v28    # "notification":Landroid/app/Notification;
    .end local v44    # "context":Landroid/content/Context;
    .end local v50    # "e":Ljava/lang/RuntimeException;
    .end local v81    # "text":Ljava/lang/String;
    :catch_4
    move-exception v47

    .line 2386
    .local v47, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Unable to create context for heavy notification"

    move-object/from16 v0, v47

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2390
    .end local v47    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v55    # "inm":Landroid/app/INotificationManager;
    .end local v69    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v77    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v23

    .line 2391
    .local v23, "inm":Landroid/app/INotificationManager;
    if-nez v23, :cond_15

    .line 2392
    return-void

    .line 2395
    :cond_15
    :try_start_15
    const-string/jumbo v6, "android"

    .line 2396
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 2395
    const/16 v16, 0x0

    .line 2396
    const v17, 0x10403c4

    .line 2395
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v6, v1, v2, v13}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_14

    goto/16 :goto_0

    .line 2397
    :catch_5
    move-exception v50

    .line 2398
    .restart local v50    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    .line 2399
    const-string/jumbo v13, "Error canceling notification for service"

    .line 2398
    move-object/from16 v0, v50

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2404
    .end local v23    # "inm":Landroid/app/INotificationManager;
    .end local v50    # "e":Ljava/lang/RuntimeException;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2405
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2406
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2407
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 2408
    .restart local v64    # "nmsg":Landroid/os/Message;
    const-wide/32 v16, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    monitor-exit v13

    .line 2404
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v64    # "nmsg":Landroid/os/Message;
    :catchall_8
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2412
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Ljava/util/ArrayList;

    .line 2413
    .local v57, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v82, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v82

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2418
    .local v82, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v82 .. v82}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2422
    .end local v57    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v82    # "thread":Ljava/lang/Thread;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v6, v0, v1}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2428
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2429
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2430
    const v16, 0x10409b4

    .line 2429
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2431
    const/16 v16, 0x0

    .line 2427
    move/from16 v0, v16

    invoke-static {v6, v13, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2436
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v6, v0, v1}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2440
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v6, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2444
    :sswitch_13
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_16

    const/16 v63, 0x1

    .line 2445
    .local v63, "nextState":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v6}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v6

    move/from16 v0, v63

    if-eq v6, v0, :cond_0

    .line 2449
    if-eqz v63, :cond_17

    .line 2450
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v6}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .line 2444
    .end local v63    # "nextState":Z
    :cond_16
    const/16 v63, 0x0

    .restart local v63    # "nextState":Z
    goto :goto_9

    .line 2452
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v6}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .line 2458
    .end local v63    # "nextState":Z
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-wrap16(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 2462
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_17
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2463
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-wide/from16 v0, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    monitor-exit v13

    .line 2462
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_9
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2468
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2469
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v6}, Lcom/android/server/am/UserController;->startProfilesLocked()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    monitor-exit v13

    .line 2468
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_a
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2474
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2475
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_a
    if-ltz v53, :cond_1a

    .line 2476
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/server/am/ProcessRecord;

    .line 2477
    .restart local v73    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v6, :cond_18

    .line 2479
    :try_start_1a
    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_19

    const/4 v6, 0x0

    :goto_b
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 2475
    :cond_18
    :goto_c
    add-int/lit8 v53, v53, -0x1

    goto :goto_a

    .line 2479
    :cond_19
    const/4 v6, 0x1

    goto :goto_b

    .line 2480
    :catch_6
    move-exception v51

    .line 2481
    .restart local v51    # "ex":Landroid/os/RemoteException;
    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed to update preferences for: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v73

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    goto :goto_c

    .line 2474
    .end local v51    # "ex":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .end local v73    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .restart local v53    # "i":I
    :cond_1a
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2490
    .end local v53    # "i":I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v13, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2497
    :sswitch_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v70, v0

    .line 2498
    .local v70, "processId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v80, v0

    .line 2499
    .local v80, "stopReason":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move/from16 v0, v70

    move/from16 v1, v80

    invoke-static {v13, v6, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 2506
    .end local v70    # "processId":I
    .end local v80    # "stopReason":I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2507
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 2506
    const v17, 0x8007

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v6, v0, v13, v1}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2508
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    .line 2512
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 2513
    .restart local v21    # "userId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 2516
    const/16 v79, 0x0

    .line 2518
    .local v79, "skipLoadRecents":Z
    :try_start_1d
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2519
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v45

    .line 2520
    .local v45, "currentState":Lcom/samsung/android/knox/SemPersonaState;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v67

    .line 2521
    .local v67, "previousState":Lcom/samsung/android/knox/SemPersonaState;
    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    move-result v6

    if-eqz v6, :cond_1b

    .line 2522
    const/16 v79, 0x1

    .line 2530
    .end local v45    # "currentState":Lcom/samsung/android/knox/SemPersonaState;
    .end local v67    # "previousState":Lcom/samsung/android/knox/SemPersonaState;
    :cond_1b
    :goto_d
    if-nez v79, :cond_1c

    .line 2531
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/server/am/RecentTasks;->loadUserRecentsLocked(I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :cond_1c
    monitor-exit v13

    .line 2514
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2534
    if-nez v21, :cond_1d

    .line 2535
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/high16 v13, 0x40000

    invoke-static {v6, v13}, Lcom/android/server/am/ActivityManagerService;->-wrap12(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2537
    :cond_1d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap8(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2538
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/am/UserState;

    invoke-virtual {v13, v6}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    goto/16 :goto_0

    .line 2525
    :catch_7
    move-exception v49

    .line 2526
    .local v49, "e":Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    goto :goto_d

    .line 2514
    .end local v49    # "e":Ljava/lang/Exception;
    .end local v79    # "skipLoadRecents":Z
    :catchall_c
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2542
    .end local v21    # "userId":I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2544
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 2543
    const/16 v17, 0x4008

    .line 2542
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v6, v0, v13, v1}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2545
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2547
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 2546
    const v17, 0x8008

    .line 2545
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v6, v0, v13, v1}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2548
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    .line 2552
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2553
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v72

    .line 2554
    .local v72, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v72, :cond_1e

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1e

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    if-eqz v6, :cond_1e

    .line 2556
    :try_start_21
    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_13
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    :cond_1e
    :goto_e
    monitor-exit v13

    .line 2552
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v72    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_d
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2564
    :sswitch_1e
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_1f

    .line 2565
    const-string/jumbo v6, "FinishBooting"

    const-wide/16 v16, 0x40

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2567
    const-wide/16 v16, 0x40

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 2569
    :cond_1f
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_0

    .line 2570
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    .line 2576
    :sswitch_1f
    :try_start_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Ljava/util/Locale;

    .line 2577
    .local v56, "l":Ljava/util/Locale;
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v78

    .line 2578
    .local v78, "service":Landroid/os/IBinder;
    invoke-static/range {v78 .. v78}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v60

    .line 2579
    .local v60, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Storing locale "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v56 .. v56}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v16, " for decryption UI"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    const-string/jumbo v6, "SystemLocale"

    invoke-virtual/range {v56 .. v56}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v60

    invoke-interface {v0, v6, v13}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_8

    goto/16 :goto_0

    .line 2581
    .end local v56    # "l":Ljava/util/Locale;
    .end local v60    # "mountService":Landroid/os/storage/IMountService;
    .end local v78    # "service":Landroid/os/IBinder;
    :catch_8
    move-exception v48

    .line 2582
    .local v48, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Error storing locale for decryption UI"

    move-object/from16 v0, v48

    invoke-static {v6, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2587
    .end local v48    # "e":Landroid/os/RemoteException;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2588
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_f
    if-ltz v53, :cond_20

    .line 2591
    :try_start_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_12
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    .line 2588
    :goto_10
    add-int/lit8 v53, v53, -0x1

    goto :goto_f

    .line 2596
    :cond_20
    :try_start_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    monitor-exit v13

    .line 2587
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v53    # "i":I
    :catchall_e
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2601
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2602
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_11
    if-ltz v53, :cond_21

    .line 2605
    :try_start_27
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onActivityPinned()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_11
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 2602
    :goto_12
    add-int/lit8 v53, v53, -0x1

    goto :goto_11

    .line 2610
    :cond_21
    :try_start_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    monitor-exit v13

    .line 2601
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v53    # "i":I
    :catchall_f
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2615
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2616
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_13
    if-ltz v53, :cond_22

    .line 2619
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_10
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    .line 2616
    :goto_14
    add-int/lit8 v53, v53, -0x1

    goto :goto_13

    .line 2624
    :cond_22
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    monitor-exit v13

    .line 2615
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v53    # "i":I
    :catchall_10
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2629
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_2c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2630
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_15
    if-ltz v53, :cond_23

    .line 2633
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_f
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    .line 2630
    :goto_16
    add-int/lit8 v53, v53, -0x1

    goto :goto_15

    .line 2638
    :cond_23
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    monitor-exit v13

    .line 2629
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v53    # "i":I
    :catchall_11
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2643
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_2f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2644
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_12

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_17
    if-ltz v53, :cond_24

    .line 2647
    :try_start_30
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    .line 2648
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 2647
    move/from16 v0, v17

    invoke-interface {v6, v13, v0}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_e
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    .line 2644
    :goto_18
    add-int/lit8 v53, v53, -0x1

    goto :goto_17

    .line 2653
    :cond_24
    :try_start_31
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    monitor-exit v16

    .line 2643
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v53    # "i":I
    :catchall_12
    move-exception v6

    monitor-exit v16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2658
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_32
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2659
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    move-result v6

    add-int/lit8 v53, v6, -0x1

    .restart local v53    # "i":I
    :goto_19
    if-ltz v53, :cond_25

    .line 2662
    :try_start_33
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/ITaskStackListener;

    invoke-interface {v6}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_d
    .catchall {:try_start_33 .. :try_end_33} :catchall_13

    .line 2659
    :goto_1a
    add-int/lit8 v53, v53, -0x1

    goto :goto_19

    .line 2668
    :cond_25
    :try_start_34
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get13(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_13

    monitor-exit v13

    .line 2658
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v53    # "i":I
    :catchall_13
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2673
    :sswitch_26
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v84, v0

    .line 2674
    .local v84, "uid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, [B

    .line 2676
    .local v52, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v13

    .line 2677
    const/16 v53, 0x0

    .restart local v53    # "i":I
    :goto_1b
    :try_start_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v53

    if-ge v0, v6, :cond_27

    .line 2678
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/server/am/ProcessRecord;

    .line 2679
    .local v65, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v65

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, v84

    if-ne v6, v0, :cond_26

    move-object/from16 v0, v65

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_14

    if-eqz v6, :cond_26

    .line 2681
    :try_start_36
    move-object/from16 v0, v65

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v52

    invoke-interface {v6, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_c
    .catchall {:try_start_36 .. :try_end_36} :catchall_14

    .line 2677
    :cond_26
    :goto_1c
    add-int/lit8 v53, v53, 0x1

    goto :goto_1b

    .end local v65    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_27
    monitor-exit v13

    goto/16 :goto_0

    .line 2676
    :catchall_14
    move-exception v6

    monitor-exit v13

    throw v6

    .line 2694
    .end local v52    # "firstPacket":[B
    .end local v53    # "i":I
    .end local v84    # "uid":I
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2695
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v68, v0

    .line 2696
    .local v68, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v84, v0

    .line 2697
    .restart local v84    # "uid":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v68

    move/from16 v1, v84

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/util/Pair;

    .line 2698
    .local v85, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v85, :cond_28

    .line 2699
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v16, 0x0

    move-object/from16 v0, v68

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v85

    .end local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v85, Landroid/util/Pair;

    .line 2701
    .restart local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_28
    if-eqz v85, :cond_29

    .line 2702
    move-object/from16 v0, v85

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v58

    .line 2703
    .local v58, "memLimit":J
    move-object/from16 v0, v85

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_15

    :goto_1d
    monitor-exit v13

    .line 2694
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2709
    if-nez v68, :cond_2a

    .line 2710
    return-void

    .line 2705
    .end local v58    # "memLimit":J
    :cond_29
    const-wide/16 v58, 0x0

    .line 2706
    .restart local v58    # "memLimit":J
    const/16 v74, 0x0

    .local v74, "reportPackage":Ljava/lang/String;
    goto :goto_1d

    .line 2694
    .end local v58    # "memLimit":J
    .end local v68    # "procName":Ljava/lang/String;
    .end local v74    # "reportPackage":Ljava/lang/String;
    .end local v84    # "uid":I
    .end local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_15
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2716
    .restart local v58    # "memLimit":J
    .restart local v68    # "procName":Ljava/lang/String;
    .restart local v84    # "uid":I
    .restart local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_2a
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v23

    .line 2717
    .restart local v23    # "inm":Landroid/app/INotificationManager;
    if-nez v23, :cond_2b

    .line 2718
    return-void

    .line 2721
    :cond_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v68, v13, v16

    const v16, 0x10403cc

    move/from16 v0, v16

    invoke-virtual {v6, v0, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v81

    .line 2724
    .restart local v81    # "text":Ljava/lang/String;
    new-instance v46, Landroid/content/Intent;

    invoke-direct/range {v46 .. v46}, Landroid/content/Intent;-><init>()V

    .line 2725
    .local v46, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2726
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    .line 2727
    .local v32, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android"

    const-class v13, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2728
    const-string/jumbo v6, "process"

    move-object/from16 v0, v32

    move-object/from16 v1, v68

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2729
    const-string/jumbo v6, "size"

    move-object/from16 v0, v32

    move-wide/from16 v1, v58

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2730
    if-eqz v74, :cond_2c

    .line 2731
    const-string/jumbo v6, "direct_launch"

    move-object/from16 v0, v32

    move-object/from16 v1, v74

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2733
    :cond_2c
    invoke-static/range {v84 .. v84}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    .line 2734
    .restart local v21    # "userId":I
    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2735
    const v13, 0x108087b

    .line 2734
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2736
    const-wide/16 v16, 0x0

    .line 2734
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2737
    const/4 v13, 0x1

    .line 2734
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2738
    const/4 v13, 0x1

    .line 2734
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2741
    const v16, 0x106005a

    .line 2740
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getColor(I)I

    move-result v13

    .line 2734
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v81

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2744
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v16, 0x10403cd

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2734
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    .line 2747
    new-instance v35, Landroid/os/UserHandle;

    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2745
    const/16 v31, 0x0

    .line 2746
    const/high16 v33, 0x10000000

    const/16 v34, 0x0

    .line 2745
    invoke-static/range {v30 .. v35}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 2734
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 2748
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2749
    sget-object v16, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2748
    const/16 v17, 0x0

    .line 2749
    const/16 v18, 0x0

    .line 2748
    move/from16 v0, v17

    move-object/from16 v1, v46

    move/from16 v2, v18

    move-object/from16 v3, v16

    invoke-static {v13, v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 2734
    invoke-virtual {v6, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v28

    .line 2753
    .restart local v28    # "notification":Landroid/app/Notification;
    const/4 v6, 0x1

    :try_start_38
    new-array v0, v6, [I

    move-object/from16 v29, v0

    .line 2754
    .restart local v29    # "outId":[I
    const-string/jumbo v24, "android"

    const-string/jumbo v25, "android"

    const/16 v26, 0x0

    .line 2755
    const v27, 0x10403cc

    move/from16 v30, v21

    .line 2754
    invoke-interface/range {v23 .. v30}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_b

    goto/16 :goto_0

    .line 2757
    .end local v29    # "outId":[I
    :catch_9
    move-exception v50

    .line 2758
    .restart local v50    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    .line 2759
    const-string/jumbo v13, "Error showing notification for dump heap"

    .line 2758
    move-object/from16 v0, v50

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2764
    .end local v21    # "userId":I
    .end local v23    # "inm":Landroid/app/INotificationManager;
    .end local v28    # "notification":Landroid/app/Notification;
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v46    # "deleteIntent":Landroid/content/Intent;
    .end local v50    # "e":Ljava/lang/RuntimeException;
    .end local v58    # "memLimit":J
    .end local v68    # "procName":Ljava/lang/String;
    .end local v81    # "text":Ljava/lang/String;
    .end local v84    # "uid":I
    .end local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v13

    .line 2765
    sget-object v16, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 2768
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    .line 2766
    const/16 v18, 0x3

    .line 2764
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v6, v13, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 2769
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_39
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2770
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2771
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2772
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2773
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_16

    monitor-exit v13

    .line 2769
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_16
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2777
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    .line 2780
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v83, v0

    check-cast v83, Lcom/android/server/am/AppTimeTracker;

    .line 2781
    .local v83, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v83

    invoke-virtual {v0, v6}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2784
    .end local v83    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v13}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_0

    .line 2787
    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/app/IUiAutomationConnection;

    .line 2789
    .local v42, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_3a
    invoke-interface/range {v42 .. v42}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_a

    .line 2795
    :goto_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    invoke-static {v6, v13}, Lcom/android/server/am/ActivityManagerService;->-set8(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_0

    .line 2790
    :catch_a
    move-exception v48

    .line 2791
    .restart local v48    # "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "Error shutting down UiAutomationConnection"

    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 2798
    .end local v42    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v48    # "e":Landroid/os/RemoteException;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_3b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2799
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get6(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2800
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get3(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const-wide/16 v24, 0x9c4

    sub-long v18, v18, v24

    cmp-long v6, v16, v18

    if-gez v6, :cond_2e

    .line 2801
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-wrap2()I

    .line 2802
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-set4(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2803
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcom/android/server/am/ActivityManagerService;->-set1(Lcom/android/server/am/ActivityManagerService;J)J
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_17

    :cond_2d
    :goto_1f
    monitor-exit v13

    .line 2798
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .line 2805
    :cond_2e
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v62

    .line 2806
    .local v62, "newmsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v16, 0x9c4

    move-object/from16 v0, v62

    move-wide/from16 v1, v16

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_17

    goto :goto_1f

    .line 2798
    .end local v62    # "newmsg":Landroid/os/Message;
    :catchall_17
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2812
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    goto/16 :goto_0

    .line 2815
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_3d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2816
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_18

    monitor-exit v13

    .line 2815
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_18
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2820
    :sswitch_30
    const-class v6, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lcom/android/server/vr/VrManagerInternal;

    .line 2821
    .local v87, "vrService":Lcom/android/server/vr/VrManagerInternal;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/server/am/ActivityRecord;

    .line 2826
    .restart local v72    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_3e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2827
    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_30

    const/16 v86, 0x1

    .line 2828
    .local v86, "vrMode":Z
    :goto_20
    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v75, v0

    .line 2829
    .local v75, "requestedPackage":Landroid/content/ComponentName;
    move-object/from16 v0, v72

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    .line 2830
    .restart local v21    # "userId":I
    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v41

    .line 2831
    .local v41, "callingPackage":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v6

    move/from16 v0, v86

    if-eq v6, v0, :cond_2f

    .line 2832
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v86

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-set3(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2833
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ActivityManagerService;->-get5(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Landroid/content/res/Configuration;Z)Z

    move-result v16

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/server/am/ActivityManagerService;->-set7(Lcom/android/server/am/ActivityManagerService;Z)Z
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_19

    :cond_2f
    monitor-exit v13

    .line 2826
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2859
    move-object/from16 v0, v87

    move/from16 v1, v86

    move-object/from16 v2, v75

    move/from16 v3, v21

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;ILandroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 2827
    .end local v21    # "userId":I
    .end local v41    # "callingPackage":Landroid/content/ComponentName;
    .end local v75    # "requestedPackage":Landroid/content/ComponentName;
    .end local v86    # "vrMode":Z
    :cond_30
    const/16 v86, 0x0

    .restart local v86    # "vrMode":Z
    goto :goto_20

    .line 2826
    .end local v86    # "vrMode":Z
    :catchall_19
    move-exception v6

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 2862
    .end local v72    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v87    # "vrService":Lcom/android/server/vr/VrManagerInternal;
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Lcom/android/server/am/ActivityRecord;

    .line 2863
    .restart local v72    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v72, :cond_31

    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_31

    const/16 v61, 0x1

    .line 2864
    .local v61, "needsVrMode":Z
    :goto_21
    if-eqz v61, :cond_0

    .line 2865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v6, v13, :cond_32

    const/16 v34, 0x1

    :goto_22
    move-object/from16 v0, v72

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    move-object/from16 v35, v0

    move-object/from16 v0, v72

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v36, v0

    .line 2866
    move-object/from16 v0, v72

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v37

    const/16 v38, 0x0

    .line 2865
    invoke-static/range {v33 .. v38}, Lcom/android/server/am/ActivityManagerService;->-wrap3(Lcom/android/server/am/ActivityManagerService;ZLandroid/content/ComponentName;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_0

    .line 2863
    .end local v61    # "needsVrMode":Z
    :cond_31
    const/16 v61, 0x0

    goto :goto_21

    .line 2865
    .restart local v61    # "needsVrMode":Z
    :cond_32
    const/16 v34, 0x0

    goto :goto_22

    .line 2760
    .end local v61    # "needsVrMode":Z
    .end local v72    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "userId":I
    .restart local v23    # "inm":Landroid/app/INotificationManager;
    .restart local v28    # "notification":Landroid/app/Notification;
    .restart local v32    # "intent":Landroid/content/Intent;
    .restart local v46    # "deleteIntent":Landroid/content/Intent;
    .restart local v58    # "memLimit":J
    .restart local v68    # "procName":Ljava/lang/String;
    .restart local v81    # "text":Ljava/lang/String;
    .restart local v84    # "uid":I
    .restart local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_b
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 2682
    .end local v21    # "userId":I
    .end local v23    # "inm":Landroid/app/INotificationManager;
    .end local v28    # "notification":Landroid/app/Notification;
    .end local v32    # "intent":Landroid/content/Intent;
    .end local v46    # "deleteIntent":Landroid/content/Intent;
    .end local v48    # "e":Landroid/os/RemoteException;
    .end local v58    # "memLimit":J
    .end local v68    # "procName":Ljava/lang/String;
    .end local v81    # "text":Ljava/lang/String;
    .end local v85    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v52    # "firstPacket":[B
    .restart local v53    # "i":I
    .restart local v65    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_c
    move-exception v54

    .local v54, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_1c

    .line 2664
    .end local v52    # "firstPacket":[B
    .end local v54    # "ignored":Landroid/os/RemoteException;
    .end local v65    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v84    # "uid":I
    :catch_d
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1a

    .line 2649
    .end local v48    # "e":Landroid/os/RemoteException;
    :catch_e
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_18

    .line 2634
    .end local v48    # "e":Landroid/os/RemoteException;
    :catch_f
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_16

    .line 2620
    .end local v48    # "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_14

    .line 2606
    .end local v48    # "e":Landroid/os/RemoteException;
    :catch_11
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_12

    .line 2592
    .end local v48    # "e":Landroid/os/RemoteException;
    :catch_12
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_10

    .line 2557
    .end local v48    # "e":Landroid/os/RemoteException;
    .end local v53    # "i":I
    .restart local v72    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_13
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_e

    .line 2400
    .end local v48    # "e":Landroid/os/RemoteException;
    .end local v72    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "inm":Landroid/app/INotificationManager;
    :catch_14
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 2383
    .end local v23    # "inm":Landroid/app/INotificationManager;
    .end local v48    # "e":Landroid/os/RemoteException;
    .restart local v28    # "notification":Landroid/app/Notification;
    .restart local v44    # "context":Landroid/content/Context;
    .restart local v55    # "inm":Landroid/app/INotificationManager;
    .restart local v69    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v77    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v81    # "text":Ljava/lang/String;
    :catch_15
    move-exception v48

    .restart local v48    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 2175
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x14 -> :sswitch_6
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_c
        0x1b -> :sswitch_d
        0x1c -> :sswitch_4
        0x1d -> :sswitch_5
        0x21 -> :sswitch_e
        0x22 -> :sswitch_f
        0x23 -> :sswitch_11
        0x24 -> :sswitch_12
        0x25 -> :sswitch_13
        0x26 -> :sswitch_14
        0x27 -> :sswitch_15
        0x28 -> :sswitch_16
        0x29 -> :sswitch_17
        0x2a -> :sswitch_1a
        0x2b -> :sswitch_1c
        0x2c -> :sswitch_1d
        0x2d -> :sswitch_1e
        0x2f -> :sswitch_1f
        0x31 -> :sswitch_20
        0x32 -> :sswitch_26
        0x33 -> :sswitch_27
        0x34 -> :sswitch_28
        0x35 -> :sswitch_29
        0x37 -> :sswitch_2a
        0x38 -> :sswitch_2b
        0x39 -> :sswitch_2c
        0x3a -> :sswitch_2d
        0x3b -> :sswitch_7
        0x3c -> :sswitch_2e
        0x3d -> :sswitch_1b
        0x3e -> :sswitch_2f
        0x3f -> :sswitch_30
        0x40 -> :sswitch_21
        0x41 -> :sswitch_22
        0x42 -> :sswitch_23
        0x43 -> :sswitch_24
        0x44 -> :sswitch_25
        0x45 -> :sswitch_31
        0x190 -> :sswitch_18
        0x1f4 -> :sswitch_19
        0x259 -> :sswitch_10
    .end sparse-switch
.end method
