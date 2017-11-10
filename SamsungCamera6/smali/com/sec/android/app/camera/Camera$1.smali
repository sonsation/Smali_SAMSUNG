.class final Lcom/sec/android/app/camera/Camera$1;
.super Landroid/util/SparseIntArray;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const v2, 0x7f09000f

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/Camera$1;->append(II)V

    const/16 v0, 0xa

    const v1, 0x7f09000b

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera$1;->append(II)V

    const/4 v0, 0x5

    const v1, 0x7f09000c

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera$1;->append(II)V

    const/4 v0, 0x4

    const v1, 0x7f09000d

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera$1;->append(II)V

    const/4 v0, 0x3

    const v1, 0x7f09000e

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera$1;->append(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/Camera$1;->append(II)V

    return-void
.end method
