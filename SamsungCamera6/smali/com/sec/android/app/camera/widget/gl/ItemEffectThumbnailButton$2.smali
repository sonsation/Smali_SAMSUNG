.class Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;
.super Ljava/lang/Object;
.source "ItemEffectThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v6}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$200(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v6}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$300(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v6}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$400(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/command/CommandIdMap;->getModeIDByCommandID(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v6}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$500(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLView$ClickListener;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-interface {v6, v7}, Lcom/samsung/android/glview/GLView$ClickListener;->onClick(Lcom/samsung/android/glview/GLView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v6}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$600(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/sec/android/app/camera/feature/Feature;->KEYPAD:Z

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v7}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$400(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v6}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$600(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLSelectButton;->requestFocus()Z

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v6}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$600(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    const/16 v4, 0x232a

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;

    invoke-static {v4}, Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;->access$600(Lcom/sec/android/app/camera/widget/gl/ItemEffectThumbnailButton;)Lcom/samsung/android/glview/GLSelectButton;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLSelectButton;->setSelected(Z)V

    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1
.end method
