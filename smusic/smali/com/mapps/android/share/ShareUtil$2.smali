.class Lcom/mapps/android/share/ShareUtil$2;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/mapps/android/listner/AdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->getAdvertisingId(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$2;)Lcom/mapps/android/share/ShareUtil;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object v0
.end method


# virtual methods
.method public onReceivedAdvertisingId(Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;)V
    .locals 2
    .param p1, "adInfo"    # Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    invoke-virtual {p1}, Lcom/mapps/android/util/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$2;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v0, v0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$2$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/share/ShareUtil$2$1;-><init>(Lcom/mapps/android/share/ShareUtil$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    :cond_0
    return-void
.end method
