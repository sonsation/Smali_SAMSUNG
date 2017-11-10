.class Lcom/sec/android/app/camera/shootingmode/Auto$2;
.super Ljava/lang/Object;
.source "Auto.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Auto;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Auto;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Auto;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Auto$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Auto$2;->this$0:Lcom/sec/android/app/camera/shootingmode/Auto;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Auto;->access$500(Lcom/sec/android/app/camera/shootingmode/Auto;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startWechatSightMode()V

    const/4 v0, 0x0

    return v0
.end method
