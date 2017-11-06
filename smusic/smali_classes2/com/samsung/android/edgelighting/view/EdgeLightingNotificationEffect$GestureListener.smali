.class Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EdgeLightingNotificationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;


# direct methods
.method private constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;
    .param p2, "x1"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;-><init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 440
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 442
    .local v1, "y":F
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Double tap Toast clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v2}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    .line 444
    const/4 v2, 0x1

    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 449
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 455
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSingleTapConfirmed : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPm:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    iget-object v0, v0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$GestureListener;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    .line 459
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
