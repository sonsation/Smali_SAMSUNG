.class Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;
.super Ljava/lang/Object;
.source "ModeInfoListMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/ModeInfoItem$SelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/samsung/android/glview/GLView;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->access$602(Lcom/sec/android/app/camera/menu/ModeInfoListMenu;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const v2, 0x7f0c0009

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->hideMenu()V

    const v2, 0x7f0c0003

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1$1;-><init>(Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter$1;->this$1:Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu$MenuAdapter;->this$0:Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startBaseMenuAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
