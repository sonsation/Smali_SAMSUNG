.class Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1$1;
.super Ljava/lang/Object;
.source "ModeInfoListMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->onSelect(Lcom/samsung/android/glview/GLView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1$1;->this$2:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1$1;->this$2:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, -0x201

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

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
