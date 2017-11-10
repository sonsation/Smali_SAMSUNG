.class Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;
.super Ljava/lang/Object;
.source "ItemEmptyThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->access$200(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->access$300(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$2;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
