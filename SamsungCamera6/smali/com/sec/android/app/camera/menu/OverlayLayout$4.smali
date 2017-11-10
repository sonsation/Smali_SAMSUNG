.class Lcom/sec/android/app/camera/menu/OverlayLayout$4;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$200(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/samsung/android/glview/GLButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$300(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-result-object v0

    const/16 v1, 0x232f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$4;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->hideTouchEVSlider()V

    const/4 v0, 0x0

    return v0
.end method
