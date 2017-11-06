.class Lcom/mapps/android/share/Track$11;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track;->requestServerPkgList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/Track;

.field private final synthetic val$TrackCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$media_no:Ljava/lang/String;

.field private final synthetic val$pub_no:Ljava/lang/String;

.field private final synthetic val$requestHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    iput-object p2, p0, Lcom/mapps/android/share/Track$11;->val$TrackCompleteHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/share/Track$11;->val$requestHandler:Landroid/os/Handler;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 415
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    sget-object v11, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    const-string/jumbo v12, "pkg_target_period"

    invoke-virtual {v10, v11, v12}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "period":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 417
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->val$TrackCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v10, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    :goto_0
    return-void

    .line 421
    :cond_0
    sget-boolean v10, Lcom/mapps/android/share/Track;->isStart:Z

    if-nez v10, :cond_1

    .line 422
    const/4 v10, 0x1

    sput-boolean v10, Lcom/mapps/android/share/Track;->isStart:Z

    .line 424
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    sget-object v11, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    iget-object v12, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    iget-object v13, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->checkTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 425
    .local v8, "time":J
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 426
    .local v4, "periodlong":J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "=pkg_target_period : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "min =savetime : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "min"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 427
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-eqz v10, :cond_2

    .line 428
    cmp-long v10, v8, v4

    if-ltz v10, :cond_3

    .line 432
    const-string v10, "PkgList \uc694\uccad \uc2dc\ub3c4"

    invoke-static {v10}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 443
    .end local v4    # "periodlong":J
    .end local v8    # "time":J
    :cond_2
    :goto_1
    const-string/jumbo v10, "\uc694\uccad"

    invoke-static {v10}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 444
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd a hh:mm:ss"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 445
    .local v6, "sf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 446
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, "strDate":Ljava/lang/String;
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    sget-object v11, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "pkgtime"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v7}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    sget-object v11, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "package_start"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "package_start"

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    sget-object v11, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    const-string/jumbo v12, "package_info"

    const-string v13, ""

    invoke-virtual {v10, v11, v12, v13}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->this$0:Lcom/mapps/android/share/Track;

    sget-object v11, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    const-string/jumbo v12, "pkg_flag"

    invoke-virtual {v10, v11, v12, v14}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 451
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 453
    .local v3, "sendMsg":Landroid/os/Message;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v11

    sget-object v12, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/mapps/android/network/UrlManager;->urlPkgList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/mapps/android/network/ParamManager;

    sget-object v12, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/mapps/android/share/Track$11;->val$pub_no:Ljava/lang/String;

    iget-object v13, p0, Lcom/mapps/android/share/Track$11;->val$media_no:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/mapps/android/network/ParamManager;->getParamPkgList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->val$requestHandler:Landroid/os/Handler;

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 434
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "sendMsg":Landroid/os/Message;
    .end local v6    # "sf":Ljava/text/SimpleDateFormat;
    .end local v7    # "strDate":Ljava/lang/String;
    .restart local v4    # "periodlong":J
    .restart local v8    # "time":J
    :cond_3
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PkgList \uc548\ubcf4\ub0c4("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v12, v4, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 435
    const/4 v10, 0x0

    sput-boolean v10, Lcom/mapps/android/share/Track;->isStart:Z

    .line 436
    iget-object v10, p0, Lcom/mapps/android/share/Track$11;->val$TrackCompleteHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 440
    .end local v4    # "periodlong":J
    .end local v8    # "time":J
    :catch_1
    move-exception v1

    .line 441
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
