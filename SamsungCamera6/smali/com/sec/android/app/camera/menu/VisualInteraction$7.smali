.class Lcom/sec/android/app/camera/menu/VisualInteraction$7;
.super Ljava/lang/Object;
.source "VisualInteraction.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/VisualInteraction;->startCameraSwitchingAnimation([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/VisualInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$7;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Camera6VI"

    const-string v1, "mBlurImage Image onAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$7;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$7;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1200(Lcom/sec/android/app/camera/menu/VisualInteraction;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$7;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1300(Lcom/sec/android/app/camera/menu/VisualInteraction;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$7;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1400(Lcom/sec/android/app/camera/menu/VisualInteraction;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$7;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$1302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "Camera6VI"

    const-string v1, "mBlurImage Image onAnimationStart"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/VisualInteraction$7;->this$0:Lcom/sec/android/app/camera/menu/VisualInteraction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/VisualInteraction;->access$302(Lcom/sec/android/app/camera/menu/VisualInteraction;Z)Z

    return-void
.end method
