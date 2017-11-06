.class Lcom/mapps/android/share/ShareUtil$7$2;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil$7;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/ShareUtil$7;

.field private final synthetic val$SendTagetRequestHandler:Landroid/os/Handler;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$onReqeustConfCompleteHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil$7;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->this$1:Lcom/mapps/android/share/ShareUtil$7;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$SendTagetRequestHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$onReqeustConfCompleteHandler:Landroid/os/Handler;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 250
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->this$1:Lcom/mapps/android/share/ShareUtil$7;

    invoke-static {v1}, Lcom/mapps/android/share/ShareUtil$7;->access$0(Lcom/mapps/android/share/ShareUtil$7;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iput-boolean v9, v1, Lcom/mapps/android/share/ShareUtil;->isTrack:Z

    .line 251
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$ctx:Landroid/content/Context;

    const-string/jumbo v7, "pkg_target_period"

    invoke-virtual {v1, v6, v7}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    const-string v1, ""

    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$ctx:Landroid/content/Context;

    const-string/jumbo v8, "pkg_target_period"

    invoke-virtual {v6, v7, v8}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->this$1:Lcom/mapps/android/share/ShareUtil$7;

    invoke-static {v1}, Lcom/mapps/android/share/ShareUtil$7;->access$0(Lcom/mapps/android/share/ShareUtil$7;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$ctx:Landroid/content/Context;

    const-string/jumbo v8, "pkg_flag"

    invoke-virtual {v6, v7, v8}, Lcom/mapps/android/share/Track;->getAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/mapps/android/share/ShareUtil;->isTrack:Z

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->this$1:Lcom/mapps/android/share/ShareUtil$7;

    invoke-static {v1}, Lcom/mapps/android/share/ShareUtil$7;->access$0(Lcom/mapps/android/share/ShareUtil$7;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mapps/android/share/ShareUtil;->isTrack:Z

    if-eqz v1, :cond_3

    .line 257
    const-string/jumbo v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8\uc0ac\uc6a9"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 260
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$ctx:Landroid/content/Context;

    const-string/jumbo v7, "pkg_target_period"

    invoke-virtual {v1, v6, v7}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    const-string v1, ""

    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$ctx:Landroid/content/Context;

    const-string/jumbo v8, "pkg_target_period"

    invoke-virtual {v6, v7, v8}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 263
    .local v2, "currentMille":J
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$ctx:Landroid/content/Context;

    const-string/jumbo v7, "pkg_target_period"

    invoke-virtual {v1, v6, v7}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 264
    .local v4, "saveMille":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "currentMille : "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "saveMille : "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 266
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 267
    const-string/jumbo v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$SendTagetRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "currentMille":J
    .end local v4    # "saveMille":J
    :goto_0
    return-void

    .line 270
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v2    # "currentMille":J
    .restart local v4    # "saveMille":J
    :cond_1
    const-string/jumbo v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad\ud560 \uc2dc\uac04\uc774 \uc544\ub2d8"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$onReqeustConfCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 274
    .end local v2    # "currentMille":J
    .end local v4    # "saveMille":J
    :cond_2
    const-string/jumbo v1, "\uc544\ubb34\uac12\ub3c4 \uc5c6\uc5b4 \ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$SendTagetRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 278
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_3
    const-string/jumbo v1, "\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \ubbf8\uc0ac\uc6a9"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7$2;->val$onReqeustConfCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
