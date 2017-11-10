.class Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;
.super Ljava/lang/Object;
.source "ItemEmptyThumbnailButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$FocusListener;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->access$400(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton$3;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;->access$500(Lcom/sec/android/app/camera/widget/gl/ItemEmptyThumbnailButton;)Lcom/samsung/android/glview/GLView$FocusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/glview/GLView$FocusListener;->onFocusChanged(Lcom/samsung/android/glview/GLView;I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
