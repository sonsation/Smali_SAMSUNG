.class Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$1;
.super Ljava/lang/Object;
.source "WatermarkHandler.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->getPreviousId(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkId(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$1;->this$0:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->findCatetoryById(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkCategory(I)V

    const/4 v1, 0x0

    return v1
.end method
