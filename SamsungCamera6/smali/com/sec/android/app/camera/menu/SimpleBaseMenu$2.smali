.class Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;
.super Ljava/lang/Object;
.source "SimpleBaseMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->makeRecordingMenuVIAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/SimpleBaseMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "SimpleBaseMenu"

    const-string v1, "onAnimationEnd - mBottomVIButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomParentView:Lcom/samsung/android/glview/GLView;

    iput-object v1, v0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu$2;->this$0:Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;->mBottomVIButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 2

    const-string v0, "SimpleBaseMenu"

    const-string v1, "onAnimationStart - mBottomVIButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
