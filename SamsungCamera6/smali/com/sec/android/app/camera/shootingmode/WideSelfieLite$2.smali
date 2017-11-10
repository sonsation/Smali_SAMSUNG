.class Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;
.super Ljava/lang/Object;
.source "WideSelfieLite.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$300(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$502(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$600(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$400(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopWideSelfie()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite$2;->this$0:Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;->access$700(Lcom/sec/android/app/camera/shootingmode/WideSelfieLite;)V

    :cond_1
    return v1
.end method
