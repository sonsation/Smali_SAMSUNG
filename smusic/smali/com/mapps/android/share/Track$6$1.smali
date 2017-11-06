.class Lcom/mapps/android/share/Track$6$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/Track$6;->onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/Track$6;

.field private final synthetic val$adInfo:Lcom/mapps/android/share/Track$TrackAdInfo;

.field private final synthetic val$apparrListHandler:Landroid/os/Handler;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$media_type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/share/Track$6;Landroid/content/Context;Lcom/mezzo/common/network/data/DataNTInitInfo;Landroid/content/Context;Lcom/mapps/android/share/Track$TrackAdInfo;ILjava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    iput-object p2, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    iput-object p4, p0, Lcom/mapps/android/share/Track$6$1;->val$ctx:Landroid/content/Context;

    iput-object p5, p0, Lcom/mapps/android/share/Track$6$1;->val$adInfo:Lcom/mapps/android/share/Track$TrackAdInfo;

    iput p6, p0, Lcom/mapps/android/share/Track$6$1;->val$media_type:I

    iput-object p7, p0, Lcom/mapps/android/share/Track$6$1;->val$codeType:Ljava/lang/String;

    iput-object p8, p0, Lcom/mapps/android/share/Track$6$1;->val$handler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/mapps/android/share/Track$6$1;->val$apparrListHandler:Landroid/os/Handler;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "version"

    iget-object v3, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-wide/16 v12, 0x0

    .line 247
    .local v12, "currentTimeSumPeriod":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 248
    .local v10, "currentTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config : data.getConf_period() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getConf_period()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getConf_period()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getConf_period()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getConf_period()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const-wide/32 v0, 0x927c0

    add-long v12, v10, v0

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string v2, "conf_period"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getAb_interval()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/share/Track$6$1;->val$adInfo:Lcom/mapps/android/share/Track$TrackAdInfo;

    iget-object v3, v3, Lcom/mapps/android/share/Track$TrackAdInfo;->pub_no:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/share/Track$6$1;->val$adInfo:Lcom/mapps/android/share/Track$TrackAdInfo;

    iget-object v4, v4, Lcom/mapps/android/share/Track$TrackAdInfo;->media_no:Ljava/lang/String;

    iget-object v5, p0, Lcom/mapps/android/share/Track$6$1;->val$adInfo:Lcom/mapps/android/share/Track$TrackAdInfo;

    iget-object v5, v5, Lcom/mapps/android/share/Track$TrackAdInfo;->section_no:Ljava/lang/String;

    iget v6, p0, Lcom/mapps/android/share/Track$6$1;->val$media_type:I

    iget-object v7, p0, Lcom/mapps/android/share/Track$6$1;->val$codeType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/mapps/android/share/Track;->setInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "pkg_target_period"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getPkg_target_use()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "pkg_flag"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 261
    const-string/jumbo v0, "pkg_target_not"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    :goto_1
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getConf_period()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 253
    .local v8, "conf_period":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config : conf_period : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    add-long v12, v0, v8

    goto/16 :goto_0

    .line 265
    .end local v8    # "conf_period":J
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "pkg_target_period"

    iget-object v3, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getPkg_target_period()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "pkg_target_info_ver"

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 267
    .local v14, "pckTargetInfoVer":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getPkg_target_info_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "pkg_flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 269
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "pkg_target_use"

    iget-object v3, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getPkg_target_use()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->this$1:Lcom/mapps/android/share/Track$6;

    invoke-static {v0}, Lcom/mapps/android/share/Track$6;->access$0(Lcom/mapps/android/share/Track$6;)Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/Track$6$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "pkg_target_info_ver"

    iget-object v3, p0, Lcom/mapps/android/share/Track$6$1;->val$data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTInitInfo;->getPkg_target_info_ver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/mapps/android/share/Track$6$1;->val$apparrListHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
