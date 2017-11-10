.class Lcom/sec/android/app/camera/shootingmode/Recording$1;
.super Ljava/lang/Object;
.source "Recording.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/Recording;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/Recording;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/Recording;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Recording$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Recording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording$1;->this$0:Lcom/sec/android/app/camera/shootingmode/Recording;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->setViewModeIndicator(I)V

    :cond_0
    return-void
.end method
