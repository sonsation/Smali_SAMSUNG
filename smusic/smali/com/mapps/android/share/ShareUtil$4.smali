.class Lcom/mapps/android/share/ShareUtil$4;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

.field private final synthetic val$mainHandler:Landroid/os/Handler;

.field private final synthetic val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;Lcom/mapps/android/share/GetAdvertisingIdTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$4;->val$mainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$4;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$4;->val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$4;)Lcom/mapps/android/share/ShareUtil;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    new-instance v1, Lcom/mapps/android/util/AdPreferences;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mapps/android/util/AdPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    .line 153
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/mapps/android/util/AdPreferences;->exist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$4;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Lcom/mapps/android/util/AdPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$4$1;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/share/ShareUtil$4$1;-><init>(Lcom/mapps/android/share/ShareUtil$4;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$4;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$4$2;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$4;->val$task:Lcom/mapps/android/share/GetAdvertisingIdTask;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/share/ShareUtil$4$2;-><init>(Lcom/mapps/android/share/ShareUtil$4;Lcom/mapps/android/share/GetAdvertisingIdTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
