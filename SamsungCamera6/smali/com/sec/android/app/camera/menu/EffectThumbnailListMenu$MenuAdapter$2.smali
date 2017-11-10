.class Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;
.super Ljava/lang/Object;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/EffectItem$DeleteClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteClick(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-static {v1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->access$1602(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter$2;->this$1:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    add-int/lit16 v2, v0, 0x1f40

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->uninstallExternalEffectPackage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
