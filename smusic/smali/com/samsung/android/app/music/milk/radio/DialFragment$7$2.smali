.class Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

.field final synthetic val$forcePlay:Z

.field final synthetic val$stationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$7;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;->val$stationId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;->val$forcePlay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;->val$stationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;->this$1:Lcom/samsung/android/app/music/milk/radio/DialFragment$7;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/radio/DialFragment$7;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;->val$stationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->jumpToRadioStationFromPlayer(Ljava/lang/String;)Z

    move-result v0

    .line 554
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$7$2;->val$forcePlay:Z

    if-eqz v1, :cond_0

    .line 555
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    .line 558
    .end local v0    # "ret":Z
    :cond_0
    return-void
.end method
