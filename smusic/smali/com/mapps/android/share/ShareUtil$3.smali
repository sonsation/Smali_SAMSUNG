.class Lcom/mapps/android/share/ShareUtil$3;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/mapps/android/listner/AdvertisingIdListener;


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

.field private final synthetic val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

.field private final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$3;->val$mainHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$3;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$3;)Lcom/mapps/android/share/ShareUtil;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object v0
.end method


# virtual methods
.method public onReceivedAdvertisingId(Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;)V
    .locals 4
    .param p1, "adInfo"    # Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    invoke-virtual {p1}, Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$3;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$3$1;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$3;->val$mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$3;->val$listener:Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/mapps/android/share/ShareUtil$3$1;-><init>(Lcom/mapps/android/share/ShareUtil$3;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 145
    :cond_0
    return-void
.end method
