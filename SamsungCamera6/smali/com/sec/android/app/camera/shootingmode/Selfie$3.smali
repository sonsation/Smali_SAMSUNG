.class Lcom/sec/android/app/camera/shootingmode/Selfie$3;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/Selfie;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$500(Lcom/sec/android/app/camera/shootingmode/Selfie;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$600(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$700(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$802(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$900(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x82

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$500(Lcom/sec/android/app/camera/shootingmode/Selfie;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie$3;->this$0:Lcom/sec/android/app/camera/shootingmode/Selfie;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->access$600(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    goto :goto_0
.end method
