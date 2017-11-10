.class Lcom/sec/android/app/camera/menu/QuickView$3;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/QuickView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/QuickView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/QuickView$3;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "QuickView"

    const-string v1, "mLaunchChooserRunnable"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/QuickView$3;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/QuickView;->access$200(Lcom/sec/android/app/camera/menu/QuickView;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/QuickView$3;->this$0:Lcom/sec/android/app/camera/menu/QuickView;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/QuickView;->access$300(Lcom/sec/android/app/camera/menu/QuickView;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startShareActivity(Landroid/net/Uri;)V

    return-void
.end method
