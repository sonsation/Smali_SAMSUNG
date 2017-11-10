.class Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;
.super Ljava/lang/Object;
.source "MenuManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/MenuManagerImpl;->createMenu(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

.field final synthetic val$initialShootingMode:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;->this$0:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    iput p2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;->val$initialShootingMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;->this$0:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->access$000(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;->this$0:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    iget v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;->val$initialShootingMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->setShootingMode(I)V

    goto :goto_0
.end method
