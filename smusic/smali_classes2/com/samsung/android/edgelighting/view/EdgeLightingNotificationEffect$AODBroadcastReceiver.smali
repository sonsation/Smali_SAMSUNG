.class Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingNotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AODBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;


# direct methods
.method private constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;
    .param p2, "x1"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 486
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const-string v4, "info"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 489
    .local v1, "actionInfo":I
    if-ne v1, v7, :cond_1

    .line 490
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BR_TSP_EVENT :onReceive : There is no [action] value"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string v4, "location"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v3

    .line 496
    .local v3, "location":[F
    if-eqz v3, :cond_2

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 497
    :cond_2
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BR_TSP_EVENT :onReceive : There is no [x,y position] value"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-virtual {v4}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->getScreenSizeRateFromPhysical()F

    move-result v2

    .line 501
    .local v2, "densityRate":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    .line 502
    aget v4, v3, v8

    div-float/2addr v4, v2

    aput v4, v3, v8

    .line 503
    aget v4, v3, v9

    div-float/2addr v4, v2

    aput v4, v3, v9

    .line 507
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v4}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$300(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)Lcom/samsung/android/edgelighting/view/MorphView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/edgelighting/view/MorphView;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v4

    aget v5, v3, v8

    float-to-int v5, v5

    aget v6, v3, v9

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    iget-object v4, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$AODBroadcastReceiver;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v4}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    goto :goto_0
.end method
