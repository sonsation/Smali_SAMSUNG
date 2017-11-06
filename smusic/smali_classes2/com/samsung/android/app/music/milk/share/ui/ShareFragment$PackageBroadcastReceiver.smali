.class Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$1;

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 492
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 493
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->mPackageToSnsInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment$PackageBroadcastReceiver;->this$0:Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;->access$402(Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;Z)Z

    .line 499
    :cond_0
    return-void
.end method
