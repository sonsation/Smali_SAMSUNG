.class Lcom/mapps/android/share/ShareUtil$3$1;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil$3;->onReceivedAdvertisingId(Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/ShareUtil$3;

.field private final synthetic val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

.field private final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil$3;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$3$1;->this$1:Lcom/mapps/android/share/ShareUtil$3;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$3$1;->val$mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$3$1;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$3$1;)Lcom/mapps/android/share/ShareUtil$3;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3$1;->this$1:Lcom/mapps/android/share/ShareUtil$3;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3$1;->this$1:Lcom/mapps/android/share/ShareUtil$3;

    invoke-static {v0}, Lcom/mapps/android/share/ShareUtil$3;->access$0(Lcom/mapps/android/share/ShareUtil$3;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$3$1;->this$1:Lcom/mapps/android/share/ShareUtil$3;

    invoke-static {v2}, Lcom/mapps/android/share/ShareUtil$3;->access$0(Lcom/mapps/android/share/ShareUtil$3;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/util/AdPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3$1;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$3$1$1;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$3$1;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/share/ShareUtil$3$1$1;-><init>(Lcom/mapps/android/share/ShareUtil$3$1;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method
