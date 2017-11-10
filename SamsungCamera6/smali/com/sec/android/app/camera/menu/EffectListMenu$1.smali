.class Lcom/sec/android/app/camera/menu/EffectListMenu$1;
.super Ljava/lang/Object;
.source "EffectListMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v2, v2, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/EffectListMenu;

    iget-object v3, v3, Lcom/sec/android/app/camera/menu/EffectListMenu;->mCameraGestureListener:Lcom/sec/android/app/camera/util/CameraGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectListMenu;->mFlingGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method
