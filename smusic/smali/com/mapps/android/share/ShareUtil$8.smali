.class Lcom/mapps/android/share/ShareUtil$8;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->requestConf(Landroid/content/Context;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$requestConfHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$8;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$8;->val$requestConfHandler:Landroid/os/Handler;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 292
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v2, "conf_period"

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$8;->this$0:Lcom/mapps/android/share/ShareUtil;

    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$8;->val$ctx:Landroid/content/Context;

    const-string v3, "conf_period"

    invoke-virtual {v1, v2, v3}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mapps/android/share/ShareUtil;->currentTimeSumPeriod:J

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config : currentTime : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-wide v2, v1, Lcom/mapps/android/share/ShareUtil;->currentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "config : currentTimeSumPeriod : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$8;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-wide v2, v1, Lcom/mapps/android/share/ShareUtil;->currentTimeSumPeriod:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$8;->val$requestConfHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    return-void
.end method
