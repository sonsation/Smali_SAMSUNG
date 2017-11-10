.class Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$2;
.super Ljava/lang/Object;
.source "WatermarkThumbnailListMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->startAnimationForChangingCategory(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$300(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;->access$400(Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;)Lcom/samsung/android/glview/GLGridList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
